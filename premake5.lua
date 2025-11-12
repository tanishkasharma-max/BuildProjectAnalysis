workspace "CalculatorApp"
   configurations { "Debug", "Release" }
   location "build/premake"

project "CalculatorApp"
   kind "ConsoleApp"
   language "C++"
   targetdir "build/premake"
   files { "src/**.cpp", "src/**.hpp" }
