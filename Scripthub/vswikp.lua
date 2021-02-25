pcall(function()
    local content = game:HttpGet("https://raw.githubusercontent.com/ClairSonata/A.I-Hub/main/Intro.lua")
    assert(loadstring(content))()
    end)