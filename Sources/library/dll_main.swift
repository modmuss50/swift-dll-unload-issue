// None of this code is required to reproduce the issue:
import WinSDK

@_cdecl("DllMain")
public func DllMain(hModule: HMODULE, reason: DWORD, lpReserved: LPVOID) -> Bool {
    switch reason {
    case DWORD(DLL_PROCESS_ATTACH):
        print("DLL_PROCESS_ATTACH")
    case DWORD(DLL_PROCESS_DETACH):
        print("DLL_PROCESS_DETACH")
    default:
        break
    }

    return true
}