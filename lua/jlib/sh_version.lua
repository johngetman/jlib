local col_Prefix, str_Text = Color(255, 138, 138), [[////// [jLib] \\\\\\

jLib v]] .. jLib._VERSION  .. [[.
Coded by johngetman<3

\\\\\\ [jLib] ///////
]]

timer.Simple(1, function()
    http.Fetch("https://raw.githubusercontent.com/johngetman/jlib/main/version.txt", function(body)
        MsgC(col_Prefix, str_Text, "\n")
        local int_Version, int_NormalVersion = jLib._VERSION, tonumber(body)
        jLib.Print((int_Version > int_NormalVersion and "Your version is higher than the current one.") or (int_Version < int_NormalVersion and "You can install a new update.") or "Addon is up to date.")
    end)
end)