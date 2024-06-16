project "yaml-cpp"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"src/**.h",
        "src/**.cpp",

        "include/**.h"
	}

    includedirs
    {
        "include"
    }

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++20"
        staticruntime "off"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"