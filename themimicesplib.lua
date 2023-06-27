local ESP {}

local function createESP(object,instance)
    if not object:FindFirstChild("ESP") then
        local a = Instance.new("BillboardGui", object)
        a.Size = UDim2.new(1, 0, 1, 0)
        a.Name = "ESP"
        a.StudsOffset = instance.offset
        a.AlwaysOnTop = true
        
        local b = Instance.new("Frame", a)
        b.Size = UDim2.new(1, 0, 1, 0)
        b.BackgroundTransparency = 1
        b.BorderSizePixel = 0
        
        local c = Instance.new("TextLabel", b)
        c.Text = instance.text
        c.Font = Enum.Font.SourceSans
        c.Size = UDim2.new(1, 0, 1, 0)
        c.BackgroundTransparency = 1
        c.BorderSizePixel = 0
        c.TextColor3 = instance.color
        c.TextSize = 15.000
        
        local highlight = Instance.new("Highlight")
        highlight.Adornee = object
        highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        highlight.FillColor = instance.color
        highlight.FillTransparency = 0.5
        highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
        highlight.Parent = object
    end
end

function ESP:Add(object,instance)
    pcall(createESP, object, instance)
end