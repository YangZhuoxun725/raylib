project "raylib"
  kind "StaticLib"
  language "C"
  cdialect "C99"
  staticruntime "On"

  files
  {
    "src/raylib.h",
    "src/rcamera.h",
    "src/raymath.h",
    "src/rlgl.h",
    "src/rgestures.h",
    "src/rlights.h",

    "src/raylib.c",
    "src/rcore.c",
    "src/raudio.c",
    "src/rmodels.c",
    "src/rshapes.c",
    "src/rtext.c",
    "src/rtextures.c",
    "src/utils.c"
  }

  includedirs
  {
    "src",
    "src/external",
    "src/external/glfw/include"
  }

  defines
  {
    "PLATFORM_DESKTOP",        
    "GRAPHICS_API_OPENGL_33",
    "_CRT_SECURE_NO_WARNINGS"
  }

  filter "system:windows"
    systemversion "latest"

    links
    {
      "winmm",
      "gdi32",
      "opengl32"
    }

  filter "configurations:Debug"
    symbols "On"
    optimize "Debug"

  filter "configurations:Release"
    symbols "Off"
    optimize "On"

  filter "configurations:Dist"
    symbols "Off"
    optimize "Speed"
