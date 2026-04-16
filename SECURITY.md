# Security Notes

This document records the findings of a security review of the PVZ-ND codebase
(GameMaker game + Python level editor) and the mitigations applied.

## Scope

- Hardcoded API keys / secrets
- SQL injection
- Unvalidated user input (eval / exec / pickle / shell execution)
- Dependencies with known vulnerabilities
- Overly permissive CORS
- Exposed debug endpoints
- Missing authentication checks

The project is a GameMaker desktop game with a small Pygame-based level editor;
it contains no server-side code, no SQL database, and no HTTP endpoints exposed
by the game itself. CORS, debug endpoints, and missing-auth classes of bugs are
therefore not applicable.

## Findings

### 1. Obfuscated GameJolt private key shipped with the client (High)

`objects/load_audio_obj/Step_0.gml` calls `gj_init` with the GameJolt game ID
and private key wrapped in a custom `read()` function
(`scripts/read/read.gml`). `read()` is a trivially reversible base64 + constant
shift, so the key is effectively public.

```gml
gj_init(read("..."), read("..."))  // 6-digit game_id, 32-hex-char private key
```

**Why this matters:** Anyone who extracts the key can sign arbitrary requests
against the GameJolt Game API for this game (submit scores, grant trophies,
read/write the shared datastore, etc.).

**Inherent limitation:** Any API key embedded in a client-side application is
ultimately extractable — GameJolt's Game API is designed to be called directly
from the game, so some form of client-side key is unavoidable without a proxy
server.

**Recommended actions (require maintainer action):**
- Rotate the GameJolt private key in the GameJolt dashboard so the currently
  committed value is invalidated.
- Treat any scores, achievements, or datastore values as untrusted client
  input; do not display them as authoritative leaderboards without server-side
  validation.
- Consider putting a thin proxy server in front of GameJolt calls that perform
  writes (scores, trophies, datastore) so the private key never ships with the
  client.

No automated fix is applied in this repo, because rotating the key and/or
adding a proxy server is an operational decision for the project maintainer.

### 2. Commented-out plaintext HTTP URL in GameJolt login (Medium) — Fixed

`scripts/gj_user_login/gj_user_login.gml` previously contained a commented-out
`http://` variant of the login URL next to the live `https://` one. Leaving
a plaintext-HTTP alternative in source is a footgun: any future edit that
uncomments it would send the user's GameJolt `user_token` and signature in the
clear.

**Fix:** removed the commented-out `http://` line; only the HTTPS URL remains.

### 3. `globals()[target] = ...` in the Python level editor (Medium) — Fixed

`PVZND-Level-Editor/main.py::set_data` used `globals()[entity.target] = ...`
with the target name coming from a button object's attribute. The currently
wired buttons pass fixed, safe target strings (`"level_data"`, `"test"`), so
this is not currently exploitable, but the pattern would allow any caller
that can construct a `Button`-like object to overwrite arbitrary module
globals — including functions, imports, and the `file`/`file2` level JSON
strings.

**Fix:** `set_data` now refuses to write to any name outside a small
allowlist (`{"level_data", "test"}`).

### 4. Dropped file validation used a denylist (Low) — Fixed

`objects/customlvl_ctrl_obj/Create_0.gml` defined `file_is_valid` as
"anything that is not a `.zip`". Files pass this check and are copied into
`game_save_id + "ac<id>/custom_levels/"`, where the game later enumerates
`*.json` and parses them as levels.

A denylist of a single extension allows arbitrary other file types (e.g.
`.exe`, `.dll`, `.bat`, `.lnk`, Office documents with macros, other archives)
to be dropped into a user-writable folder next to game data. Even though only
`*.json` files are later parsed, allowing arbitrary file types into a game
folder is an unnecessary risk.

**Fix:** `file_is_valid` now uses a positive allowlist — only `.json` files
are accepted. `filename_name()` is already used to strip any directory
component from the dropped path, so path traversal is not possible here.

### 5. GameJolt `user_token` passed in URL query string (Low, informational)

Every `scripts/gj_*` script builds URLs like
`https://gamejolt.com/api/game/v1/...?...&user_token=<token>...&signature=...`
and calls `http_get` / `http_post_string`. The request is made over HTTPS, so
the token is not exposed on the wire, but URL query strings are more likely
than headers to be logged by intermediate proxies or end up in browser
history / server access logs.

This is how the GameJolt Game API itself is designed, so no code change is
made. Noted here so that, if GameJolt ever exposes a header-based auth
scheme, the project migrates to it.

### 6. Discord application ID obfuscated the same way (Informational)

`objects/nekopresence_obj/Create_0.gml` passes a `read(...)`-obfuscated
string to `np_initdiscord`. Discord *application IDs* are not secrets (they
are visible to any Discord client displaying the rich presence), so this is
not a security issue — only a note that obfuscating a non-secret gives a
false sense of security and can make maintenance harder.

## Not applicable to this project

- **SQL injection** — no SQL database or query code exists.
- **CORS** — no HTTP server is implemented by this project.
- **Exposed debug endpoints** — no HTTP server is implemented by this project.
- **Missing authentication checks** — no authorization surface is implemented
  by this project; the only auth is GameJolt login, delegated to GameJolt.

## Dependencies

The GameMaker project depends on the bundled extensions under `extensions/`
(native DLL/SO/DYLIB binaries for NekoPresence, file_dropper,
execute_shell_simple, gamepad_force_focus). These binaries are vendored; no
automated vulnerability scanning is performed on them here.

The Python level editor depends on `pygame` (used at runtime). There is no
pinned `requirements.txt`; consider adding one and running `pip-audit` in CI
to catch vulnerable dependency versions.
