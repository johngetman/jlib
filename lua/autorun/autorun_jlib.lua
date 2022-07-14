--[[

    jLib - A Library for Garry's Mod
                 coded by johngetman


    Variables name:
        string  = str_Name
        number  = int_Name
        boolean = bool_Name
        table   = table_Name
        color   = col_Name
        vector  = vec_Name
        angle   = ang_Name
        panel   = panel_Name

    Arguments name:
        a_Name

]]--

jLib = {}
jLib._VERSION = 1.1

local col_Prefix, col_Text = Color(255, 208, 106), Color(255, 255, 255)
function jLib.Print(a_msg)
    MsgC(col_Prefix, "[jLib] ", col_Text, a_msg, "\n")
end

--[[ File include functions ]]--

function jLib.IncludeClient(a_path)
    if SERVER then
        AddCSLuaFile(a_path)
    else
        include(a_path)
    end
end

function jLib.IncludeShared(a_path)
    if SERVER then
        AddCSLuaFile(a_path)
        include(a_path)
    else
        include(a_path)
    end
end

function jLib.IncludeServer(a_path)
    if SERVER then
        include(a_path)
    end
end

function jLib:Include(a_file, a_path)
    local str_Prefix, str_Path = string.Left(a_file, 3), a_path and a_path .. "/" .. a_file or a_file

    if str_Prefix == "cl_" then
        self.IncludeClient(str_Path)
    elseif str_Prefix == "sh_" then
        self.IncludeShared(str_Path)
    elseif str_Prefix == "sv_" then
        self.IncludeServer(str_Path)
    else
        self.Print(string.format("The %s file does not have the right prefix, like cl_, sh_, sv_.", a_file))
    end
end

function jLib:IncludeFolder(a_path)
    local table_Files, table_Folders = file.Find(a_path .. "/*", "LUA")

    for _, v in ipairs(table_Files) do
        self:Include(v, a_path)
    end
    
    if table.Count(table_Folders) == 0 then return end

    for _, v in ipairs(table_Folders) do
		self:IncludeFolder(a_path .. "/" .. v)
	end
end

function jLib:Initialize()
    self:IncludeFolder("jlib")
end

hook.Add("Initialize", "jLib.Initialize", function()
    jLib:Initialize()
end)
