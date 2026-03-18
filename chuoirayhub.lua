-- Khởi tạo biến cơ bản
local Player = game:GetService("Players").LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

-- Xóa UI cũ nếu đã chạy trước đó để không bị đè lên nhau
if PlayerGui:FindFirstChild("ChuoiRayHub_UI") then
    PlayerGui:FindFirstChild("ChuoiRayHub_UI"):Destroy()
end

-- TẠO GIAO DIỆN (UI) - Dựa trên mẫu bạn gửi
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ChuoiRayHub_UI"
ScreenGui.Parent = PlayerGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Name = "MainFrame"
MainFrame.BackgroundColor3 = Color3.fromRGB(243, 222, 255)
MainFrame.BackgroundTransparency = 0.49
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.5, -190, 0.2, 0) -- Căn giữa màn hình cho dễ nhìn
MainFrame.Size = UDim2.new(0, 380, 0, 224)
Instance.new("UICorner", MainFrame)

local Stroke = Instance.new("UIStroke", MainFrame)
Stroke.Thickness = 2

-- Hiển thị Level
local LevelLabel = Instance.new("TextLabel", MainFrame)
LevelLabel.BackgroundTransparency = 1
LevelLabel.Position = UDim2.new(0, 8, 0, 2)
LevelLabel.Size = UDim2.new(0, 150, 0, 34)
LevelLabel.Font = Enum.Font.SourceSansBold
LevelLabel.TextColor3 = Color3.fromRGB(35, 0, 0)
LevelLabel.TextSize = 16
LevelLabel.TextXAlignment = Enum.TextXAlignment.Left
LevelLabel.Text = "LEVEL: Đang tải..."

-- Hiển thị Tên người chơi
local NameLabel = Instance.new("TextLabel", MainFrame)
NameLabel.BackgroundTransparency = 1
NameLabel.Position = UDim2.new(0, 220, 0, 2)
NameLabel.Size = UDim2.new(0, 150, 0, 34)
NameLabel.Font = Enum.Font.SourceSansBold
NameLabel.TextColor3 = Color3.fromRGB(35, 0, 0)
NameLabel.TextSize = 14
NameLabel.TextXAlignment = Enum.TextXAlignment.Right
NameLabel.Text = "Name: " .. Player.Name

-- Tiêu đề Hub
local HubTitle = Instance.new("TextLabel", MainFrame)
HubTitle.BackgroundTransparency = 1
HubTitle.Position = UDim2.new(0, 0, 0, 70)
HubTitle.Size = UDim2.new(1, 0, 0, 30)
HubTitle.Font = Enum.Font.SourceSansItalic
HubTitle.TextSize = 18
HubTitle.Text = "chuoirayhub kaitun"

-- Label thông báo (Phần quan trọng nhất)
local StatusLabel = Instance.new("TextLabel", MainFrame)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Position = UDim2.new(0, 0, 0, 120)
StatusLabel.Size = UDim2.new(1, 0, 0, 50)
StatusLabel.Font = Enum.Font.SourceSansBold
StatusLabel.TextSize = 15
StatusLabel.Text = "Đang khởi tạo..."

-- Cập nhật Level liên tục
task.spawn(function()
    while true do
        pcall(function()
            local lv = Player.Data:FindFirstChild("Level") and Player.Data.Level.Value or 0
            LevelLabel.Text = "LEVEL: " .. tostring(lv)
        end)
        task.wait(1)
    end
end)

--- LOGIC CHỜ 7 GIÂY VÀ CHẠY AUTO LEVEL ---
task.spawn(function()
    -- 5 giây đầu: Báo lỗi Beta
    StatusLabel.Text = "script đang ở beta nên hơi lỗi thông cảm"
    task.wait(5)
    
    -- 2 giây sau: Chuẩn bị
    StatusLabel.Text = "Đang chuẩn bị farm..."
    task.wait(2)
    
    StatusLabel.Text = "Trạng thái: Đang chạy Auto Level!"

    -------------------------------------------------------
    -- DÁN CODE AUTOLEVEL CỦA BẠN VÀO DƯỚI ĐÂY --
    -------------------------------------------------------
    print("Code Farm đã được kích hoạt!")
    
L_1_[22] = (L_1_[5]:WaitForChild("Data")):WaitForChild("Level")
function CheckLevel2()
	local L_28_ = {}
	L_28_[2] = (game:GetService("Players"))["LocalPlayer"]["Data"]["Level"]["Value"]
	if Old_World then
		if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 1 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 9 or SelectMonster == "" then
			Ms = "Bandit"
			NameQuest = "BanditQuest1"
			QuestLv = 1
			NameMon = "Bandit"
			CFrameQ = CFrame["new"](1059.37195, 15.4495068, 1550.4231, .939700544, 0, -0.341998369, 0, 1, 0, .341998369, 0, .939700544)
			CFrameMon = CFrame["new"](1353.44885, 3.40935516, 1376.92029, .776053488, -6.97791975e-08, .630666852, 6.99138596e-08, 1, 2.4612488e-08, -0.630666852, 2.49917598e-08, .776053488)
			Next_Level_X = 10
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 10 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 100 then
			Ms = "Shanda"
			NameQuest = "SkyExp1Quest"
			QuestLv = 2
			NameMon = "Shanda"
			CFrameQ = CFrame["new"](-7859.09814, 5544.19043, -381.476196)
			CFrameMon = CFrame["new"](-7904.57373, 5584.37646, -459.62973)
			Next_Level_X = 75
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 60 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 74 or SelectMonster == "Desert Bandit" then
			Ms = "Desert Bandit"
			NameQuest = "DesertQuest"
			QuestLv = 1
			NameMon = "Desert Bandit"
			CFrameQ = CFrame["new"](894.488647, 5.14000702, 4392.43359, .819155693, 0, -0.573571265, 0, 1, 0, .573571265, 0, .819155693)
			CFrameMon = CFrame["new"](932.788818, 6.8503746, 4488.24609, -0.998625934, 3.08948351e-08, .0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934)
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 75 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 89 or SelectMonster == "Desert Officer" then
			Ms = "Desert Officer"
			NameQuest = "DesertQuest"
			QuestLv = 2
			NameMon = "Desert Officer"
			CFrameQ = CFrame["new"](894.488647, 5.14000702, 4392.43359, .819155693, 0, -0.573571265, 0, 1, 0, .573571265, 0, .819155693)
			CFrameMon = CFrame["new"](1617.07886, 1.5542295, 4295.54932, -0.997540116, -2.26287735e-08, -0.070099175, -1.69377223e-08, 1, -8.17798806e-08, .070099175, -8.03913949e-08, -0.997540116)
			SelectMonster = "Desert Bandit"
			Next_Level_X = 90
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 90 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 99 or SelectMonster == "Snow Bandit" then
			Ms = "Snow Bandit"
			NameQuest = "SnowQuest"
			QuestLv = 1
			NameMon = "Snow Bandit"
			CFrameQ = CFrame["new"](1389.74451, 86.6520844, -1298.90796, -0.342042685, 0, .939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
			CFrameMon = CFrame["new"](1412.92346, 55.3503647, -1260.62036, -0.246266365, -0.0169920288, -0.969053388, .000432241941, .999844253, -0.0176417865, .969202161, -0.00476344163, -0.246220857)
			if SelectMonster == "Snow Bandit" then
			else
				Next_Level_X = 100
			end
			if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 110 then
				SelectBoss_P = "Yeti"
			end
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 100 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 119 or SelectMonster == "Snowman" then
			Next_Level_X = 120
			Ms = "Snowman"
			NameQuest = "SnowQuest"
			QuestLv = 2
			NameMon = "Snowman"
			CFrameQ = CFrame["new"](1389.74451, 86.6520844, -1298.90796, -0.342042685, 0, .939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
			CFrameMon = CFrame["new"](1376.86401, 97.2779999, -1396.93115, -0.986755967, 7.71178321e-08, -0.162211925, 7.71531674e-08, 1, 6.08143536e-09, .162211925, -6.51427134e-09, -0.986755967)
			if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 110 then
				SelectBoss_P = "Yeti"
			end
			SelectMonster = "Snow Bandit"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 120 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 174 or SelectMonster == "Chief Petty Officer" then
			Ms = "Chief Petty Officer"
			NameQuest = "MarineQuest2"
			QuestLv = 1
			NameMon = "Chief Petty Officer"
			CFrameQ = CFrame["new"](-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			CFrameMon = CFrame["new"](-4882.8623, 22.6520386, 4255.53516, .273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, .96181643, -3.01326679e-08, .273695946)
			if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 130 then
				SelectBoss_P = "Vice Admiral"
			end
			if SelectMonster == "Chief Petty Officer" then
			else
				Next_Level_X = 175
			end
		elseif SelectMonster == "Sky Bandit" then
			Ms = "Sky Bandit"
			NameQuest = "SkyQuest"
			QuestLv = 1
			NameMon = "Sky Bandit"
			CFrameQ = CFrame["new"](-4839.53027, 716.368591, -2619.44165, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268)
			CFrameMon = CFrame["new"](-4959.51367, 365.39267, -2974.56812, .964867651, 7.74418396e-08, .262737453, -6.95931988e-08, 1, -3.91783708e-08, -0.262737453, 1.95171506e-08, .964867651)
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 175 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 189 or SelectMonster == "Dark Master" then
			Ms = "Dark Master"
			NameQuest = "SkyQuest"
			QuestLv = 2
			NameMon = "Dark Master"
			CFrameQ = CFrame["new"](-4839.53027, 716.368591, -2619.44165, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268)
			CFrameMon = CFrame["new"](-5079.98096, 376.477356, -2194.17139, .465965867, -3.69776352e-08, .884802461, 3.40249851e-09, 1, 4.00000886e-08, -0.884802461, -1.56281423e-08, .465965867)
			SelectMonster = "Sky Bandit"
			if SelectMonster == "Dark Master" then
			else
				Next_Level_X = 190
			end
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 190 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 209 or SelectMonster == "Prisoner" then
			Ms = "Prisoner"
			QuestLv = 1
			NameQuest = "PrisonerQuest"
			NameMon = "Prisoner"
			CFrameQ = CFrame["new"](5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, .995993316, -2.06384709e-09, -0.0894274712)
			CFrameMon = CFrame["new"](5433.39307, 88.678093, 514.986877, .879988372, 0, -0.474995494, 0, 1, 0, .474995494, 0, .879988372)
			if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 220 then
				SelectBoss_P = "Warden"
			end
			if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 232 then
				SelectBoss_P = "Chief Warden"
			end
			if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 242 then
				SelectBoss_P = "Thunder God"
			end
			if SelectMonster == "Prisoner" then
			else
				Next_Level_X = 210
			end
			Bypass_TP_Dis = true
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 210 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 249 or SelectMonster == "Dangerous Prisoner" then
			if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 220 then
				SelectBoss_P = "Warden"
			end
			if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 232 then
				SelectBoss_P = "Chief Warden"
			end
			if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 242 then
				SelectBoss_P = "Thunder God"
			end
			Ms = "Dangerous Prisoner"
			QuestLv = 2
			NameQuest = "PrisonerQuest"
			NameMon = "Dangerous Prisoner"
			CFrameQ = CFrame["new"](5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, .995993316, -2.06384709e-09, -0.0894274712)
			CFrameMon = CFrame["new"](5433.39307, 88.678093, 514.986877, .879988372, 0, -0.474995494, 0, 1, 0, .474995494, 0, .879988372)
			SelectMonster = "Prisoner"
			Next_Level_X = 250
			Bypass_TP_Dis = true
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 250 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 274 or SelectMonster == "Toga Warrior" then
			Ms = "Toga Warrior"
			NameQuest = "ColosseumQuest"
			QuestLv = 1
			NameMon = "Toga Warrior"
			CFrameQ = CFrame["new"](-1576.11743, 7.38933945, -2983.30762, .576966345, 1.22114863e-09, .816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, .576966345)
			CFrameMon = CFrame["new"](-1779.97583, 44.6077499, -2736.35474, .984437346, 4.10396339e-08, .175734788, -3.62286876e-08, 1, -3.05844168e-08, -0.175734788, 2.3741821e-08, .984437346)
			if SelectMonster == "Toga Warrior" then
			else
				Next_Level_X = 275
			end
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 275 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 299 or SelectMonster == "Gladiator" then
			Ms = "Gladiator"
			NameQuest = "ColosseumQuest"
			QuestLv = 2
			NameMon = "Gladiator"
			CFrameQ = CFrame["new"](-1576.11743, 7.38933945, -2983.30762, .576966345, 1.22114863e-09, .816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, .576966345)
			CFrameMon = CFrame["new"](-1274.75903, 58.1895943, -3188.16309, .464524001, 6.21005611e-08, .885560572, -4.80449414e-09, 1, -6.76054768e-08, -0.885560572, 2.71497012e-08, .464524001)
			SelectMonster = "Toga Warrior"
			Next_Level_X = 300
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 300 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 324 or SelectMonster == "Military Soldier" then
			if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 350 then
				SelectBoss_P = "Magma Admiral"
			end
			Ms = "Military Soldier"
			NameQuest = "MagmaQuest"
			QuestLv = 1
			NameMon = "Military Soldier"
			CFrameQ = CFrame["new"](-5316.55859, 12.2370615, 8517.2998, .588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, .808542669, 3.60215964e-08, .588437557)
			CFrameMon = CFrame["new"](-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, .815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984)
			if SelectMonster == "Military Soldier" then
			else
				Next_Level_X = 325
			end
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 325 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 374 or SelectMonster == "Military Spy" then
			if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 350 then
				SelectBoss_P = "Magma Admiral"
			end
			Ms = "Military Spy"
			NameQuest = "MagmaQuest"
			QuestLv = 2
			NameMon = "Military Spy"
			CFrameQ = CFrame["new"](-5316.55859, 12.2370615, 8517.2998, .588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, .808542669, 3.60215964e-08, .588437557)
			CFrameMon = CFrame["new"](-5787.99023, 120.864456, 8762.25293, -0.188358366, -1.84706277e-08, .982100308, -1.23782129e-07, 1, -4.93306951e-09, -0.982100308, -1.22495649e-07, -0.188358366)
			SelectMonster = "Military Soldier"
			Next_Level_X = 375
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 375 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 399 or SelectMonster == "Fishman Warrior" then
			if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 425 then
				SelectBoss_P = "Fishman Lord"
			end
			Ms = "Fishman Warrior"
			NameQuest = "FishmanQuest"
			QuestLv = 1
			NameMon = "Fishman Warrior"
			CFrameQ = CFrame["new"](61122.5625, 18.4716396, 1568.16504)
			CFrameMon = CFrame["new"](60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, .996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185)
			if SelectMonster == "Fishman Warrior" then
			else
				Next_Level_X = 400
			end
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 400 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 449 or SelectMonster == "Fishman Commando" then
			if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 425 then
				SelectBoss_P = "Fishman Lord"
			end
			Ms = "Fishman Commando"
			NameQuest = "FishmanQuest"
			QuestLv = 2
			NameMon = "Fishman Commando"
			CFrameQ = CFrame["new"](61122.5625, 18.4716396, 1568.16504)
			CFrameMon = CFrame["new"](61902.7383, 18.4828358, 1478.33936, -0.803795099, 0, -0.594906271, 0, 1, 0, .594906271, 0, -0.803795099)
			if SelectMonster == "Fishman Commando" then
			else
				Next_Level_X = 450
			end
			SelectMonster = "Fishman Warrior"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 450 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 474 or SelectMonster == "God's Guard" then
			Ms = "God's Guard"
			NameQuest = "SkyExp1Quest"
			QuestLv = 1
			NameMon = "God's Guards"
			CFrameQ = CFrame["new"](-4721.71436, 845.277161, -1954.20105)
			CFrameMon = CFrame["new"](-4716.95703, 853.089722, -1933.925427)
			if SelectMonster == "God's Guard" then
			else
				Next_Level_X = 475
			end
			SelectMonster = "Fishman Commando"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 475 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 524 or SelectMonster == "Shanda" then
			Ms = "Shanda"
			NameQuest = "SkyExp1Quest"
			QuestLv = 2
			NameMon = "Shandas"
			CFrameQ = CFrame["new"](-7859.09814, 5544.19043, -381.476196)
			CFrameMon = CFrame["new"](-7904.57373, 5584.37646, -459.62973)
			if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 500 then
				SelectBoss_P = "Wysper"
			end
			if SelectMonster == "Shanda" then
			else
				Next_Level_X = 525
			end
			SelectMonster = "God's Guard"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 525 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 549 or SelectMonster == "Royal Squad" then
			Ms = "Royal Squad"
			NameQuest = "SkyExp2Quest"
			QuestLv = 1
			NameMon = "Royal Squad"
			CFrameQ = CFrame["new"](-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			CFrameMon = CFrame["new"](-7555.04199, 5606.90479, -1303.24744, -0.896107852, -9.6057462e-10, -0.443836004, -4.24974544e-09, 1, 6.41599973e-09, .443836004, 7.63560326e-09, -0.896107852)
			if SelectMonster == "Royal Squad" then
			else
				Next_Level_X = 550
			end
			SelectMonster = "Shanda"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 550 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 624 or SelectMonster == "Royal Soldier" then
			if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 575 then
				SelectBoss_P = "Thunder God"
			end
			Ms = "Royal Soldier"
			NameQuest = "SkyExp2Quest"
			QuestLv = 2
			NameMon = "Royal Soldier"
			CFrameQ = CFrame["new"](-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			CFrameMon = CFrame["new"](-7837.31152, 5649.65186, -1791.08582, -0.716008604, .0104285581, -0.698013008, 5.02521061e-06, .99988848, .0149335321, .69809103, .0106890313, -0.715928733)
			if SelectMonster == "Royal Soldier" then
			else
				Next_Level_X = 625
			end
			SelectMonster = "Royal Squad"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 625 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 649 or SelectMonster == "Galley Pirate" then
			Ms = "Galley Pirate"
			NameQuest = "FountainQuest"
			QuestLv = 1
			NameMon = "Galley Pirate"
			CFrameQ = CFrame["new"](5259.81982, 37.3500175, 4050.0293, .087131381, 0, .996196866, 0, 1, 0, -0.996196866, 0, .087131381)
			CFrameMon = CFrame["new"](5569.80518, 38.5269432, 3849.01196, .896460414, 3.98027495e-08, .443124533, -1.34262139e-08, 1, -6.26611296e-08, -0.443124533, 5.02237434e-08, .896460414)
			if SelectMonster == "Galley Pirate" then
			else
				Next_Level_X = 650
			end
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 650 or SelectMonster == "Galley Captain" then
			if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 675 then
				SelectBoss_P = "Cyborg"
			end
			Ms = "Galley Captain"
			NameQuest = "FountainQuest"
			QuestLv = 2
			NameMon = "Galley Captain"
			CFrameQ = CFrame["new"](5259.81982, 37.3500175, 4050.0293, .087131381, 0, .996196866, 0, 1, 0, -0.996196866, 0, .087131381)
			CFrameMon = CFrame["new"](5782.90186, 94.5326462, 4716.78174, .361808896, -1.24757526e-06, -0.932252586, 2.16989656e-06, 1, -4.96097414e-07, .932252586, -1.84339774e-06, .361808896)
			SelectMonster = "Galley Pirate"
			Next_Level_X = 9999
		end
	end
	if New_World then
		if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 700 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 724 or SelectMonster == "Raider" then
			Ms = "Raider"
			NameQuest = "Area1Quest"
			QuestLv = 1
			NameMon = "Raider"
			CFrameQ = CFrame["new"](-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, .974368095, 0, -0.22495985)
			CFrameMon = CFrame["new"](-737.026123, 10.1748352, 2392.57959, .272128761, 0, -0.962260842, 0, 1, 0, .962260842, 0, .272128761)
			if SelectMonster == "Raider" then
			else
				Next_Level_X = 725
			end
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 725 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 774 or SelectMonster == "Mercenary" then
			if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 750 then
				SelectBoss_P = "Diamond"
			end
			Ms = "Mercenary"
			NameQuest = "Area1Quest"
			QuestLv = 2
			NameMon = "Mercenary"
			CFrameQ = CFrame["new"](-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, .974368095, 0, -0.22495985)
			CFrameMon = CFrame["new"](-1022.21271, 72.9855194, 1891.39148, -0.990782857, 0, -0.135460541, 0, 1, 0, .135460541, 0, -0.990782857)
			if SelectMonster == "Mercenary" then
			else
				Next_Level_X = 775
			end
			SelectMonster = "Raider"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 775 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 799 or SelectMonster == "Swan Pirate" then
			Ms = "Swan Pirate"
			NameQuest = "Area2Quest"
			QuestLv = 1
			NameMon = "Swan Pirate"
			CFrameQ = CFrame["new"](638.43811, 71.769989, 918.282898, .139203906, 0, .99026376, 0, 1, 0, -0.99026376, 0, .139203906)
			CFrameMon = CFrame["new"](976.467651, 111.174057, 1229.1084, .00852567982, -4.73897828e-08, -0.999963999, 1.12251888e-08, 1, -4.7295778e-08, .999963999, -1.08215579e-08, .00852567982)
			if SelectMonster == "Swan Pirate" then
			else
				Next_Level_X = 800
			end
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 800 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 874 or SelectMonster == "Factory Staff" then
			Ms = "Factory Staff"
			NameQuest = "Area2Quest"
			QuestLv = 2
			NameMon = "Factory Staff"
			CFrameQ = CFrame["new"](638.43811, 71.769989, 918.282898, .139203906, 0, .99026376, 0, 1, 0, -0.99026376, 0, .139203906)
			CFrameMon = CFrame["new"](336.74585, 73.1620483, -224.129272, .993632793, 3.40154607e-08, .112668738, -3.87658332e-08, 1, 3.99718729e-08, -0.112668738, -4.40850592e-08, .993632793)
			if SelectMonster == "Factory Staff" then
			else
				Next_Level_X = 875
			end
			if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 850 then
				SelectBoss_P = "Jeremy"
			end
			SelectMonster = "Swan Pirate"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 875 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 899 or SelectMonster == "Marine Lieutenant" then
			Ms = "Marine Lieutenant"
			NameQuest = "MarineQuest3"
			QuestLv = 1
			NameMon = "Marine Lieutenant"
			CFrameQ = CFrame["new"](-2440.79639, 71.7140732, -3216.06812, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268)
			CFrameMon = CFrame["new"](-2842.69922, 72.9919434, -2901.90479, -0.762281299, 0, -0.64724648, 0, 1.00000012, 0, .64724648, 0, -0.762281299)
			if SelectMonster == "Marine Lieutenant" then
			else
				Next_Level_X = 900
			end
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 900 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 949 or SelectMonster == "Marine Captain" then
			Ms = "Marine Captain"
			NameQuest = "MarineQuest3"
			QuestLv = 2
			NameMon = "Marine Captain"
			CFrameQ = CFrame["new"](-2440.79639, 71.7140732, -3216.06812, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268)
			CFrameMon = CFrame["new"](-1814.70313, 72.9919434, -3208.86621, -0.900422215, 7.93464423e-08, -0.435017526, 3.68856199e-08, 1, 1.06050372e-07, .435017526, 7.94441988e-08, -0.900422215)
			if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 925 then
				SelectBoss_P = "Fajita"
			end
			if SelectMonster == "Marine Captain" then
			else
				Next_Level_X = 950
			end
			SelectMonster = "Marine Lieutenant"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 950 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 974 or SelectMonster == "Zombie" then
			Ms = "Zombie"
			NameQuest = "ZombieQuest"
			QuestLv = 1
			NameMon = "Zombie"
			CFrameQ = CFrame["new"](-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, .95628953, 0, -0.29242146)
			CFrameMon = CFrame["new"](-5649.23438, 126.0578, -737.773743, .355238914, -8.10359282e-08, .934775114, 1.65461245e-08, 1, 8.04023372e-08, -0.934775114, -1.3095117e-08, .355238914)
			if SelectMonster == "Zombie" then
			else
				Next_Level_X = 975
			end
			Bypass_TP_Dis = true
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 975 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 999 or SelectMonster == "Vampire" then
			Ms = "Vampire"
			NameQuest = "ZombieQuest"
			QuestLv = 2
			NameMon = "Vampire"
			CFrameQ = CFrame["new"](-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, .95628953, 0, -0.29242146)
			CFrameMon = CFrame["new"](-6030.32031, .4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, .515373945, 8.68467822e-08, -0.856965423)
			if SelectMonster == "Vampire" then
			else
				Next_Level_X = 1000
			end
			Bypass_TP_Dis = true
			SelectMonster = "Zombie"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 1000 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1049 or SelectMonster == "Snow Trooper" then
			Ms = "Snow Trooper"
			NameQuest = "SnowMountainQuest"
			QuestLv = 1
			NameMon = "Snow Trooper"
			CFrameQ = CFrame["new"](609.858826, 400.119904, -5372.25928, -0.374604106, 0, .92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
			CFrameMon = CFrame["new"](621.003418, 391.361053, -5335.43604, .481644779, 0, .876366913, 0, 1, 0, -0.876366913, 0, .481644779)
			if SelectMonster == "Snow Trooper" then
			else
				Next_Level_X = 1050
			end
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 1050 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1099 or SelectMonster == "Winter Warrior" then
			Ms = "Winter Warrior"
			NameQuest = "SnowMountainQuest"
			QuestLv = 2
			NameMon = "Winter Warrior"
			CFrameQ = CFrame["new"](609.858826, 400.119904, -5372.25928, -0.374604106, 0, .92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
			CFrameMon = CFrame["new"](1295.62683, 429.447784, -5087.04492, -0.698032081, -8.28980049e-08, -0.71606636, -1.98835952e-08, 1, -9.63858184e-08, .71606636, -5.30424877e-08, -0.698032081)
			if SelectMonster == "Winter Warrior" then
			else
				Next_Level_X = 1100
			end
			SelectMonster = "Snow Trooper"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 1100 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1124 or SelectMonster == "Lab Subordinate" then
			Ms = "Lab Subordinate"
			NameQuest = "IceSideQuest"
			QuestLv = 1
			NameMon = "Lab Subordinate"
			CFrameQ = CFrame["new"](-6064.06885, 15.2422857, -4902.97852, .453972578, 0, -0.891015649, 0, 1, 0, .891015649, 0, .453972578)
			CFrameMon = CFrame["new"](-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, .822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
			if SelectMonster == "Lab Subordinate" then
			else
				Next_Level_X = 1125
			end
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 1125 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1174 or SelectMonster == "Horned Warrior" then
			if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1150 then
				SelectBoss_P = "Smoke Admiral"
			end
			Ms = "Horned Warrior"
			NameQuest = "IceSideQuest"
			QuestLv = 2
			NameMon = "Horned Warrior"
			CFrameQ = CFrame["new"](-6064.06885, 15.2422857, -4902.97852, .453972578, 0, -0.891015649, 0, 1, 0, .891015649, 0, .453972578)
			CFrameMon = CFrame["new"](-6401.27979, 15.9775667, -5948.24316, .388303697, 0, -0.921531856, 0, 1, 0, .921531856, 0, .388303697)
			if SelectMonster == "Horned Warrior" then
			else
				Next_Level_X = 1175
			end
			SelectMonster = "Lab Subordinate"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 1175 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1199 or SelectMonster == "Magma Ninja" then
			Ms = "Magma Ninja"
			NameQuest = "FireSideQuest"
			QuestLv = 1
			NameMon = "Magma Ninja"
			CFrameQ = CFrame["new"](-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
			CFrameMon = CFrame["new"](-5466.06445, 57.6952019, -5837.42822, -0.988835871, 0, -0.149006829, 0, 1, 0, .149006829, 0, -0.988835871)
			if SelectMonster == "Magma Ninja" then
			else
				Next_Level_X = 1200
			end
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 1200 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1249 or SelectMonster == "Lava Pirate" then
			Ms = "Lava Pirate"
			NameQuest = "FireSideQuest"
			QuestLv = 2
			NameMon = "Lava Pirate"
			CFrameQ = CFrame["new"](-5431.09473, 15.9868021, -5296.53223, .831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, .555080295, 2.68240168e-08, .831796765)
			CFrameMon = CFrame["new"](-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, .98044765, 0, 1.00000012, 0, -0.98044765, 0, -0.196780294)
			if SelectMonster == "Lava Pirate" then
			else
				Next_Level_X = 1250
			end
			SelectMonster = "Magma Ninja"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 1250 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1274 or SelectMonster == "Ship Deckhand" then
			Ms = "Ship Deckhand"
			NameQuest = "ShipQuest1"
			QuestLv = 1
			NameMon = "Ship Deckhand"
			CFrameQ = CFrame["new"](1037.80127, 125.092171, 32911.6016, -0.244533166, 0, -0.969640911, 0, 1.00000012, 0, .96964103, 0, -0.244533136)
			CFrameMon = CFrame["new"](1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, .0532564968, -1.71604082e-08, -0.998580813)
			if SelectMonster == "Ship Deckhand" then
			else
				Next_Level_X = 1275
			end
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 1275 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1299 or SelectMonster == "Ship Engineer" then
			Ms = "Ship Engineer"
			NameQuest = "ShipQuest1"
			QuestLv = 2
			NameMon = "Ship Engineer"
			CFrameQ = CFrame["new"](1037.80127, 125.092171, 32911.6016, -0.244533166, 0, -0.969640911, 0, 1.00000012, 0, .96964103, 0, -0.244533136)
			CFrameMon = CFrame["new"](921.30249023438, 125.400390625, 32937.34375)
			if SelectMonster == "Ship Engineer" then
			else
				Next_Level_X = 1300
			end
			SelectMonster = "Ship Deckhand"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 1300 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1324 or SelectMonster == "Ship Steward" then
			Ms = "Ship Steward"
			NameQuest = "ShipQuest2"
			QuestLv = 1
			NameMon = "Ship Steward"
			CFrameQ = CFrame["new"](968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, .493826836, -2.43357912e-09, -0.869560242)
			CFrameMon = CFrame["new"](917.96057128906, 136.89932250977, 33343.4140625)
			if SelectMonster == "Ship Steward" then
			else
				Next_Level_X = 1325
			end
			SelectMonster = "Ship Deckhand"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 1325 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1349 or SelectMonster == "Ship Officer" then
			Ms = "Ship Officer"
			NameQuest = "ShipQuest2"
			QuestLv = 2
			NameMon = "Ship Officer"
			CFrameQ = CFrame["new"](968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, .493826836, -2.43357912e-09, -0.869560242)
			CFrameMon = CFrame["new"](944.44964599609, 181.40081787109, 33278.9453125)
			if SelectMonster == "Ship Officer" then
			else
				Next_Level_X = 1350
			end
			SelectMonster = "Ship Steward"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 1350 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1374 or SelectMonster == "Arctic Warrior" then
			Ms = "Arctic Warrior"
			NameQuest = "FrostQuest"
			QuestLv = 1
			NameMon = "Arctic Warrior"
			CFrameQ = CFrame["new"](5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, .358349502, 0, -0.933587909)
			CFrameMon = CFrame["new"](5878.23486, 81.3886948, -6136.35596, -0.451037169, 2.3908234e-07, .892505825, -1.08168464e-07, 1, -3.22542007e-07, -0.892505825, -2.4201924e-07, -0.451037169)
			if SelectMonster == "Arctic Warrior" then
			else
				Next_Level_X = 1375
			end
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 1375 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1424 or SelectMonster == "Snow Lurker" then
			if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1400 then
				SelectBoss_P = "Awakened Ice Admiral"
			end
			Ms = "Snow Lurker"
			NameQuest = "FrostQuest"
			QuestLv = 2
			NameMon = "Snow Lurker"
			CFrameQ = CFrame["new"](5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, .358349502, 0, -0.933587909)
			CFrameMon = CFrame["new"](5513.36865, 60.546711, -6809.94971, -0.958693981, -1.65617333e-08, .284439981, -4.07668654e-09, 1, 4.44854642e-08, -0.284439981, 4.14883701e-08, -0.958693981)
			if SelectMonster == "Snow Lurker" then
			else
				Next_Level_X = 1450
			end
			SelectMonster = "Arctic Warrior"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 1425 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1449 or SelectMonster == "Sea Soldier" then
			Ms = "Sea Soldier"
			NameQuest = "ForgottenQuest"
			QuestLv = 1
			NameMon = "Sea Soldier"
			CFrameQ = CFrame["new"](-3054.44458, 235.544281, -10142.8193, .990270376, 0, -0.13915664, 0, 1, 0, .13915664, 0, .990270376)
			CFrameMon = CFrame["new"](-3115.78223, 63.8785706, -9808.38574, -0.913427353, 3.11199457e-08, .407000452, 7.79564235e-09, 1, -5.89660658e-08, -0.407000452, -5.06883708e-08, -0.913427353)
			if SelectMonster == "Sea Soldier" then
			else
				Next_Level_X = 1450
			end
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1450 or SelectMonster == "Water Fighter" then
			if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1475 then
				SelectBoss_P = "Tide Keeper"
			end
			Ms = "Water Fighter"
			NameQuest = "ForgottenQuest"
			QuestLv = 2
			NameMon = "Water Fighter"
			CFrameQ = CFrame["new"](-3054.44458, 235.544281, -10142.8193, .990270376, 0, -0.13915664, 0, 1, 0, .13915664, 0, .990270376)
			CFrameMon = CFrame["new"](-3212.99683, 263.809296, -10551.8799, .742111444, -5.59139615e-08, -0.670276582, 1.69155214e-08, 1, -6.46908234e-08, .670276582, 3.66697037e-08, .742111444)
			if SelectMonster == "Water Fighter" then
			else
				Next_Level_X = 9999
			end
			SelectMonster = "Sea Soldier"
		end
	end
	if Three_World then
		if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1500 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1524 or SelectMonster == "Pirate Millionaire" then
			Ms = "Pirate Millionaire"
			NameQuest = "PiratePortQuest"
			QuestLv = 1
			NameMon = "Pirate Millionaire"
			CFrameQ = CFrame["new"](-290.074677, 42.9034653, 5581.58984, .965929627, 0, -0.258804798, 0, 1, 0, .258804798, 0, .965929627)
			CFrameMon = CFrame["new"](81.164993286133, 43.755737304688, 5724.7021484375)
			if SelectMonster == "Pirate Millionaire" then
			else
				Next_Level_X = 1525
			end
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1525 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1574 or SelectMonster == "Pistol Billionaire" then
			if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1550 then
				SelectBoss_P = "Stone"
			end
			Ms = "Pistol Billionaire"
			NameQuest = "PiratePortQuest"
			QuestLv = 2
			NameMon = "Pistol Billionaire"
			CFrameQ = CFrame["new"](-290.074677, 42.9034653, 5581.58984, .965929627, 0, -0.258804798, 0, 1, 0, .258804798, 0, .965929627)
			CFrameMon = CFrame["new"](81.164993286133, 43.755737304688, 5724.7021484375)
			if SelectMonster == "Pistol Billionaire" then
			else
				Next_Level_X = 1575
			end
			SelectMonster = "Pirate Millionaire"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1575 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1599 or SelectMonster == "Dragon Crew Warrior" then
			Ms = "Dragon Crew Warrior"
			NameQuest = "AmazonQuest"
			QuestLv = 1
			NameMon = "Dragon Crew Warrior"
			CFrameQ = CFrame["new"](5832.83594, 51.6806107, -1101.51563, .898790359, 0, -0.438378751, 0, 1, 0, .438378751, 0, .898790359)
			CFrameMon = CFrame["new"](6241.9951171875, 51.522083282471, -1243.9771728516)
			if SelectMonster == "Dragon Crew Warrior" then
			else
				Next_Level_X = 1600
			end
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1600 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1624 or SelectMonster == "Dragon Crew Archer" then
			Ms = "Dragon Crew Archer"
			NameQuest = "AmazonQuest"
			QuestLv = 2
			NameMon = "Dragon Crew Archer"
			CFrameQ = CFrame["new"](5832.83594, 51.6806107, -1101.51563, .898790359, 0, -0.438378751, 0, 1, 0, .438378751, 0, .898790359)
			CFrameMon = CFrame["new"](6488.9155273438, 383.38375854492, -110.66246032715)
			if SelectMonster == "Dragon Crew Archer" then
			else
				Next_Level_X = 1625
			end
			SelectMonster = "Dragon Crew Warrior"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1625 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1649 or SelectMonster == "Female Islander" then
			Ms = "Female Islander"
			NameQuest = "AmazonQuest2"
			QuestLv = 1
			NameMon = "Female Islander"
			CFrameQ = CFrame["new"](5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, 0, -1, 0, 0)
			CFrameMon = CFrame["new"](4770.4990234375, 758.95520019531, 1069.8680419922)
			if SelectMonster == "Female Islander" then
			else
				Next_Level_X = 1650
			end
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1650 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1699 or SelectMonster == "Giant Islander" then
			Ms = "Giant Islander"
			NameQuest = "AmazonQuest2"
			QuestLv = 2
			NameMon = "Giant Islander"
			CFrameQ = CFrame["new"](5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, 0, -1, 0, 0)
			CFrameMon = CFrame["new"](4530.3540039063, 656.75695800781, -131.60952758789)
			if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1675 then
				SelectBoss_P = "Island Empress"
			end
			if SelectMonster == "Giant Islander" then
			else
				Next_Level_X = 1700
			end
			SelectMonster = "Female Islander"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1700 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1774 or SelectMonster == "Marine Commodore" then
			Ms = "Marine Commodore"
			NameQuest = "MarineTreeIsland"
			QuestLv = 1
			NameMon = "Marine Commodore"
			CFrameQ = CFrame["new"](2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, .258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
			CFrameMon = CFrame["new"](2490.0844726563, 190.4232635498, -7160.0502929688)
			if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1750 then
				SelectBoss_P = "Kilo Admiral"
			end
			if SelectMonster == "Marine Commodore" then
			else
				Next_Level_X = 1775
			end
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1775 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1799 or SelectMonster == "Fishman Raider" then
			Ms = "Fishman Raider"
			NameQuest = "DeepForestIsland3"
			QuestLv = 1
			NameMon = "Fishman Raider"
			CFrameQ = CFrame["new"](-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
			CFrameMon = CFrame["new"](-10322.400390625, 390.94473266602, -8580.0908203125)
			if SelectMonster == "Fishman Raider" then
			else
				Next_Level_X = 1800
			end
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1800 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1824 or SelectMonster == "Fishman Captain" then
			Ms = "Fishman Captain"
			NameQuest = "DeepForestIsland3"
			QuestLv = 2
			NameMon = "Fishman Captain"
			CFrameQ = CFrame["new"](-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
			CFrameMon = CFrame["new"](-11194.541992188, 442.02795410156, -8608.806640625)
			if SelectMonster == "Fishman Captain" then
			else
				Next_Level_X = 1825
			end
			SelectMonster = "Fishman Raider"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1825 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1849 or SelectMonster == "Forest Pirate" then
			Ms = "Forest Pirate"
			NameQuest = "DeepForestIsland"
			QuestLv = 1
			NameMon = "Forest Pirate"
			CFrameQ = CFrame["new"](-13234.04, 331.488495, -7625.40137, .707134247, 0, -0.707079291, 0, 1, 0, .707079291, 0, .707134247)
			CFrameMon = CFrame["new"](-13225.809570313, 428.19387817383, -7753.1245117188)
			if SelectMonster == "Forest Pirate" then
			else
				Next_Level_X = 1850
			end
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1850 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1899 or SelectMonster == "Mythological Pirate" then
			Ms = "Mythological Pirate"
			NameQuest = "DeepForestIsland"
			QuestLv = 2
			NameMon = "Mythological Pirate"
			CFrameQ = CFrame["new"](-13234.04, 331.488495, -7625.40137, .707134247, 0, -0.707079291, 0, 1, 0, .707079291, 0, .707134247)
			CFrameMon = CFrame["new"](-13869.172851563, 564.95251464844, -7084.4135742188)
			if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1875 then
				SelectBoss_P = "Captain Elephant"
			end
			if SelectMonster == "Mythological Pirate" then
			else
				Next_Level_X = 1900
			end
			SelectMonster = "Forest Pirate"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1900 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1924 or SelectMonster == "Jungle Pirate" then
			Ms = "Jungle Pirate"
			NameQuest = "DeepForestIsland2"
			QuestLv = 1
			NameMon = "Jungle Pirate"
			CFrameQ = CFrame["new"](-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, .996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
			CFrameMon = CFrame["new"](-11982.221679688, 376.32522583008, -10451.415039063)
			if SelectMonster == "Jungle Pirate" then
			else
				Next_Level_X = 1925
			end
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1925 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1974 or SelectMonster == "Musketeer Pirate" then
			Ms = "Musketeer Pirate"
			NameQuest = "DeepForestIsland2"
			QuestLv = 2
			NameMon = "Musketeer Pirate"
			CFrameQ = CFrame["new"](-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, .996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
			CFrameMon = CFrame["new"](-13282.3046875, 496.23684692383, -9565.150390625)
			if SelectMonster == "Musketeer Pirate" then
			else
				Next_Level_X = 1975
			end
			if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1950 then
				SelectBoss_P = "Beautiful Pirate"
			end
			SelectMonster = "Jungle Pirate"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1975 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1999 or SelectMonster == "Reborn Skeleton" then
			Ms = "Reborn Skeleton"
			NameQuest = "HauntedQuest1"
			QuestLv = 1
			NameMon = "Reborn Skeleton"
			CFrameQ = CFrame["new"](-9480.8271484375, 142.13066101074, 5566.0712890625)
			CFrameMon = CFrame["new"](-8817.880859375, 191.16761779785, 6298.6557617188)
			if SelectMonster == "Reborn Skeleton" then
			elseif not LevelMax then
				Next_Level_X = 2000
			end
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2000 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 2024 or SelectMonster == "Living Zombie" then
			Ms = "Living Zombie"
			NameQuest = "HauntedQuest1"
			QuestLv = 2
			NameMon = "Living Zombie"
			CFrameQ = CFrame["new"](-9480.8271484375, 142.13066101074, 5566.0712890625)
			CFrameMon = CFrame["new"](-10125.234375, 183.94705200195, 6242.013671875)
			if SelectMonster == "Living Zombie" then
			elseif not LevelMax then
				Next_Level_X = 2025
			end
			SelectMonster = "Reborn Skeleton"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2025 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 2049 or SelectMonster == "Demonic Soul" then
			Ms = "Demonic Soul"
			NameQuest = "HauntedQuest2"
			QuestLv = 1
			NameMon = "Demonic"
			CFrameQ = CFrame["new"](-9516.9931640625, 178.00651550293, 6078.4653320313)
			CFrameMon = CFrame["new"](-9712.03125, 204.69589233398, 6193.322265625)
			if SelectMonster == "Demonic Soul" then
			else
				Next_Level_X = 2050
			end
			SelectMonster = "Living Zombie"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2050 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 2074 or SelectMonster == "Posessed Mummy" then
			Ms = "Posessed Mummy"
			NameQuest = "HauntedQuest2"
			QuestLv = 2
			NameMon = "Posessed Mummy"
			CFrameQ = CFrame["new"](-9516.9931640625, 178.00651550293, 6078.4653320313)
			CFrameMon = CFrame["new"](-9545.7763671875, 69.619895935059, 6339.5615234375)
			if SelectMonster == "Posessed Mummy" then
			else
				Next_Level_X = 2075
			end
			SelectMonster = "Demonic Soul"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2075 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 2099 or SelectMonster == "Peanut Scout" then
			Ms = "Peanut Scout"
			NameQuest = "NutsIslandQuest"
			QuestLv = 1
			NameMon = "Peanut Scout"
			CFrameQ = CFrame["new"](-2104.17163, 38.1299706, -10194.418, .758814394, -1.38604395e-09, .651306927, 2.85280208e-08, 1, -3.1108879e-08, -0.651306927, 4.21863646e-08, .758814394)
			CFrameMon = CFrame["new"](-2098.07544, 192.611862, -10248.8867, .983392298, -9.57031787e-08, .181492642, 8.7276355e-08, 1, 5.44169616e-08, -0.181492642, -3.76732068e-08, .983392298)
			if SelectMonster == "Peanut Scout" then
			else
				Next_Level_X = 2100
			end
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2100 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 2124 or SelectMonster == "Peanut President" then
			Ms = "Peanut President"
			NameQuest = "NutsIslandQuest"
			QuestLv = 2
			NameMon = "Peanut President"
			CFrameQ = CFrame["new"](-2104.17163, 38.1299706, -10194.418, .758814394, -1.38604395e-09, .651306927, 2.85280208e-08, 1, -3.1108879e-08, -0.651306927, 4.21863646e-08, .758814394)
			CFrameMon = CFrame["new"](-1876.95959, 192.610947, -10542.2939, .0553516336, -2.83836812e-08, .998466909, -6.89634405e-10, 1, 2.84654931e-08, -0.998466909, -2.26418861e-09, .0553516336)
			SelectMonster = "Peanut Scout"
			if SelectMonster == "Peanut President" then
			else
				Next_Level_X = 2125
			end
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2125 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 2149 or SelectMonster == "Ice Cream Chef" then
			Ms = "Ice Cream Chef"
			NameQuest = "IceCreamIslandQuest"
			QuestLv = 1
			NameMon = "Ice Cream Chef"
			CFrameQ = CFrame["new"](-820.404358, 65.8453293, -10965.5654, .822534859, 5.24448502e-08, -0.568714678, -2.08336317e-08, 1, 6.20846663e-08, .568714678, -3.92184099e-08, .822534859)
			CFrameMon = CFrame["new"](-821.614075, 208.39537, -10990.7617, -0.870096624, 3.18909272e-08, .492881238, -1.8357893e-08, 1, -9.71107568e-08, -0.492881238, -9.35439957e-08, -0.870096624)
			if SelectMonster == "Ice Cream Chef" then
			else
				Next_Level_X = 2150
			end
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2150 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 2199 or SelectMonster == "Ice Cream Commander" then
			Ms = "Ice Cream Commander"
			NameQuest = "IceCreamIslandQuest"
			QuestLv = 2
			NameMon = "Ice Cream Commander"
			CFrameQ = CFrame["new"](-819.376526, 67.4634171, -10967.2832)
			CFrameMon = CFrame["new"](-610.11669921875, 208.26904296875, -11253.686523438)
			if SelectMonster == "Ice Cream Commander" then
			else
				Next_Level_X = 2200
			end
			if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2175 then
				SelectBoss_P = "Cake Queen"
			end
			SelectMonster = "Ice Cream Chef"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2200 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 2224 or SelectMonster == "Cookie Crafter" then
			Ms = "Cookie Crafter"
			NameQuest = "CakeQuest1"
			QuestLv = 1
			NameMon = "Cookie Crafter"
			CFrameQ = CFrame["new"](-2020.6068115234, 37.82400894165, -12027.80859375)
			CFrameMon = CFrame["new"](-2286.6843261719, 146.56562805176, -12226.881835938)
			if SelectMonster == "Cookie Crafter" then
			elseif not LevelMax then
				Next_Level_X = 2225
			end
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2225 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 2249 or SelectMonster == "Cake Guard" then
			Ms = "Cake Guard"
			NameQuest = "CakeQuest1"
			QuestLv = 2
			NameMon = "Cake Guard"
			CFrameQ = CFrame["new"](-2020.6068115234, 37.82400894165, -12027.80859375)
			CFrameMon = CFrame["new"](-1817.9747314453, 209.56327819824, -12288.922851562)
			SelectMonster = "Cookie Crafter"
			if SelectMonster == "Cake Guard" then
			elseif not LevelMax then
				Next_Level_X = 2250
			end
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2250 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] < 2300 or SelectMonster == "Baking Staff" then
			Ms = "Baking Staff"
			NameQuest = "CakeQuest2"
			QuestLv = 1
			NameMon = "Baking Staff"
			CFrameQ = CFrame["new"](-1928.31763, 37.7296638, -12840.626)
			CFrameMon = CFrame["new"](-1818.3479003906, 93.412757873535, -12887.66015625)
			if SelectMonster == "Baking Staff" then
			elseif not LevelMax then
				Next_Level_X = 2300
			end
			SelectMonster = "Cookie Crafter"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2300 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] < 2325 or SelectMonster == "Cocoa Warrior" then
			Ms = "Cocoa Warrior"
			NameQuest = "ChocQuest1"
			QuestLv = 1
			NameMon = "Cocoa Warrior"
			CFrameQ = CFrame["new"](230.19186401367, 24.734258651733, -12202.657226562)
			CFrameMon = CFrame["new"](24.617475509644, 24.734342575073, -12227.267578125)
			if SelectMonster == "Cocoa Warrior" then
			else
				Next_Level_X = 2325
			end
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2325 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] < 2350 or SelectMonster == L_1_[3]({
			"Chocolate Bar Battle",
			"r"
		}) then
			Ms = L_1_[3]({
				"Chocolate Bar Battle",
				"r"
			})
			NameQuest = "ChocQuest1"
			QuestLv = 2
			NameMon = L_1_[3]({
				"Chocolate Bar Battle";
				"r"
			})
			CFrameQ = CFrame["new"](230.19186401367, 24.734258651733, -12202.657226562)
			CFrameMon = CFrame["new"](658.22302246094, 24.734258651733, -12541.991210938)
			if SelectMonster == L_1_[3]({
				"Chocolate Bar Battle";
				"r"
			}) then
			else
				Next_Level_X = 2350
			end
			SelectMonster = "Cocoa Warrior"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2350 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] < 2375 or SelectMonster == "Sweet Thief" then
			Ms = "Sweet Thief"
			NameQuest = "ChocQuest2"
			QuestLv = 1
			NameMon = "Sweet Thief"
			CFrameQ = CFrame["new"](149.14392089844, 24.793828964233, -12775.41015625)
			CFrameMon = CFrame["new"](51.611843109131, 24.793809890747, -12574.873046875)
			if SelectMonster == "Sweet Thief" then
			else
				Next_Level_X = 2375
			end
			SelectMonster = L_1_[3]({
				"Chocolate Bar Battle",
				"r"
			})
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2375 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] < 2400 or SelectMonster == "Candy Rebel" then
			Ms = "Candy Rebel"
			NameQuest = "ChocQuest2"
			QuestLv = 2
			NameMon = "Candy Rebel"
			CFrameQ = CFrame["new"](149.14392089844, 24.793828964233, -12775.41015625)
			CFrameMon = CFrame["new"](28.34560585022, 24.793802261353, -12949.502929688)
			if SelectMonster == "Candy Rebel" then
			else
				Next_Level_X = 2400
			end
			SelectMonster = "Sweet Thief"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2400 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] < 2425 or SelectMonster == "Candy Pirate" then
			Ms = "Candy Pirate"
			NameQuest = "CandyQuest1"
			QuestLv = 1
			NameMon = "Candy Pirate"
			CFrameQ = CFrame["new"](-1146.8081054688, 16.10725402832, -14444.353515625)
			CFrameMon = CFrame["new"](-1333.9425048828, 16.907636642456, -14424.844726562)
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2425 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] < 2550 or SelectMonster == "Snow Demon" then
			Ms = "Snow Demon"
			NameQuest = "CandyQuest1"
			QuestLv = 2
			NameMon = "Snow Demon"
			CFrameQ = CFrame["new"](-1146.8081054688, 16.10725402832, -14444.353515625)
			CFrameMon = CFrame["new"](-963.02130126953, 16.107183456421, -14289.576171875)
			if SelectMonster == "Candy Pirate" then
			else
				Next_Level_X = 2551
			end
			SelectMonster = "Candy Pirate"
		elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2550 then
			local L_29_ = {}
			Ms = "Baking Staff"
			NameQuest = "CakeQuest2"
			QuestLv = 1
			NameMon = "Baking Staff"
			CFrameQ = CFrame["new"](-1928.31763, 37.7296638, -12840.626)
			CFrameMon = CFrame["new"](-1818.3479003906, 93.412757873535, -12887.66015625)
			SelectMonster = "Cookie Crafter"
			L_29_[1] = tostring(string["match"](tostring(game["ReplicatedStorage"]["Remotes"]["CommF_"]:InvokeServer("CakePrinceSpawner")), "%d+"))
			if L_29_[1] == "nil" or L_29_[1] == nil then
				(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("CakePrinceSpawner", true)
				Cake_Prince_S:Set(L_1_[3]({
					" Cake Prince : Boss ",
					"Spawn"
				}))
			else
				Cake_Prince_S:Set(" Cake Prince : " .. L_29_[1])
			end
		end
	end
end
L_1_[8] = function()
	if Old_World and (L_1_[22]["Value"] >= 1 and L_1_[22]["Value"] <= 9) then
		Enemy = "Bandit"
		NameEnemy = "Bandit"
		QuestName = "BanditQuest1"
		QuestNumber = 1
		QuestPos = CFrame["new"](1059.58728, 16.412075, 1549.54443, -0.963007867, 4.12775627e-08, .269473195, 2.39519959e-08, 1, -6.75822349e-08, -0.269473195, -5.86278048e-08, -0.963007867)
		EnemyPos = CFrame["new"](1175.00793, 43.7162018, 1680.39185, .940636754, 1.67726082e-08, .339414984, -3.54472718e-08, 1, 4.88204712e-08, -0.339414984, -5.79536632e-08, .940636754)
	elseif Old_World and (L_1_[22]["Value"] >= 10 and L_1_[22]["Value"] <= 14) then
		Enemy = "Monkey"
		NameEnemy = "Monkey"
		QuestName = "JungleQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](-1598.92285, 36.9012909, 148.748718, -0.969585121, -1.11576668e-07, -0.244754329, -1.2733129e-07, 1, 4.8546088e-08, .244754329, 7.823445e-08, -0.969585121)
		EnemyPos = CFrame["new"](-1660.75586, 40.1013031, 320.152313, .82476908, -4.88485696e-08, -0.565469682, 5.81200084e-08, 1, -1.61455704e-09, .565469682, -3.15334674e-08, .82476908)
	elseif Old_World and (L_1_[22]["Value"] >= 15 and L_1_[22]["Value"] <= 29) then
		Enemy = "Gorilla"
		NameEnemy = "Gorilla"
		QuestName = "JungleQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](-1598.92285, 36.9012909, 148.748718, -0.969585121, -1.11576668e-07, -0.244754329, -1.2733129e-07, 1, 4.8546088e-08, .244754329, 7.823445e-08, -0.969585121)
		EnemyPos = CFrame["new"](-1196.64343, 7.74201918, -445.539734, -0.919930279, -4.16423696e-08, .392081946, -1.71233108e-08, 1, 6.60324133e-08, -0.392081946, 5.40314744e-08, -0.919930279)
		if Old_World and (L_1_[22]["Value"] >= 20 and L_1_[22]["Value"] <= 29) then
			Name_Boss = "The Gorilla King"
			QuestName_Boss = "JungleQuest"
			QuestNumber_Boss = 3
		end
	elseif Old_World and (L_1_[22]["Value"] >= 30 and L_1_[22]["Value"] <= 39) then
		Enemy = "Pirate"
		NameEnemy = "Pirate"
		QuestName = "BuggyQuest1"
		QuestNumber = 1
		QuestPos = CFrame["new"](-1139.5631103516, 4.7520513534546, 3830.38671875)
		EnemyPos = CFrame["new"](-1045.9431152344, 64.419502258301, 3930.3020019531)
	elseif Old_World and (L_1_[22]["Value"] >= 40 and L_1_[22]["Value"] <= 59) then
		Enemy = "Brute"
		NameEnemy = "Brute"
		QuestName = "BuggyQuest1"
		QuestNumber = 2
		QuestPos = CFrame["new"](-1139.5631103516, 4.7520513534546, 3830.38671875)
		EnemyPos = CFrame["new"](-1150.2763671875, 130.60118103027, 4164.9345703125)
		if Old_World and (L_1_[22]["Value"] >= 55 and L_1_[22]["Value"] <= 59) then
			Name_Boss = "Bobby"
			QuestName_Boss = "BuggyQuest1"
			QuestNumber_Boss = 3
		end
	elseif Old_World and (L_1_[22]["Value"] >= 60 and L_1_[22]["Value"] <= 74) then
		Enemy = "Desert Bandit"
		NameEnemy = "Desert Bandit"
		QuestName = "DesertQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](894.488647, 5.14000702, 4392.43359, .819155693, 0, -0.573571265, 0, 1, 0, .573571265, 0, .819155693)
		EnemyPos = CFrame["new"](935.8798046975, 6.4486746788025, 4481.5859375)
	elseif Old_World and (L_1_[22]["Value"] >= 75 and L_1_[22]["Value"] <= 89) then
		Enemy = "Desert Officer"
		NameEnemy = "Desert Officer"
		QuestName = "DesertQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](894.488647, 5.14000702, 4392.43359, .819155693, 0, -0.573571265, 0, 1, 0, .573571265, 0, .819155693)
		EnemyPos = CFrame["new"](1608.2822265625, 8.6142244338989, 4371.0073242188)
	elseif Old_World and (L_1_[22]["Value"] >= 90 and L_1_[22]["Value"] <= 99) then
		Enemy = "Snow Bandit"
		NameEnemy = "Snow Bandit"
		QuestName = "SnowQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, .939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
		EnemyPos = CFrame["new"](1354.3479003906, 87.272773742676, -1393.9465332031)
	elseif Old_World and (L_1_[22]["Value"] >= 100 and L_1_[22]["Value"] <= 119) then
		Enemy = "Snowman"
		NameEnemy = "Snowman"
		QuestName = "SnowQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, .939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
		EnemyPos = CFrame["new"](1201.6412353516, 144.57958984375, -1550.0670166016)
		if Old_World and (L_1_[22]["Value"] >= 110 and L_1_[22]["Value"] <= 119) then
			Name_Boss = "Yeti"
			QuestName_Boss = "SnowQuest"
			QuestNumber_Boss = 3
		end
	elseif Old_World and (L_1_[22]["Value"] >= 120 and L_1_[22]["Value"] <= 149) then
		Enemy = "Chief Petty Officer"
		NameEnemy = "Chief Petty Officer"
		QuestName = "MarineQuest2"
		QuestNumber = 1
		QuestPos = CFrame["new"](-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		EnemyPos = CFrame["new"](-4710.3598632812, 112.02615356445, 4584.92578125)
		if Old_World and (L_1_[22]["Value"] >= 130 and L_1_[22]["Value"] <= 149) then
			Name_Boss = "Vice Admiral"
			QuestName_Boss = "MarineQuest2"
			QuestNumber_Boss = 2
		end
	elseif Old_World and (L_1_[22]["Value"] >= 150 and L_1_[22]["Value"] <= 174) then
		Enemy = "Sky Bandit"
		NameEnemy = "Sky Bandit"
		QuestName = "SkyQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](-4838.701171875, 717.66931152344, -2617.8647460938)
		EnemyPos = CFrame["new"](-4965.37890625, 357.37414550781, -2848.7023925781)
	elseif Old_World and (L_1_[22]["Value"] >= 175 and L_1_[22]["Value"] <= 189) then
		Enemy = "Dark Master"
		NameEnemy = "Dark Master"
		QuestName = "SkyQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](-4838.701171875, 717.66931152344, -2617.8647460938)
		EnemyPos = CFrame["new"](-5224.05859375, 484.44784545898, -2275.9985351562)
	elseif Old_World and (L_1_[22]["Value"] >= 190 and L_1_[22]["Value"] <= 209) then
		Enemy = "Prisoner"
		NameEnemy = "Prisoner"
		QuestName = "PrisonerQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](5309.6474609375, 1.6542626619339, 477.8815612793)
		EnemyPos = CFrame["new"](5276.5576171875, 87.836639404297, 561.01007080078)
	elseif Old_World and (L_1_[22]["Value"] >= 210 and L_1_[22]["Value"] <= 249) then
		Enemy = "Dangerous Prisoner"
		NameEnemy = "Dangerous Prisoner"
		QuestName = "PrisonerQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](5309.6474609375, 1.6542626619339, 477.8815612793)
		EnemyPos = CFrame["new"](5276.5576171875, 87.836639404297, 561.01007080078)
		if Old_World and (L_1_[22]["Value"] >= 240 and L_1_[22]["Value"] <= 249) then
			Name_Boss = "Swan"
			QuestName_Boss = "ImpelQuest"
			QuestNumber_Boss = 3
		end
	elseif Old_World and (L_1_[22]["Value"] >= 250 and L_1_[22]["Value"] <= 299) then
		Enemy = "Toga Warrior"
		NameEnemy = "Toga Warrior"
		QuestName = "ColosseumQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, .857167721, 0, -0.515037298)
		EnemyPos = CFrame["new"](-1820.21484375, 51.683856964111, -2740.6650390625)
	elseif Old_World and (L_1_[22]["Value"] >= 300 and L_1_[22]["Value"] <= 324) then
		Enemy = "Military Soldier"
		NameEnemy = "Military Soldier"
		QuestName = "MagmaQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, .866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
		EnemyPos = CFrame["new"](-5411.1645507812, 11.081554412842, 8454.29296875)
	elseif Old_World and (L_1_[22]["Value"] >= 325 and L_1_[22]["Value"] <= 374) then
		Enemy = "Military Spy"
		NameEnemy = "Military Spy"
		QuestName = "MagmaQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, .866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
		EnemyPos = CFrame["new"](-5802.8681640625, 86.262413024902, 8828.859375)
		if Old_World and (L_1_[22]["Value"] >= 350 and L_1_[22]["Value"] <= 374) then
			Name_Boss = "Magma Admiral"
			QuestName_Boss = "MagmaQuest"
			QuestNumber_Boss = 3
		end
	elseif Old_World and (L_1_[22]["Value"] >= 375 and L_1_[22]["Value"] <= 399) then
		Enemy = "Fishman Warrior"
		NameEnemy = "Fishman Warrior"
		QuestName = "FishmanQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](61122.65234375, 18.497442245483, 1569.3997802734)
		EnemyPos = CFrame["new"](60878.30078125, 18.482830047607, 1543.7574462891)
		if ((CFrame["new"](61164, 12, 1820))["Position"] - L_1_[5]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 2000 then
			L_1_[5]["Character"]["HumanoidRootPart"]["CFrame"] = CFrame["new"](61164, 12, 1820)
		end
	elseif Old_World and (L_1_[22]["Value"] >= 400 and L_1_[22]["Value"] <= 449) then
		Enemy = "Fishman Commando"
		NameEnemy = "Fishman Commando"
		QuestName = "FishmanQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](61122.65234375, 18.497442245483, 1569.3997802734)
		EnemyPos = CFrame["new"](61922.6328125, 18.482830047607, 1493.9343261719)
		if Old_World and (L_1_[22]["Value"] >= 425 and L_1_[22]["Value"] <= 449) then
			Name_Boss = "Fishman Lord"
			QuestName_Boss = "FishmanQuest"
			QuestNumber_Boss = 3
		end
		if ((CFrame["new"](61164, 12, 1820))["Position"] - L_1_[5]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 2000 then
			L_1_[5]["Character"]["HumanoidRootPart"]["CFrame"] = CFrame["new"](61164, 12, 1820)
		end
	elseif Old_World and (L_1_[22]["Value"] >= 450 and L_1_[22]["Value"] <= 474) then
		Enemy = "God's Guard"
		NameEnemy = "God's Guard"
		QuestName = "SkyExp1Quest"
		QuestNumber = 1
		QuestPos = CFrame["new"](-4721.88867, 843.874695, -1949.96643, .996191859, 0, -0.0871884301, 0, 1, 0, .0871884301, 0, .996191859)
		EnemyPos = CFrame["new"](-4710.04296875, 845.27697753906, -1927.3079833984)
		if ((CFrame["new"](-4721.88867, 843.874695, -1949.96643, .996191859, 0, -0.0871884301, 0, 1, 0, .0871884301, 0, .996191859))["Position"] - L_1_[5]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
			L_1_[7]["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](-4607.82275, 872.54248, -1667.55688))
		end
	elseif Old_World and (L_1_[22]["Value"] >= 475 and L_1_[22]["Value"] <= 524) then
		Enemy = "Shanda"
		NameEnemy = "Shanda"
		QuestName = "SkyExp1Quest"
		QuestNumber = 2
		QuestPos = CFrame["new"](-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, .906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
		EnemyPos = CFrame["new"](-7678.4897460938, 5566.4038085938, -497.21560668945)
	elseif Old_World and (L_1_[22]["Value"] >= 525 and L_1_[22]["Value"] <= 549) then
		Enemy = "Royal Squad"
		NameEnemy = "Royal Squad"
		QuestName = "SkyExp2Quest"
		QuestNumber = 1
		QuestPos = CFrame["new"](-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		EnemyPos = CFrame["new"](-7624.2524414062, 5658.1333007812, -1467.3542480469)
	elseif Old_World and (L_1_[22]["Value"] >= 550 and L_1_[22]["Value"] <= 624) then
		Enemy = "Royal Soldier"
		NameEnemy = "Royal Soldier"
		QuestName = "SkyExp2Quest"
		QuestNumber = 2
		QuestPos = CFrame["new"](-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		EnemyPos = CFrame["new"](-7836.7534179688, 5645.6640625, -1790.6236572266)
		if Old_World and (L_1_[22]["Value"] >= 575 and L_1_[22]["Value"] <= 624) then
			Name_Boss = "Thunder God"
			QuestName_Boss = "SkyExp2Quest"
			QuestNumber_Boss = 3
		end
	elseif Old_World and (L_1_[22]["Value"] >= 625 and L_1_[22]["Value"] <= 649) then
		Enemy = "Galley Pirate"
		NameEnemy = "Galley Pirate"
		QuestName = "FountainQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](5259.81982, 37.3500175, 4050.0293, .087131381, 0, .996196866, 0, 1, 0, -0.996196866, 0, .087131381)
		EnemyPos = CFrame["new"](5551.0219726562, 78.901351928711, 3930.4128417969)
	elseif Old_World and (L_1_[22]["Value"] >= 650 and L_1_[22]["Value"] <= 99999) then
		Enemy = "Galley Captain"
		NameEnemy = "Galley Captain"
		QuestName = "FountainQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](5259.81982, 37.3500175, 4050.0293, .087131381, 0, .996196866, 0, 1, 0, -0.996196866, 0, .087131381)
		EnemyPos = CFrame["new"](5441.9516601562, 42.502059936523, 4950.09375)
		if Old_World and (L_1_[22]["Value"] >= 675 and L_1_[22]["Value"] <= 99999) then
			Name_Boss = "Cyborg"
			QuestName_Boss = "FountainQuest"
			QuestNumber_Boss = 3
		end
	elseif New_World and (L_1_[22]["Value"] >= 700 and L_1_[22]["Value"] <= 724) then
		Enemy = "Raider"
		NameEnemy = "Raider"
		QuestName = "Area1Quest"
		QuestNumber = 1
		QuestPos = CFrame["new"](-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, .974368095, 0, -0.22495985)
		EnemyPos = CFrame["new"](-728.32672119141, 52.779319763184, 2345.7705078125)
	elseif New_World and (L_1_[22]["Value"] >= 725 and L_1_[22]["Value"] <= 774) then
		Enemy = "Mercenary"
		NameEnemy = "Mercenary"
		QuestName = "Area1Quest"
		QuestNumber = 2
		QuestPos = CFrame["new"](-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, .974368095, 0, -0.22495985)
		EnemyPos = CFrame["new"](-1004.3244018555, 80.158866882324, 1424.6193847656)
		if New_World and (L_1_[22]["Value"] >= 750 and L_1_[22]["Value"] <= 774) then
			Name_Boss = "Diamond"
			QuestName_Boss = "Area1Quest"
			QuestNumber_Boss = 3
		end
	elseif New_World and (L_1_[22]["Value"] >= 775 and L_1_[22]["Value"] <= 799) then
		Enemy = "Swan Pirate"
		NameEnemy = "Swan Pirate"
		QuestName = "Area2Quest"
		QuestNumber = 1
		QuestPos = CFrame["new"](638.43811, 71.769989, 918.282898, .139203906, 0, .99026376, 0, 1, 0, -0.99026376, 0, .139203906)
		EnemyPos = CFrame["new"](1068.6643066406, 137.61428833008, 1322.1060791016)
	elseif New_World and (L_1_[22]["Value"] >= 800 and L_1_[22]["Value"] <= 874) then
		Enemy = "Factory Staff"
		NameEnemy = "Factory Staff"
		QuestName = "Area2Quest"
		QuestNumber = 2
		QuestPos = CFrame["new"](632.698608, 73.1055908, 918.666321, -0.0319722369, 8.960749e-10, -0.999488771, 1.3632653e-10, 1, 8.9217234e-10, .999488771, -1.0773209e-10, -0.0319722369)
		EnemyPos = CFrame["new"](73.078674316406, 81.863441467285, -27.470672607422)
		if New_World and (L_1_[22]["Value"] >= 850 and L_1_[22]["Value"] <= 874) then
			Name_Boss = "Jeremy"
			QuestName_Boss = "Area2Quest"
			QuestNumber_Boss = 3
		end
	elseif New_World and (L_1_[22]["Value"] >= 875 and L_1_[22]["Value"] <= 899) then
		Enemy = "Marine Lieutenant"
		NameEnemy = "Marine Lieutenant"
		QuestName = "MarineQuest3"
		QuestNumber = 1
		QuestPos = CFrame["new"](-2440.79639, 71.7140732, -3216.06812, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268)
		EnemyPos = CFrame["new"](-2821.3723144531, 75.897277832031, -3070.0891113281)
	elseif New_World and (L_1_[22]["Value"] >= 900 and L_1_[22]["Value"] <= 949) then
		Enemy = "Marine Captain"
		NameEnemy = "Marine Captain"
		QuestName = "MarineQuest3"
		QuestNumber = 2
		QuestPos = CFrame["new"](-2440.79639, 71.7140732, -3216.06812, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268)
		EnemyPos = CFrame["new"](-1861.2310791016, 80.176582336426, -3254.6975097656)
	elseif New_World and (L_1_[22]["Value"] >= 950 and L_1_[22]["Value"] <= 974) then
		Enemy = "Zombie"
		NameEnemy = "Zombie"
		QuestName = "ZombieQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, .95628953, 0, -0.29242146)
		EnemyPos = CFrame["new"](-5657.7768554688, 78.969734191895, -928.68701171875)
		if New_World and (L_1_[22]["Value"] >= 925 and L_1_[22]["Value"] <= 974) then
			Name_Boss = "Fajita"
			QuestName_Boss = "MarineQuest3"
			QuestNumber_Boss = 3
		end
	elseif New_World and (L_1_[22]["Value"] >= 975 and L_1_[22]["Value"] <= 999) then
		Enemy = "Vampire"
		NameEnemy = "Vampire"
		QuestName = "ZombieQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, .95628953, 0, -0.29242146)
		EnemyPos = CFrame["new"](-6037.66796875, 32.184638977051, -1340.6597900391)
	elseif New_World and (L_1_[22]["Value"] >= 1000 and L_1_[22]["Value"] <= 1049) then
		Enemy = "Snow Trooper"
		NameEnemy = "Snow Trooper"
		QuestName = "SnowMountainQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](609.858826, 400.119904, -5372.25928, -0.374604106, 0, .92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
		EnemyPos = CFrame["new"](549.14733886719, 427.38705444336, -5563.6987304688)
	elseif New_World and (L_1_[22]["Value"] >= 1050 and L_1_[22]["Value"] <= 1099) then
		Enemy = "Winter Warrior"
		NameEnemy = "Winter Warrior"
		QuestName = "SnowMountainQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](609.858826, 400.119904, -5372.25928, -0.374604106, 0, .92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
		EnemyPos = CFrame["new"](1142.7451171875, 475.63980102539, -5199.4165039062)
	elseif New_World and (L_1_[22]["Value"] >= 1100 and L_1_[22]["Value"] <= 1124) then
		Enemy = "Lab Subordinate"
		NameEnemy = "Lab Subordinate"
		QuestName = "IceSideQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](-6064.06885, 15.2422857, -4902.97852, .453972578, 0, -0.891015649, 0, 1, 0, .891015649, 0, .453972578)
		EnemyPos = CFrame["new"](-5707.4716796875, 15.951709747314, -4513.3920898438)
	elseif New_World and (L_1_[22]["Value"] >= 1125 and L_1_[22]["Value"] <= 1174) then
		Enemy = "Horned Warrior"
		NameEnemy = "Horned Warrior"
		QuestName = "IceSideQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](-6064.06885, 15.2422857, -4902.97852, .453972578, 0, -0.891015649, 0, 1, 0, .891015649, 0, .453972578)
		EnemyPos = CFrame["new"](-6341.3666992188, 15.951770782471, -5723.162109375)
		if New_World and (L_1_[22]["Value"] >= 1150 and L_1_[22]["Value"] <= 1174) then
			Name_Boss = "Smoke Admiral"
			QuestName_Boss = "IceSideQuest"
			QuestNumber_Boss = 3
		end
	elseif New_World and (L_1_[22]["Value"] >= 1175 and L_1_[22]["Value"] <= 1199) then
		Enemy = "Magma Ninja"
		NameEnemy = "Magma Ninja"
		QuestName = "FireSideQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
		EnemyPos = CFrame["new"](-5449.6728515625, 76.658744812012, -5808.2006835938)
	elseif New_World and (L_1_[22]["Value"] >= 1200 and L_1_[22]["Value"] <= 1249) then
		Enemy = "Lava Pirate"
		NameEnemy = "Lava Pirate"
		QuestName = "FireSideQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
		EnemyPos = CFrame["new"](-5213.3315429688, 49.737880706787, -4701.451171875)
	elseif New_World and (L_1_[22]["Value"] >= 1250 and L_1_[22]["Value"] <= 1274) then
		Enemy = "Ship Deckhand"
		NameEnemy = "Ship Deckhand"
		QuestName = "ShipQuest1"
		QuestNumber = 1
		QuestPos = CFrame["new"](1037.80127, 125.092171, 32911.6016)
		EnemyPos = CFrame["new"](1212.0111083984, 150.79205322266, 33059.24609375)
		if ((CFrame["new"](1212.0111083984, 150.79205322266, 33059.24609375))["Position"] - L_1_[5]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 5000 then
			((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", Vector3["new"](923.21301269531, 126.9759979248, 32852.83203125))
		end
	elseif New_World and (L_1_[22]["Value"] >= 1275 and L_1_[22]["Value"] <= 1299) then
		Enemy = "Ship Engineer"
		NameEnemy = "Ship Engineer"
		QuestName = "ShipQuest1"
		QuestNumber = 2
		QuestPos = CFrame["new"](1037.80127, 125.092171, 32911.6016)
		EnemyPos = CFrame["new"](919.47863769531, 43.544013977051, 32779.96875)
		if ((CFrame["new"](1212.0111083984, 150.79205322266, 33059.24609375))["Position"] - L_1_[5]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 5000 then
			((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", Vector3["new"](923.21301269531, 126.9759979248, 32852.83203125))
		end
	elseif New_World and (L_1_[22]["Value"] >= 1300 and L_1_[22]["Value"] <= 1324) then
		Enemy = "Ship Steward"
		NameEnemy = "Ship Steward"
		QuestName = "ShipQuest2"
		QuestNumber = 1
		QuestPos = CFrame["new"](968.80957, 125.092171, 33244.125)
		EnemyPos = CFrame["new"](919.43853759766, 129.55599975586, 33436.03515625)
		if ((CFrame["new"](1212.0111083984, 150.79205322266, 33059.24609375))["Position"] - L_1_[5]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 5000 then
			((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", Vector3["new"](923.21301269531, 126.9759979248, 32852.83203125))
		end
	elseif New_World and (L_1_[22]["Value"] >= 1325 and L_1_[22]["Value"] <= 1349) then
		Enemy = "Ship Officer"
		NameEnemy = "Ship Officer"
		QuestName = "ShipQuest2"
		QuestNumber = 2
		QuestPos = CFrame["new"](968.80957, 125.092171, 33244.125)
		EnemyPos = CFrame["new"](1036.0179443359, 181.4390411377, 33315.7265625)
		if ((CFrame["new"](1212.0111083984, 150.79205322266, 33059.24609375))["Position"] - L_1_[5]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 5000 then
			((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", Vector3["new"](923.21301269531, 126.9759979248, 32852.83203125))
		end
	elseif New_World and (L_1_[22]["Value"] >= 1350 and L_1_[22]["Value"] <= 1374) then
		Enemy = "Arctic Warrior"
		NameEnemy = "Arctic Warrior"
		QuestName = "FrostQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, .358349502, 0, -0.933587909)
		EnemyPos = CFrame["new"](5966.24609375, 62.970020294189, -6179.3828125)
	elseif New_World and (L_1_[22]["Value"] >= 1375 and L_1_[22]["Value"] <= 1424) then
		Enemy = "Snow Lurker"
		NameEnemy = "Snow Lurker"
		QuestName = "FrostQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, .358349502, 0, -0.933587909)
		EnemyPos = CFrame["new"](5407.0737304688, 69.194374084473, -6880.8803710938)
		if New_World and (L_1_[22]["Value"] >= 1400 and L_1_[22]["Value"] <= 1424) then
			Name_Boss = "Awakened Ice Admiral"
			QuestName_Boss = "FrostQuest"
			QuestNumber_Boss = 3
		end
	elseif New_World and (L_1_[22]["Value"] >= 1425 and L_1_[22]["Value"] <= 1449) then
		Enemy = "Sea Soldier"
		NameEnemy = "Sea Soldier"
		QuestName = "ForgottenQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](-3055, 240, -10145)
		EnemyPos = CFrame["new"](-3433, 26, -9784)
	elseif New_World and (L_1_[22]["Value"] >= 1450 and L_1_[22]["Value"] <= 999999) then
		Enemy = "Water Fighter"
		NameEnemy = "Water Fighter"
		QuestName = "ForgottenQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](-3054.53, 239.96, -10144.42)
		EnemyPos = CFrame["new"](-3360.23, 284.21, -10533.07)
		if New_World and (L_1_[22]["Value"] >= 1475 and L_1_[22]["Value"] <= 1499) then
			Name_Boss = "Tide Keeper"
			QuestName_Boss = "ForgottenQuest"
			QuestNumber_Boss = 3
		end
	elseif Three_World and (L_1_[22]["Value"] >= 1500 and L_1_[22]["Value"] <= 1524) then
		Enemy = "Pirate Millionaire"
		NameEnemy = "Pirate Millionaire"
		QuestName = "PiratePortQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](-449.15930175781, 108.61765289307, 5948.0014648438)
		EnemyPos = CFrame["new"](-245.99638366699, 47.30615234375, 5584.1005859375)
	elseif Three_World and (L_1_[22]["Value"] >= 1525 and L_1_[22]["Value"] <= 1574) then
		Enemy = "Pistol Billionaire"
		NameEnemy = "Pistol Billionaire"
		QuestName = "PiratePortQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](-449.15930175781, 108.61765289307, 5948.0014648438)
		EnemyPos = CFrame["new"](-187.33015441895, 86.239875793457, 6013.513671875)
		if Three_World and (L_1_[22]["Value"] >= 1550 and L_1_[22]["Value"] <= 1574) then
			Name_Boss = "Stone"
			QuestName_Boss = "PiratePortQuest"
			QuestNumber_Boss = 3
		end
	elseif Three_World and (L_1_[22]["Value"] >= 1575 and L_1_[22]["Value"] <= 1599) then
		Enemy = "Dragon Crew Warrior"
		NameEnemy = "Dragon Crew Warrior"
		QuestName = "DragonCrewQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](6737.7768554688, 127.42920684814, -713.23126220703)
		EnemyPos = CFrame["new"](6141.140625, 51.351364135742, -1340.7385253906)
	elseif Three_World and (L_1_[22]["Value"] >= 1600 and L_1_[22]["Value"] <= 1624) then
		Enemy = "Dragon Crew Archer"
		NameEnemy = "Dragon Crew Archer"
		QuestName = "DragonCrewQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](6737.7768554688, 127.42920684814, -713.23126220703)
		EnemyPos = CFrame["new"](6616.4174804688, 441.76705932617, 446.04699707031)
	elseif Three_World and (L_1_[22]["Value"] >= 1625 and L_1_[22]["Value"] <= 1649) then
		Enemy = "Hydra Enforcer"
		NameEnemy = "Hydra Enforcer"
		QuestName = "VenomCrewQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](5212.94140625, 1004.1171875, 755.66571044922)
		EnemyPos = CFrame["new"](4685.2583007812, 735.80780029297, 815.34259033203)
	elseif Three_World and (L_1_[22]["Value"] >= 1650 and L_1_[22]["Value"] <= 1699) then
		Enemy = "Venomous Assailant"
		NameEnemy = "Venomous Assailant"
		QuestName = "VenomCrewQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](5212.94140625, 1004.1171875, 755.66571044922)
		EnemyPos = CFrame["new"](4729.0942382812, 590.43676757812, -36.976276397705)
		if Three_World and (L_1_[22]["Value"] >= 1675 and L_1_[22]["Value"] <= 1699) then
			Name_Boss = "Hydra Leader"
			QuestName_Boss = "VenomCrewQuest"
			QuestNumber_Boss = 3
		end
	elseif Three_World and (L_1_[22]["Value"] >= 1700 and L_1_[22]["Value"] <= 1724) then
		Enemy = "Marine Commodore"
		NameEnemy = "Marine Commodore"
		QuestName = "MarineTreeIsland"
		QuestNumber = 1
		QuestPos = CFrame["new"](2484.0673828125, 74.282150268555, -6786.64453125)
		EnemyPos = CFrame["new"](2286.0078125, 73.133918762207, -7159.8090820312)
	elseif Three_World and (L_1_[22]["Value"] >= 1725 and L_1_[22]["Value"] <= 1774) then
		Enemy = "Marine Rear Admiral"
		NameEnemy = "Marine Rear Admiral"
		QuestName = "MarineTreeIsland"
		QuestNumber = 2
		QuestPos = CFrame["new"](2484.0673828125, 74.282150268555, -6786.64453125)
		EnemyPos = CFrame["new"](3656.7736816406, 160.52406311035, -7001.5986328125)
		if Three_World and (L_1_[22]["Value"] >= 1750 and L_1_[22]["Value"] <= 1774) then
			Name_Boss = "Kilo Admiral"
			QuestName_Boss = "MarineTreeIsland"
			QuestNumber_Boss = 3
		end
	elseif Three_World and (L_1_[22]["Value"] >= 1775 and L_1_[22]["Value"] <= 1799) then
		Enemy = "Fishman Raider"
		NameEnemy = "Fishman Raider"
		QuestName = "DeepForestIsland3"
		QuestNumber = 1
		QuestPos = CFrame["new"](-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
		EnemyPos = CFrame["new"](-10407.526367188, 331.76263427734, -8368.5166015625)
	elseif Three_World and (L_1_[22]["Value"] >= 1800 and L_1_[22]["Value"] <= 1824) then
		Enemy = "Fishman Captain"
		NameEnemy = "Fishman Captain"
		QuestName = "DeepForestIsland3"
		QuestNumber = 2
		QuestPos = CFrame["new"](-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
		EnemyPos = CFrame["new"](-10994.701171875, 352.38140869141, -9002.1103515625)
	elseif Three_World and (L_1_[22]["Value"] >= 1825 and L_1_[22]["Value"] <= 1849) then
		Enemy = "Forest Pirate"
		NameEnemy = "Forest Pirate"
		QuestName = "DeepForestIsland"
		QuestNumber = 1
		QuestPos = CFrame["new"](-13234.04, 331.488495, -7625.40137, .707134247, 0, -0.707079291, 0, 1, 0, .707079291, 0, .707134247)
		EnemyPos = CFrame["new"](-13274.478515625, 332.37814331055, -7769.5805664062)
	elseif Three_World and (L_1_[22]["Value"] >= 1850 and L_1_[22]["Value"] <= 1899) then
		Enemy = "Mythological Pirate"
		NameEnemy = "Mythological Pirate"
		QuestName = "DeepForestIsland"
		QuestNumber = 2
		QuestPos = CFrame["new"](-13234.04, 331.488495, -7625.40137, .707134247, 0, -0.707079291, 0, 1, 0, .707079291, 0, .707134247)
		EnemyPos = CFrame["new"](-13680.607421875, 501.08154296875, -6991.189453125)
		if Three_World and (L_1_[22]["Value"] >= 1875 and L_1_[22]["Value"] <= 1899) then
			Name_Boss = "Captain Elephant"
			QuestName_Boss = "DeepForestIsland"
			QuestNumber_Boss = 3
		end
	elseif Three_World and (L_1_[22]["Value"] >= 1900 and L_1_[22]["Value"] <= 1924) then
		Enemy = "Jungle Pirate"
		NameEnemy = "Jungle Pirate"
		QuestName = "DeepForestIsland2"
		QuestNumber = 1
		QuestPos = CFrame["new"](-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, .996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
		EnemyPos = CFrame["new"](-12256.16015625, 331.73828125, -10485.836914062)
	elseif Three_World and (L_1_[22]["Value"] >= 1924 and L_1_[22]["Value"] <= 1974) then
		Enemy = "Musketeer Pirate"
		NameEnemy = "Musketeer Pirate"
		QuestName = "DeepForestIsland2"
		QuestNumber = 2
		QuestPos = CFrame["new"](-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, .996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
		EnemyPos = CFrame["new"](-13457.904296875, 391.54565429688, -9859.177734375)
		if Three_World and (L_1_[22]["Value"] >= 1950 and L_1_[22]["Value"] <= 1974) then
			Name_Boss = "Beautiful Pirate"
			QuestName_Boss = "DeepForestIsland2"
			QuestNumber_Boss = 3
		end
	elseif Three_World and (L_1_[22]["Value"] >= 1974 and L_1_[22]["Value"] <= 1999) then
		Enemy = "Reborn Skeleton"
		NameEnemy = "Reborn Skeleton"
		QuestName = "HauntedQuest1"
		QuestNumber = 1
		QuestPos = CFrame["new"](-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, 0, -1, 0, 0)
		EnemyPos = CFrame["new"](-8763.7236328125, 165.72299194336, 6159.8618164062)
	elseif Three_World and (L_1_[22]["Value"] >= 2000 and L_1_[22]["Value"] <= 2024) then
		Enemy = "Living Zombie"
		NameEnemy = "Living Zombie"
		QuestName = "HauntedQuest1"
		QuestNumber = 2
		QuestPos = CFrame["new"](-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, 0, -1, 0, 0)
		EnemyPos = CFrame["new"](-10144.131835938, 138.6266784668, 5838.0888671875)
	elseif Three_World and (L_1_[22]["Value"] >= 2025 and L_1_[22]["Value"] <= 2049) then
		Enemy = "Demonic Soul"
		NameEnemy = "Demonic Soul"
		QuestName = "HauntedQuest2"
		QuestNumber = 1
		QuestPos = CFrame["new"](-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		EnemyPos = CFrame["new"](-9505.8720703125, 172.10482788086, 6158.9931640625)
	elseif Three_World and (L_1_[22]["Value"] >= 2050 and L_1_[22]["Value"] <= 2074) then
		Enemy = "Posessed Mummy"
		NameEnemy = "Posessed Mummy"
		QuestName = "HauntedQuest2"
		QuestNumber = 2
		QuestPos = CFrame["new"](-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		EnemyPos = CFrame["new"](-9582.0224609375, 6.2515273094177, 6205.478515625)
	elseif Three_World and (L_1_[22]["Value"] >= 2075 and L_1_[22]["Value"] <= 2099) then
		Enemy = "Peanut Scout"
		NameEnemy = "Peanut Scout"
		QuestName = "NutsIslandQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		EnemyPos = CFrame["new"](-2143.2419433594, 47.721984863281, -10029.995117188)
	elseif Three_World and (L_1_[22]["Value"] >= 2100 and L_1_[22]["Value"] <= 2124) then
		Enemy = "Peanut President"
		NameEnemy = "Peanut President"
		QuestName = "NutsIslandQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		EnemyPos = CFrame["new"](-1859.3540039062, 38.103168487549, -10422.4296875)
	elseif Three_World and (L_1_[22]["Value"] >= 2125 and L_1_[22]["Value"] <= 2149) then
		Enemy = "Ice Cream Chef"
		NameEnemy = "Ice Cream Chef"
		QuestName = "IceCreamIslandQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		EnemyPos = CFrame["new"](-872.24658203125, 65.81957244873, -10919.95703125)
	elseif Three_World and (L_1_[22]["Value"] >= 2150 and L_1_[22]["Value"] <= 2199) then
		Enemy = "Ice Cream Commander"
		NameEnemy = "Ice Cream Commander"
		QuestName = "IceCreamIslandQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		EnemyPos = CFrame["new"](-558.06103515625, 112.04895782471, -11290.774414063)
		if Three_World and (L_1_[22]["Value"] >= 2175 and L_1_[22]["Value"] <= 2199) then
			Name_Boss = "Cake Queen"
			QuestName_Boss = "IceCreamIslandQuest"
			QuestNumber_Boss = 3
		end
	elseif Three_World and (L_1_[22]["Value"] >= 2200 and L_1_[22]["Value"] <= 2224) then
		Enemy = "Cookie Crafter"
		NameEnemy = "Cookie Crafter"
		QuestName = "CakeQuest1"
		QuestNumber = 1
		QuestPos = CFrame["new"](-2021.32007, 37.7982254, -12028.7295, .957576931, -8.8030205e-08, .288177818, 6.930119e-08, 1, 7.519312e-08, -0.288177818, -5.2032135e-08, .957576931)
		EnemyPos = CFrame["new"](-2374.13671875, 37.798263549805, -12125.30859375)
	elseif Three_World and (L_1_[22]["Value"] >= 2225 and L_1_[22]["Value"] <= 2249) then
		Enemy = "Cake Guard"
		NameEnemy = "Cake Guard"
		QuestName = "CakeQuest1"
		QuestNumber = 2
		QuestPos = CFrame["new"](-2021.32007, 37.7982254, -12028.7295, .957576931, -8.8030205e-08, .288177818, 6.930119e-08, 1, 7.519312e-08, -0.288177818, -5.2032135e-08, .957576931)
		EnemyPos = CFrame["new"](-1598.3070068359, 43.773197174072, -12244.581054688)
	elseif Three_World and (L_1_[22]["Value"] >= 2250 and L_1_[22]["Value"] <= 2274) then
		Enemy = "Baking Staff"
		NameEnemy = "Baking Staff"
		QuestName = "CakeQuest2"
		QuestNumber = 1
		QuestPos = CFrame["new"](-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.2214214e-08, .250778586, 4.7491106e-08, 1, 1.4990471e-08, -0.250778586, 2.6421194e-08, -0.96804446)
		EnemyPos = CFrame["new"](-1887.8099365234, 77.618507385254, -12998.350585938)
	elseif Three_World and (L_1_[22]["Value"] >= 2275 and L_1_[22]["Value"] <= 2299) then
		Enemy = "Head Baker"
		NameEnemy = "Head Baker"
		QuestName = "CakeQuest2"
		QuestNumber = 2
		QuestPos = CFrame["new"](-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.2214214e-08, .250778586, 4.7491106e-08, 1, 1.4990471e-08, -0.250778586, 2.6421194e-08, -0.96804446)
		EnemyPos = CFrame["new"](-2216.1882324219, 82.884521484375, -12869.293945312)
	elseif Three_World and (L_1_[22]["Value"] >= 2300 and L_1_[22]["Value"] <= 2324) then
		Enemy = "Cocoa Warrior"
		NameEnemy = "Cocoa Warrior"
		QuestName = "ChocQuest1"
		QuestNumber = 1
		QuestPos = CFrame["new"](233.22836303711, 29.876001358032, -12201.233398438)
		EnemyPos = CFrame["new"](-21.553283691406, 80.574996948242, -12352.387695312)
	elseif Three_World and (L_1_[22]["Value"] >= 2325 and L_1_[22]["Value"] <= 2349) then
		Enemy = L_1_[3]({
			"Chocolate Bar Battle";
			"r"
		})
		NameEnemy = L_1_[3]({
			"Chocolate Bar Battle",
			"r"
		})
		QuestName = "ChocQuest1"
		QuestNumber = 2
		QuestPos = CFrame["new"](233.22836303711, 29.876001358032, -12201.233398438)
		EnemyPos = CFrame["new"](582.59057617188, 77.188095092773, -12463.162109375)
	elseif Three_World and (L_1_[22]["Value"] >= 2350 and L_1_[22]["Value"] <= 2374) then
		Enemy = "Sweet Thief"
		NameEnemy = "Sweet Thief"
		QuestName = "ChocQuest2"
		QuestNumber = 1
		QuestPos = CFrame["new"](150.50663757324, 30.693693161011, -12774.502929688)
		EnemyPos = CFrame["new"](165.1884765625, 76.058853149414, -12600.836914062)
	elseif Three_World and (L_1_[22]["Value"] >= 2375 and L_1_[22]["Value"] <= 2399) then
		Enemy = "Candy Rebel"
		NameEnemy = "Candy Rebel"
		QuestName = "ChocQuest2"
		QuestNumber = 2
		QuestPos = CFrame["new"](150.50663757324, 30.693693161011, -12774.502929688)
		EnemyPos = CFrame["new"](134.86563110352, 77.247680664062, -12876.547851562)
	elseif Three_World and (L_1_[22]["Value"] >= 2400 and L_1_[22]["Value"] <= 2424) then
		Enemy = "Candy Pirate"
		NameEnemy = "Candy Pirate"
		QuestName = "CandyQuest1"
		QuestNumber = 1
		QuestPos = CFrame["new"](-1167, 60, -14491)
		EnemyPos = CFrame["new"](-1310.5003662109, 26.016523361206, -14562.404296875)
	elseif Three_World and (L_1_[22]["Value"] >= 2425 and L_1_[22]["Value"] <= 2449) then
		Enemy = "Snow Demon"
		NameEnemy = "Snow Demon"
		QuestName = "CandyQuest1"
		QuestNumber = 2
		QuestPos = CFrame["new"](-1167, 60, -14491)
		EnemyPos = CFrame["new"](-880.20062255859, 71.247764587402, -14538.609375)
	elseif Three_World and (L_1_[22]["Value"] >= 2450 and L_1_[22]["Value"] <= 2474) then
		Enemy = "Isle Outlaw"
		NameEnemy = "Isle Outlaw"
		QuestName = "TikiQuest1"
		QuestNumber = 1
		QuestPos = CFrame["new"](-16547.748046875, 61.135334014893, -173.41360473633)
		EnemyPos = CFrame["new"](-16442.814453125, 116.13899993896, -264.46377563477)
	elseif Three_World and (L_1_[22]["Value"] >= 2475 and L_1_[22]["Value"] <= 2499) then
		Enemy = "Island Boy"
		NameEnemy = "Island Boy"
		QuestName = "TikiQuest1"
		QuestNumber = 2
		QuestPos = CFrame["new"](-16547.748046875, 61.135334014893, -173.41360473633)
		EnemyPos = CFrame["new"](-16901.26171875, 84.067565917969, -192.88906860352)
	elseif Three_World and (L_1_[22]["Value"] >= 2500 and L_1_[22]["Value"] <= 2524) then
		Enemy = "Sun-kissed Warrior"
		NameEnemy = "Sun"
		New = "Sun"
		QuestName = "TikiQuest2"
		QuestNumber = 1
		QuestPos = CFrame["new"](-16539.078125, 55.686328887939, 1051.5738525391)
		EnemyPos = CFrame["new"](-16051.969726562, 54.797149658203, 1084.67578125)
	elseif Three_World and (L_1_[22]["Value"] >= 2525 and L_1_[22]["Value"] <= 2549) then
		Enemy = "Isle Champion"
		NameEnemy = "Isle Champion"
		QuestName = "TikiQuest2"
		QuestNumber = 2
		QuestPos = CFrame["new"](-16539.078125, 55.686328887939, 1051.5738525391)
		EnemyPos = CFrame["new"](-16619.37109375, 129.98481750488, 1071.2355957031)
	elseif Three_World and (L_1_[22]["Value"] >= 2550 and L_1_[22]["Value"] <= 2574) then
		Enemy = "Serpent Hunter"
		NameEnemy = "Serpent Hunter"
		QuestName = "TikiQuest3"
		QuestNumber = 1
		QuestPos = CFrame["new"](-16666.5703125, 105.29138183594, 1576.6925048828)
		EnemyPos = CFrame["new"](-16474.5703125, 124.32273864746, 1619.248046875)
	elseif Three_World and (L_1_[22]["Value"] >= 2575 and L_1_[22]["Value"] <= 2650) then
		Enemy = "Skull Slayer"
		NameEnemy = "Skull Slayer"
		QuestName = "TikiQuest3"
		QuestNumber = 2
		QuestPos = CFrame["new"](-16666.5703125, 105.29138183594, 1576.6925048828)
		EnemyPos = CFrame["new"](-16778.7852, 232.283752, 1442.08325, -0.992449045, -5.54140511e-10, -0.12265785, -2.84580609e-10, 1, -2.21517649e-09, .12265785, -2.16354379e-09, -0.992449045)
	end
end
end)
