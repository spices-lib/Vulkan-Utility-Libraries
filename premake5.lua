solution.DefineCppStaticLibrary("Vulkan-Utility-Libraries", function()

    systemversion "latest"

	files
	{
        "src/layer/*.cpp",
        "src/layer/*.hpp",
        "include/vulkan/vulkan/*.h",
        "include/vulkan/vulkan/*.hpp",
    }
    
    externalincludedirs
    {
        "include",
        vendor.Vulkan_Headers.includes,
    }

    filter "configurations:Debug"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		runtime "Release"
		optimize "On"

end)