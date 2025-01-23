
--[[ 

This is a simple wallpaper changer made in LUA. Made by Santiago [https://santiagocalebe.neocitites.org]

1. How to use it?

    1.1 - Directory
        Below, you will find relative Path local. Here you will put the directory of your image.

        Ex.: My BITMAP image is at PsychEngine/mods/modname/images/wallpaper/wallpaper.bmp
            You'll put in relativePath local: mods/modname/images/wallpaper/wallpaper.bmp
            The game won't regonize if you put PsychEngine or Bin or whatever your folder is.

        Ps.: Only .BMP files supported.
]]

-- Change this, for ex. If your mod folder is named Mod1, and you want to load a image from there, then put
   -- Mod1/images/yourimage.bmp

local relativePath = "mods/wallpaperchanger/yourimage.bmp"

-- Don't touch anything below if you don't know what you're doing!!!
-- Don't touch anything below if you don't know what you're doing!!!
local ffi = require("ffi")

local originalWallpaper = ffi.new("char[256]") 

local function getAbsolutePath(relativePath)
    local file = io.popen("cd"):read("*l")
    return file .. "\\" .. relativePath:gsub("/", "\\")
end

local imagePath = getAbsolutePath(relativePath)

ffi.cdef[[
    int SystemParametersInfoA(unsigned int uiAction, unsigned int uiParam, const char *pvParam, unsigned int fWinIni);
]]

local SPI_SETDESKWALLPAPER = 0x0014
local SPI_GETDESKWALLPAPER = 0x0073
local SPIF_UPDATEINIFILE = 0x01
local SPIF_SENDCHANGE = 0x02

function changeWallpaper(imagePath)
    
    ffi.C.SystemParametersInfoA(SPI_GETDESKWALLPAPER, 256, originalWallpaper, 0)

    local file = io.open(imagePath, "rb")
    if not file then
        return false
    end
    file:close()

    local result = ffi.C.SystemParametersInfoA(SPI_SETDESKWALLPAPER, 0, imagePath, SPIF_UPDATEINIFILE + SPIF_SENDCHANGE)
    return result ~= 0
end

function Off()
    local result = ffi.C.SystemParametersInfoA(SPI_SETDESKWALLPAPER, 0, originalWallpaper, SPIF_UPDATEINIFILE + SPIF_SENDCHANGE)
end

function onDestroy()
    Off()
end

function onEvent(eventName, value1, value2, strumTime)
    if eventName == 'changewallpaper' then
        if value1 == 'on' then
            changeWallpaper(imagePath)
        end

        if value1 == 'off' then
            Off()
        end
    end
end