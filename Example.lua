local KeySys = loadstring(game:HttpGet("https://rentry.co/5b6c8wbm/raw"))()

KeySys.Main({
  HubName = "Zyne Hub",
  Service = "zyne",
  Discord = "https://discord.gg/codexlol",
  CustomTextBoxMessage = nil, --put a string if u want
  KeylessSettings = {
  	LoopKeyless = {
  	  Active = true,
        Interval = 5
       },
        CorrectHWID = "Loading Script...",
        IncorrectHWID = "INCORRECT HWID",
       PremiumEnabled = false,
       SavePremium = true 
   },
  NormalScript = function()
    print("this is normal script")
  end,
  PremiumScript = function()
    print("this is a premium script")
  end
})
