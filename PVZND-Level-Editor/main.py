import pygame
import json

# Configuration

file = """{
  "rw":[
    166.0,
    267.0,
    370.0,
    472.0,
    578.0,
    578.0
  ],
  "sprite":"cherryslot1_spr",
  "lvl":6.0,
  "control":{
    "mowers":[
      0.0,
      0.0,
      0.0,
      0.0,
      0.0
    ],
    "limit":1600.0,
    "windy":false,
    "rain":false,
    "stage":2.0,
    "daytime":0.0
  },
  "fog":-1.0,
  "smog":-1.0,
  "is_conveyor":false,
  "cys":true,
  "conv_code":0.0,
  "conv_t1":0.0,
  "pt":12.0,
  "fn":10.0,
  "conv_t2":0.0,
  "preplants":[
    0, 1, 2, 3, 4
  ],
  "loop":false,
  "idle_sng":"grasswalk_sng",
  "wf":[
    [
      6.0,
      1.0
    ],
    [
      9.0,
      2.0
    ]
  ],
  "horde_sng":"grasswalk_fw_sng",
  "horde_prcnt":0.4,
  "surprise_enabled":true,
  "infinite":false,
  "infinite_loop":3.0,
  "progressbar":true,
  "onlyname":false,
  "lvl_en":"Level 5",
  "lvl_es":"Nivel 5",
  "lvl_zh":"关卡",
  "prizevar":"niveles",
  "money":100.0,
  "snd":"newplant_snd",
  "plantroom":"price_rm",
  "arr_row":[
    [
      0.0,
      1.0,
      2.0,
      3.0,
      4.0
    ]
  ],
  "waves":[
    [
      {
        "row":0.0,
        "typ":"z_zombie_obj",
        "num":1.0
      }
    ],
    [
      {
        "row":0.0,
        "typ":"z_zombie_obj",
        "num":1.0
      }
    ],
    [
      {
        "row":0.0,
        "typ":"z_paperthrower_obj",
        "num":1.0
      }
    ],
    [
      {
        "row":0.0,
        "typ":"z_paperthrower_obj",
        "num":1.0
      },
      {
        "row":0.0,
        "typ":"z_headbox_obj",
        "num":1.0
      }
    ],
    [
      {
        "row":0.0,
        "typ":"z_conehead_obj",
        "num":1.0
      }
    ],
    [
      {
        "row":0.0,
        "typ":"z_conehead_obj",
        "num":1.0
      },
      {
        "row":0.0,
        "typ":"z_paperthrower_obj",
        "num":1.0
      }
    ],
    [
      {
        "row":0.0,
        "typ":"z_headbox_obj",
        "num":2.0
      },
      {
        "row":0.0,
        "typ":"z_flag_obj",
        "num":1.0
      },
      {
        "row":0.0,
        "typ":"z_paperthrower_obj",
        "num":2.0
      },
      {
        "row":0.0,
        "typ":"z_conehead_obj",
        "num":1.0
      },
      {
        "row":0.0,
        "typ":"z_zombie_obj",
        "num":3.0
      }
    ],
    [
      {
        "row":0.0,
        "typ":"z_headbox_obj",
        "num":2.0
      },
      {
        "row":0.0,
        "typ":"z_zombie_obj",
        "num":1.0
      }
    ],
    [
      {
        "row":0.0,
        "typ":"z_headbox_obj",
        "num":2.0
      },
      {
        "row":0.0,
        "typ":"z_conehead_obj",
        "num":2.0
      }
    ],
    [
      {
        "row":0.0,
        "typ":"z_headbox_obj",
        "num":2.0
      },
      {
        "row":0.0,
        "typ":"z_flag_obj",
        "num":1.0
      },
      {
        "row":0.0,
        "typ":"z_paperthrower_obj",
        "num":3.0
      },
      {
        "row":0.0,
        "typ":"z_conehead_obj",
        "num":3.0
      },
      {
        "row":0.0,
        "typ":"z_zombie_obj",
        "num":2.0
      }
    ]
  ]
}
"""

file2 = """{
}"""

SCREEN_WIDTH = 1088
SCREEN_HEIGHT = 640
FPS = 60
level_data = "0"
test = "no"
active_input = None
input_text = ""
current_object = ""
level_name = "Unnamed"

# Game States
MENU = "main_menu"
EDITOR = "map_editor"
current_state = MENU

# Load Background
map_bg = pygame.image.load("./assets/housebg.png")


def get_objects():
    objects = {}
    for xtile in tiles:
        if xtile.text != "":
            # If we haven't seen this object name yet, create the base structure
            if xtile.text not in objects:
                objects[xtile.text] = {
                    # This line dynamically creates the index based on the name
                    "obj_index": f"@ref object({xtile.text}_obj)",
                    "obj_layer": "Instances",
                    "pos": [],
                    "vars": {}
                }

            # Add the current tile's position to the existing list
            objects[xtile.text]["pos"].append({
                "x": (xtile.col * 88) + 321,
                "y": (xtile.row * 100) + 160
            })

    return objects


def modify_object_btn(x):
    global active_input, input_text
    active_input = "object"
    input_text = ""

def modify_level_btn(x):
    global active_input, input_text
    active_input = "level"
    input_text = ""


def save_to_json2(x):
    global file2
    t = json.loads(file2)
    testoo = get_objects()

    t = testoo
    file2 = json.dumps(t, indent=4)
    filename = f"{level_name}_obj.json" if level_name else "default_obj.json"

    with open(filename, "w") as h:
        json.dump(t, h, indent=4)

    print(f"Saved objects to {filename}")


def save_to_json(x2):
    global file
    t = json.loads(file)
    t["control"]["daytime"] = float(level_data[0])
    file = json.dumps(t)

    with open(level_name + ".json", "w") as f:
        json.dump(t, f, indent=4)

    print("saved level")


def set_data(entity):
    # Restrict which globals callers may assign to. Using globals()[target] = ...
    # with a raw string lets any caller overwrite arbitrary module-level names
    # (functions, classes, imports), which is unsafe and hard to reason about.
    _SET_DATA_ALLOWED_TARGETS = {"level_data", "test"}

    target = entity.target
    if target not in _SET_DATA_ALLOWED_TARGETS:
        print(f"set_data: refusing to set disallowed target {target!r}")
        return

    targetvalue = entity.arraytext.index(entity.text)
    globals()[target] = [targetvalue]
    print(f"{target} updated to: {globals()[target]}")


class Tile:
    def __init__(self, x, y, width, height,row,column):
        self.rect = pygame.Rect(x, y, width, height)
        self.font = pygame.font.SysFont("Arial", 10)
        self.row = row
        self.col = column
        self.text = ""

    def draw(self, surface):
        pygame.draw.rect(screen, (255, 255, 255), tile.rect, 1)

        text_surf = self.font.render(self.text, True, (255, 255, 255))
        text_rect = text_surf.get_rect(center=self.rect.center)
        surface.blit(text_surf, text_rect)

    def handle_event(self, events):
        if events.type == pygame.MOUSEBUTTONDOWN:
            if self.rect.collidepoint(events.pos):
                print(f"Clicked Row: {self.row}, Col: {self.col}")
                if self.text == "":
                    self.text = current_object
                else:
                    self.text = ""


class Button:
    def __init__(self, x, y, width, height, text, callback,target, color=(100, 100, 100)):
        self.rect = pygame.Rect(x, y, width, height)
        if isinstance(text, list):
            self.text = text[0]
        else: self.text = text
        self.arraytext = text
        self.callback = callback  # The function to run
        self.color = color
        self.font = pygame.font.SysFont("Arial", 20)
        self.target = target

    def draw(self, surface):
        mouse_pos = pygame.mouse.get_pos()
        current_color = (150, 150, 150) if self.rect.collidepoint(mouse_pos) else self.color
        pygame.draw.rect(surface, current_color, self.rect)

        text_surf = self.font.render(self.text, True, (255, 255, 255))
        text_rect = text_surf.get_rect(center=self.rect.center)
        surface.blit(text_surf, text_rect)

    def handle_event(self, _event):
        if _event.type == pygame.MOUSEBUTTONDOWN and self.rect.collidepoint(_event.pos):
            if isinstance(self.arraytext, list):
                place = self.arraytext.index(self.text)
                if place == len(self.arraytext) - 1: self.text = self.arraytext[0]
                else: self.text = self.arraytext[place + 1]
            self.callback(self)


# Initialize
pygame.init()
screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
pygame.display.set_caption("PVZ ND Level Editor")
clock = pygame.time.Clock()

# buttons
set_btn = Button(50, 50, 100, 40, ["Day","Sunset","Night"], set_data,"level_data")
test_btn = Button(50, 170, 100, 40, ["no","yes","maybe"], set_data,"test")
save_btn = Button(50, 110, 100, 40, "Save", save_to_json,"")
level_btn = Button(550, 50, 100, 40, "Level", modify_level_btn,"")

save_btn2 = Button(900, 25, 100, 40, "Save", save_to_json2,"")
object_btn = Button(20, 25, 100, 40, "Object", modify_object_btn,"")

buttons = [set_btn, save_btn,test_btn,level_btn]

tiles = []
start_x = 165  # Adjust based on your PNG's grass start
start_y = 100  # Adjust based on your PNG's grass top
tile_w = 70
tile_h = 80

for i in range(5):    # Rows
    for l in range(9): # Columns
        x = start_x + (l * (tile_w + 19))
        y = start_y + (i * (tile_h + 20))
        tiles.append(Tile(x, y, tile_w, tile_h, i, l))

buttons2 = [object_btn,save_btn2] # buttons for editor


# Main Loop
running = True
while running:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False

        if event.type == pygame.KEYDOWN and active_input:
            if event.key == pygame.K_RETURN:
                # Save to the specific variable that was active
                if active_input == "object":
                    current_object = input_text
                elif active_input == "level":
                    level_name = input_text

                print(f"Saved to {active_input}: {input_text}")
                active_input = None  # Reset
                input_text = ""

            elif event.key == pygame.K_BACKSPACE:
                input_text = input_text[:-1]
            elif event.key == pygame.K_ESCAPE:
                active_input = None
                input_text = ""
            else:
                input_text += event.unicode

        # Only process button clicks if in MENU state
        if current_state == MENU:
            for btn in buttons:
                btn.handle_event(event)

        if event.type == pygame.KEYDOWN:
            if event.key == pygame.K_e and active_input == None:
                current_state = EDITOR if current_state == MENU else MENU

        # ADD THIS: Check tiles separately if in EDITOR mode
        if current_state == EDITOR:
            for tile in tiles:
                tile.handle_event(event)
            for btn2 in buttons2:
                btn2.handle_event(event)

    # Rendering
    screen.fill((40, 40, 40))

    if current_state == MENU:
        for btn in buttons:
            btn.draw(screen)
        if active_input:
            # Draw a simple box and the current text
            pygame.draw.rect(screen, (255, 255, 255), (700, 54, 300, 30))
            txt_surface = pygame.font.SysFont("Arial", 20).render(input_text, True, (0, 0, 0))
            screen.blit(txt_surface, (710, 56))

    elif current_state == EDITOR:
        # Draw the PNG background
        screen.blit(map_bg, (-122, 0))
        for tile in tiles:
            tile.draw(screen)  # Thin white border
        for btn2 in buttons2:
            btn2.draw(screen)
        if active_input:
            # Draw a simple box and the current text
            pygame.draw.rect(screen, (255, 255, 255), (200, 27, 300, 30))
            txt_surface = pygame.font.SysFont("Arial", 20).render(input_text, True, (0, 0, 0))
            screen.blit(txt_surface, (210, 30))


    pygame.display.flip()
    clock.tick(FPS)

pygame.quit()