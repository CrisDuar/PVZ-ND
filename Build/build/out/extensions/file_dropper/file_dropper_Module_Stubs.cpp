// Common

typedef int int32;
typedef unsigned long long uint64;

// Partial declaration with no functions (so we can pass it along)
struct gmval_c {
    uint64 _v;
};

typedef gmval_c (*CronusFunc_c)(gmval_c self, gmval_c callee, int argc, gmval_c* args);

// SharedLibraryManager

extern "C" void* SharedLibraryManager_GetFunctionByIndex(int index);
extern "C" int SharedLibraryManager_GetFunctionIndex(const char* libName, const char* functionName);

// GMVal Coerce

extern "C" double gmval_CoerceReal(gmval_c val);
extern "C" const char* gmval_CoerceCString(gmval_c val);;

// GMVal From

extern "C" gmval_c gmval_FromDouble(double d);
extern "C" gmval_c gmval_FromString(const char* s);

extern "C" gmval_c gmval_undefined();

// RunnerInterface

extern "C" void RunnerInterface_AddFunction(const char* name, CronusFunc_c func, int argc);
extern "C" void RunnerInterface_AddConstant_Double(const char* name, double value);
extern "C" void RunnerInterface_AddConstant_String(const char* name, const char* value);
extern "C" void RunnerInterface_ArgCountError(const char* funcName, int argc, int expected);

#include "file_dropper_Module_Stubs.h"

extern "C" gmval_c __GMLIBSTUB_GMVAL__file_dropper_init_raw(gmval_c self, gmval_c callee, int argc, gmval_c* args)
{
    if (argc < 2)
        RunnerInterface_ArgCountError("file_dropper_init_raw", argc, 2);
    // coerce arguments
    const char* arg0;
    double arg1;
    arg0 = gmval_CoerceCString(args[0]);
    arg1 = gmval_CoerceReal(args[1]);
    // shared library manager block
    using FunctionPtr = double(*)(const char*, double);
    static int32 index = SharedLibraryManager_GetFunctionIndex("file_dropper", "file_dropper_init_raw");
    FunctionPtr file_dropper_init_raw = (FunctionPtr)SharedLibraryManager_GetFunctionByIndex(index);
    if (file_dropper_init_raw == nullptr) return gmval_undefined();
    // function call
    double result = file_dropper_init_raw(arg0, arg1);
    return gmval_FromDouble(result);
}
extern "C" gmval_c __GMLIBSTUB_GMVAL__file_dropper_get_allow_raw(gmval_c self, gmval_c callee, int argc, gmval_c* args)
{
    if (argc < 0)
        RunnerInterface_ArgCountError("file_dropper_get_allow_raw", argc, 0);
    // shared library manager block
    using FunctionPtr = double(*)();
    static int32 index = SharedLibraryManager_GetFunctionIndex("file_dropper", "file_dropper_get_allow_raw");
    FunctionPtr file_dropper_get_allow_raw = (FunctionPtr)SharedLibraryManager_GetFunctionByIndex(index);
    if (file_dropper_get_allow_raw == nullptr) return gmval_undefined();
    // function call
    double result = file_dropper_get_allow_raw();
    return gmval_FromDouble(result);
}
extern "C" gmval_c __GMLIBSTUB_GMVAL__file_dropper_set_allow_raw(gmval_c self, gmval_c callee, int argc, gmval_c* args)
{
    if (argc < 1)
        RunnerInterface_ArgCountError("file_dropper_set_allow_raw", argc, 1);
    // coerce arguments
    double arg0;
    arg0 = gmval_CoerceReal(args[0]);
    // shared library manager block
    using FunctionPtr = double(*)(double);
    static int32 index = SharedLibraryManager_GetFunctionIndex("file_dropper", "file_dropper_set_allow_raw");
    FunctionPtr file_dropper_set_allow_raw = (FunctionPtr)SharedLibraryManager_GetFunctionByIndex(index);
    if (file_dropper_set_allow_raw == nullptr) return gmval_undefined();
    // function call
    double result = file_dropper_set_allow_raw(arg0);
    return gmval_FromDouble(result);
}
extern "C" gmval_c __GMLIBSTUB_GMVAL__file_dropper_get_effect_raw(gmval_c self, gmval_c callee, int argc, gmval_c* args)
{
    if (argc < 1)
        RunnerInterface_ArgCountError("file_dropper_get_effect_raw", argc, 1);
    // coerce arguments
    double arg0;
    arg0 = gmval_CoerceReal(args[0]);
    // shared library manager block
    using FunctionPtr = double(*)(double);
    static int32 index = SharedLibraryManager_GetFunctionIndex("file_dropper", "file_dropper_get_effect_raw");
    FunctionPtr file_dropper_get_effect_raw = (FunctionPtr)SharedLibraryManager_GetFunctionByIndex(index);
    if (file_dropper_get_effect_raw == nullptr) return gmval_undefined();
    // function call
    double result = file_dropper_get_effect_raw(arg0);
    return gmval_FromDouble(result);
}
extern "C" gmval_c __GMLIBSTUB_GMVAL__file_dropper_set_effect_raw(gmval_c self, gmval_c callee, int argc, gmval_c* args)
{
    if (argc < 1)
        RunnerInterface_ArgCountError("file_dropper_set_effect_raw", argc, 1);
    // coerce arguments
    double arg0;
    arg0 = gmval_CoerceReal(args[0]);
    // shared library manager block
    using FunctionPtr = double(*)(double);
    static int32 index = SharedLibraryManager_GetFunctionIndex("file_dropper", "file_dropper_set_effect_raw");
    FunctionPtr file_dropper_set_effect_raw = (FunctionPtr)SharedLibraryManager_GetFunctionByIndex(index);
    if (file_dropper_set_effect_raw == nullptr) return gmval_undefined();
    // function call
    double result = file_dropper_set_effect_raw(arg0);
    return gmval_FromDouble(result);
}
extern "C" gmval_c __GMLIBSTUB_GMVAL__file_dropper_get_default_allow_raw(gmval_c self, gmval_c callee, int argc, gmval_c* args)
{
    if (argc < 0)
        RunnerInterface_ArgCountError("file_dropper_get_default_allow_raw", argc, 0);
    // shared library manager block
    using FunctionPtr = double(*)();
    static int32 index = SharedLibraryManager_GetFunctionIndex("file_dropper", "file_dropper_get_default_allow_raw");
    FunctionPtr file_dropper_get_default_allow_raw = (FunctionPtr)SharedLibraryManager_GetFunctionByIndex(index);
    if (file_dropper_get_default_allow_raw == nullptr) return gmval_undefined();
    // function call
    double result = file_dropper_get_default_allow_raw();
    return gmval_FromDouble(result);
}
extern "C" gmval_c __GMLIBSTUB_GMVAL__file_dropper_set_default_allow_raw(gmval_c self, gmval_c callee, int argc, gmval_c* args)
{
    if (argc < 1)
        RunnerInterface_ArgCountError("file_dropper_set_default_allow_raw", argc, 1);
    // coerce arguments
    double arg0;
    arg0 = gmval_CoerceReal(args[0]);
    // shared library manager block
    using FunctionPtr = double(*)(double);
    static int32 index = SharedLibraryManager_GetFunctionIndex("file_dropper", "file_dropper_set_default_allow_raw");
    FunctionPtr file_dropper_set_default_allow_raw = (FunctionPtr)SharedLibraryManager_GetFunctionByIndex(index);
    if (file_dropper_set_default_allow_raw == nullptr) return gmval_undefined();
    // function call
    double result = file_dropper_set_default_allow_raw(arg0);
    return gmval_FromDouble(result);
}
extern "C" gmval_c __GMLIBSTUB_GMVAL__file_dropper_get_default_effect_raw(gmval_c self, gmval_c callee, int argc, gmval_c* args)
{
    if (argc < 1)
        RunnerInterface_ArgCountError("file_dropper_get_default_effect_raw", argc, 1);
    // coerce arguments
    double arg0;
    arg0 = gmval_CoerceReal(args[0]);
    // shared library manager block
    using FunctionPtr = double(*)(double);
    static int32 index = SharedLibraryManager_GetFunctionIndex("file_dropper", "file_dropper_get_default_effect_raw");
    FunctionPtr file_dropper_get_default_effect_raw = (FunctionPtr)SharedLibraryManager_GetFunctionByIndex(index);
    if (file_dropper_get_default_effect_raw == nullptr) return gmval_undefined();
    // function call
    double result = file_dropper_get_default_effect_raw(arg0);
    return gmval_FromDouble(result);
}
extern "C" gmval_c __GMLIBSTUB_GMVAL__file_dropper_set_default_effect_raw(gmval_c self, gmval_c callee, int argc, gmval_c* args)
{
    if (argc < 1)
        RunnerInterface_ArgCountError("file_dropper_set_default_effect_raw", argc, 1);
    // coerce arguments
    double arg0;
    arg0 = gmval_CoerceReal(args[0]);
    // shared library manager block
    using FunctionPtr = double(*)(double);
    static int32 index = SharedLibraryManager_GetFunctionIndex("file_dropper", "file_dropper_set_default_effect_raw");
    FunctionPtr file_dropper_set_default_effect_raw = (FunctionPtr)SharedLibraryManager_GetFunctionByIndex(index);
    if (file_dropper_set_default_effect_raw == nullptr) return gmval_undefined();
    // function call
    double result = file_dropper_set_default_effect_raw(arg0);
    return gmval_FromDouble(result);
}
extern "C" gmval_c __GMLIBSTUB_GMVAL__RegisterCallbacks(gmval_c self, gmval_c callee, int argc, gmval_c* args)
{
    if (argc < 4)
        RunnerInterface_ArgCountError("RegisterCallbacks", argc, 4);
    // coerce arguments
    const char* arg0;
    const char* arg1;
    const char* arg2;
    const char* arg3;
    arg0 = gmval_CoerceCString(args[0]);
    arg1 = gmval_CoerceCString(args[1]);
    arg2 = gmval_CoerceCString(args[2]);
    arg3 = gmval_CoerceCString(args[3]);
    // shared library manager block
    using FunctionPtr = double(*)(const char*, const char*, const char*, const char*);
    static int32 index = SharedLibraryManager_GetFunctionIndex("file_dropper", "RegisterCallbacks");
    FunctionPtr RegisterCallbacks = (FunctionPtr)SharedLibraryManager_GetFunctionByIndex(index);
    if (RegisterCallbacks == nullptr) return gmval_undefined();
    // function call
    double result = RegisterCallbacks(arg0, arg1, arg2, arg3);
    return gmval_FromDouble(result);
}
extern "C" void Setup_file_dropper()
{
    RunnerInterface_AddConstant_Double("file_dropper_mk_lbutton", static_cast<double>(1));
    RunnerInterface_AddConstant_Double("file_dropper_mk_rbutton", static_cast<double>(2));
    RunnerInterface_AddConstant_Double("file_dropper_mk_shift", static_cast<double>(4));
    RunnerInterface_AddConstant_Double("file_dropper_mk_control", static_cast<double>(8));
    RunnerInterface_AddConstant_Double("file_dropper_mk_mbutton", static_cast<double>(16));
    RunnerInterface_AddConstant_Double("file_dropper_mk_alt", static_cast<double>(32));
    RunnerInterface_AddConstant_Double("file_dropper_effect_none", static_cast<double>(0));
    RunnerInterface_AddConstant_Double("file_dropper_effect_copy", static_cast<double>(1));
    RunnerInterface_AddConstant_Double("file_dropper_effect_move", static_cast<double>(2));
    RunnerInterface_AddConstant_Double("file_dropper_effect_link", static_cast<double>(4));
    RunnerInterface_AddFunction("file_dropper_init_raw", __GMLIBSTUB_GMVAL__file_dropper_init_raw, 2);
    RunnerInterface_AddFunction("file_dropper_get_allow_raw", __GMLIBSTUB_GMVAL__file_dropper_get_allow_raw, 0);
    RunnerInterface_AddFunction("file_dropper_set_allow_raw", __GMLIBSTUB_GMVAL__file_dropper_set_allow_raw, 1);
    RunnerInterface_AddFunction("file_dropper_get_effect_raw", __GMLIBSTUB_GMVAL__file_dropper_get_effect_raw, 1);
    RunnerInterface_AddFunction("file_dropper_set_effect_raw", __GMLIBSTUB_GMVAL__file_dropper_set_effect_raw, 1);
    RunnerInterface_AddFunction("file_dropper_get_default_allow_raw", __GMLIBSTUB_GMVAL__file_dropper_get_default_allow_raw, 0);
    RunnerInterface_AddFunction("file_dropper_set_default_allow_raw", __GMLIBSTUB_GMVAL__file_dropper_set_default_allow_raw, 1);
    RunnerInterface_AddFunction("file_dropper_get_default_effect_raw", __GMLIBSTUB_GMVAL__file_dropper_get_default_effect_raw, 1);
    RunnerInterface_AddFunction("file_dropper_set_default_effect_raw", __GMLIBSTUB_GMVAL__file_dropper_set_default_effect_raw, 1);
    RunnerInterface_AddFunction("RegisterCallbacks", __GMLIBSTUB_GMVAL__RegisterCallbacks, 4);
}
