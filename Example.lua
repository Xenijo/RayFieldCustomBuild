local Rayfield = loadstring(game:HttpGet('https://pastebin.com/raw/kCd54qrM'))()


local Window = Rayfield:CreateWindow({
   Name = "Rayfield Example Window",
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "Calsdaa", -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("Tab Example", 4483362458) -- Title, Image
local SaveLoadName = "balls"

local Input = Tab:CreateInput({
   Name = "SaveLoadName",
   PlaceholderText = "",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
  SaveLoadName = Text 
  print(Text)
   end,
})

local Button = Tab:CreateButton({
   Name = "Save Config Custom FileName",
   Callback = function()
Rayfield:SaveConfigurationName(SaveLoadName)
   end,
})

local Button = Tab:CreateButton({
   Name = "Save Config Default(Name in the windows settings)",
   Callback = function()
Rayfield:SaveConfiguration()
   end,
})
local Button = Tab:CreateButton({
   Name = "Config Load Custom FileName",
   Callback = function()
      Rayfield:LoadConfigurationPath(SaveLoadName)
   end,
})

local Button = Tab:CreateButton({
   Name = "Config Load Default(Name in the windows settings FileName)",
   Callback = function()
      Rayfield:LoadConfiguration()
   end,
})




local Toggle = Tab:CreateToggle({
   Name = "Toggle Example",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Slider = Tab:CreateSlider({
   Name = "Slider Example",
   Range = {0, 100},
   Increment = 10,
   Suffix = "Bananas",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the slider changes
   -- The variable (Value) is a number which correlates to the value the slider is currently at
   end,
})


local ColorPicker = Tab:CreateColorPicker({
    Name = "Color Picker",
    Color = Color3.fromRGB(255,255,255),
    Flag = "ColorPicker1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        -- The function that takes place every time the color picker is moved/changed
        -- The variable (Value) is a Color3fromRGB value based on which color is selected
    end
})


local Dropdown = Tab:CreateDropdown({
   Name = "Dropdown Example",
   Options = {"Option 1","Option 2"},
   CurrentOption = {""},
   MultipleOptions = false,
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Option)
 print(Option[1])
  end,
})

local Button = Tab:CreateButton({
   Name = "Refresh Dropdown",
   Callback = function()
Dropdown:Replace({"Balls","Balls2"})
Dropdown:RefreshDropdownOptions()
   end,
})
local Dropdown2 = Tab:CreateDropdown({
    Name = "Boost",
    Options = {"All", "Double Wins", "Luck", "Golden", "Void"},
   CurrentOption = {""},
    MultipleOptions = true,
    Flag = "AutoBoostSelect", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Option)

    end,
})

local Button2 = Tab:CreateButton({
   Name = "Refresh Droppdown2 MultiSelection",
   Callback = function()
      Dropdown2:Replace({"Option1", "Option2", "Option3"})
      Dropdown2:RefreshDropdownOptions()
   end,
})
