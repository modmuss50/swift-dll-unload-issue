import WinSDK

let module = LoadLibraryA("library.dll")
guard let hModule = module else {
    fatalError("Failed to load library.dll")
}

// We stall when trying to unload the library here:
FreeLibrary(hModule)

print("Unloaded library.dll")