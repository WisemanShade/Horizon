local profile = {};
local varhelper = gFunc.LoadFile('common/varhelper.lua');
local sets = {
    Idle = {
        Main =  'Terra\'s Staff',
        Ammo =  'Phtm. Tathlum',
 		Head =  'Sorcerer\'s Petas.',
        Neck =  'Elemental Torque',
        Ear1 =  'Novio Earring',
        Ear2 =  'Loquac. Earring',
		Body =  'Sorcerer\'s Coat',
		Hands = 'Zenith Mitts',
        Ring1 = 'Merman\'s Ring',
        Ring2 = 'Ether Ring',
        Back =  'Hexerei Cape',
        Waist = 'Hierarch belt',
        Legs =  'Mahatma Slops',
        Feet = 'Rostrum Pumps',
    },
    Nuke = {
        Ammo =  'Phtm. Tathlum',
        Head =  'Sorcerer\'s Petas.',
        Neck =  'Elemental Torque',
        Ear1 =  'Novio Earring',
        Ear2 =  'Moldavite Earring',
        Body =  'Igqira Weskit',
	Hands = 'Zenith Mitts',
        Ring1 = 'Snow Ring',
        Ring2 = 'Snow Ring',
        Back =  'Prism Cape',
        Waist = 'Sorcerer\'s Belt',
        Legs =  'Mahatma Slops',
        Feet =  'Sorcerer\'s Sabots +1',
    },
    Skill = {
        Ammo =  'Phtm. Tathlum',
        Head =  'Demon Helm',
        Neck =  'Elemental Torque',
        Ear1 =  'Novio Earring',
        Ear2 =  'Moldavite Earring',
        Body =  'Igqira Weskit',
		Hands = 'Genie Manillas',
        Ring1 = 'Snow Ring',
        Ring2 = 'Snow Ring',
        Back =  'Prism Cape',
        Waist = 'Penitent\'s Rope',
        Legs =  'Mahatma Slops',
        Feet =  'Custom F Boots',
    },
    Dark = {
        Ammo =  'Phtm. Tathlum',
        Head =  'Demon Helm',
        Neck =  'Philomath Stole',
        --Neck =  'Dark Torque',
        Ear1 =  'Novio Earring',
        Ear2 =  'Moldavite Earring',
        Body =  'Igqira Weskit',
		Hands = 'Sorcerer\'s Gloves',
        Ring1 = 'Genius Ring',
        Ring2 = 'Snow Ring',
        Back =  'Prism Cape',
        Waist = 'Penitent\'s Rope',
        Legs =  'Wizard\'s Tonban',
        Feet =  'Custom F Boots',
    },
    MaxInt = {
        Ammo =  'Phtm. Tathlum',
        Head =  'Demon Helm',
        Neck =  'Philomath Stole',
        Ear1 =  'Novio Earring',
        Ear2 =  'Moldavite Earring',
        Body =  'Errant Hpl.',
		Hands = 'Genie Manillas',
        Ring1 = 'Snow Ring',
        Ring2 = 'Snow Ring',
        Back =  'Prism Cape',
        Waist = 'Penitent\'s Rope',
        Legs =  'Mahatma Slops',
        Feet = 'Rostrum Pumps',
    },
    EnfeebleINT = {
        Ammo =  'Phtm. Tathlum',
        Head =  'Demon Helm',
        Neck =  'Enfeebling Torque',
        Ear1 =  'Novio Earring',
        Ear2 =  'Moldavite Earring',
        Body =  'Wizard\'s Coat',
		Hands = 'Genie Manillas',
        Ring1 = 'Genius Ring',
        Ring2 = 'Snow Ring',
        Back =  'Prism Cape',
        Waist = 'Penitent\'s Rope',
        Legs =  'Mahatma Slops',
        Feet = 'Rostrum Pumps',
    },
	EnfeebleMND = {
        Ammo =  'Phtm. Tathlum',
        Head =  'Demon Helm',
        --Neck =  'Philomath Stole',
        Neck =  'Enfeebling Torque',
        Ear1 =  'Novio Earring',
        Ear2 =  'Moldavite Earring',
        Body =  'Errant Hpl.',
		Hands = 'Genie Manillas',
        Ring1 = 'Genius Ring',
        Ring2 = 'Snow Ring',
        Back =  'Prism Cape',
        Waist = 'Penitent\'s Rope',
        Legs =  'Mahatma Slops',
        Feet = 'Rostrum Pumps',
    },
    Resting = {
        Main = 'Pluto\'s Staff',
		Ammo = 'Phtm. Tathlum',
        Head =  'Demon Helm',
        Neck = 'Checkered Scarf',
        --Ear1 = 'Boroka Earring',
        Ear2 = 'Relaxing Earring',
        Body = 'Errant Hpl.',
        --Hands = 'Src. Gloves +1',
        --Ring1 = 'Tamas Ring',
        Ring2 = 'Merman\'s Ring',
        --Back = 'Cheviot Cape',
        Waist = 'Hierarch Belt',
        Legs = 'Baron\'s Slops',
        Feet = 'Rostrum Pumps',
    },
	--HPdown is a REPLACEMENT for PRECAST for nukes. Put fast cast in this.
	HPdown = {
	Main = 'Asklepios', --30
	Sub = 'Astral Aspis', --25
		--Ammo = '',
        Head = 'Zenith Crown', --50
        Neck = 'Checkered Scarf', --12
        --Ear1 = '',
        --Ear2 = '',
        Body = 'Black Cotehardie', --25
        Hands = 'Zenith Mitts', --50
        Ring1 = 'Ether Ring', --30
        Ring2 = 'Electrum Ring', --20
        Back = 'Blue Cape', --15
        Waist = 'Penitent\'s Rope', --20
        Feet = 'Rostrum Pumps', --30		
		},
	Stoneskin = {
	Main = 'Kirin\'s Pole',
		Ammo = 'Phtm. Tathlum',
        Head = 'Errant Hat',
        Neck = 'Justice Badge',
        Ear1 =  '',
        Ear2 =  '',
        Body = 'Errant Hpl.',
        Hands = 'Errant Cuffs',
        Ring1 = 'Aquamarine Ring',
        Ring2 = 'Aquamarine Ring',
        Back = 'Prism Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Mahatma Slops',
        Feet = 'Errant Pigaches',
	},
	Precast = {
		Feet = 'Rostrum Pumps', 
		Ear1 = 'Loquac. Earring',
	},
	Cure = {
		Main = 'Apollo\'s Staff',	
        Neck = 'Holy Phial',
        Ear1 =  '',
        Ear2 =  '',
        Body = 'Errant Hpl.',
        Hands = '',
        Ring1 = 'Aquamarine Ring',
        Ring2 = 'Aquamarine Ring',
        Back = 'Prism Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Mahatma Slops',
        Feet = 'Rostrum Pumps',
	},
	Fish = {
		--Head = 'Rain Hat',
		--Body = 'Angler\'s Tunica',
		Hands = 'Tanner\'s Gloves',
		--Legs = 'Angler\'s Hose',
		--Feet = 'Waders',
		--Range = 'Ebisu Fishing Rod',
	},
	Windy = {
		--Body = 'Federation Aketon',
	},
	Sneak = {
		Back = 'Skulker\'s Cape',
		Feet = 'Dream Boots +1',
	},
	Invis = {
		Back = 'Skulker\'s Cape',
		Hands = 'Dream Mittens +1',
	},
	City = {
		Body = 'Ducal Aketon',
	};
	LockStyle = {
        Head = 'Sorcerer\'s Petas.',
        Body =  'Sorcerer\'s Coat',
        Hands = 'Sorcerer\'s Gloves',
        Legs = 'Errant slops',
        Feet = 'Sorcerer\'s Sabots +1',		
	};
	Choco = {
		Body = 'Choc. Jack Coat',
		Hands = 'Chocobo Gloves',
		Legs = 'Chocobo Hose',
		Feet = 'Chocobo Boots',
	},
};

local Settings = {
};

local ElementalStaffTable = {
    ['Fire'] = 'Vulcan\'s Staff',
    ['Earth'] = 'Terra\'s Staff',
    ['Water'] = 'Aquilo\'s Staff',
    ['Wind'] = 'Wind Staff',
    ['Ice'] = 'Aquilo\'s Staff',
    ['Thunder'] = 'Jupiter\'s Staff',
    ['Light'] = 'Apollo\'s Staff',
    ['Dark'] = 'Pluto\'s Staff'
};
local ElementalObiTable = {
	['Fire'] = 'Karin Obi',
    ['Earth'] = 'Dorin Obi',
    ['Water'] = 'Suirin Obi',
    ['Wind'] = 'Furin Obi',
    ['Ice'] = 'Hyorin Obi',
    ['Thunder'] = 'Rairin Obi',
    ['Light'] = 'Korin Obi',
    ['Dark'] = 'Anrin Obi'
};

-- Zone tables
local Zone = {};

Zone.Windy = {
    ['Port Windurst'] = true,
    ['Windurst Woods'] = true,
    ['Windurst Walls'] = true,
    ['Windurst Waters'] = true,
	['Heaven*'] = true,
}
Zone.City = {
	--['Port Jeuno'] = true,
    --['Upper Jeuno'] = true,
	--['Lower Jeuno'] = true,
    --['Ru\'Lude Gardens'] = true,
	
    --['Bastok Mines'] = true,
	--['Bastok Markets'] = true,
	--['Port Bastok'] = true,
    --['Metalworks'] = true,
	
	['Port San d\'Oria'] = true,
	['Southern San d\'Oria'] = true, 
	['Northern San d\'Oria'] = true,
	['Chateau d\'Oraguille'] = true,
	
    --['Kazham'] = true,
    --['Norg'] = true,
    --['Rabao'] = true,
}

profile.Sets = sets;

profile.Packer = {};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /set /lac fwd');
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /mb /set mb');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 03');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 03');
    gFunc.LockStyle(sets.LockStyle);
    varhelper.Initialize();
    varhelper.CreateToggle('Skill', false);
	varhelper.CreateToggle('HP', true); 
	varhelper.CreateToggle('MB', false);
	varhelper.CreateToggle('Fish', false);
end

profile.OnUnload = function()
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /set');
    varhelper.Destroy();
end

profile.HandleCommand = function(args)
    if (args[1] == 'skill') then 
        varhelper.AdvanceToggle('Skill');
	elseif (args[1] == 'hp') then 
        varhelper.AdvanceToggle('HP');
	elseif (args[1] == 'mb') then 
        varhelper.AdvanceToggle('MB');
	elseif (args[1] == 'fish') then 
        varhelper.AdvanceToggle('Fish');
	end
end

profile.HandleDefault = function()
    local myLevel = AshitaCore:GetMemoryManager():GetPlayer():GetMainJobLevel();
    local lvl = Settings.CurrentLevel;
    local player = gData.GetPlayer();
	local zone = gData.GetEnvironment('Area');
        
    if (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    elseif (player.IsMoving == true) then
        gFunc.EquipSet(sets.Movement);
    elseif (varhelper.GetToggle('Fish') == true) then
		gFunc.EquipSet(sets.Fish);
	else
        gFunc.EquipSet(sets.Idle);
    end
    if (Zone.Windy[zone.Area]) and (varhelper.GetToggle('Fish') == false) then
		gFunc.EquipSet(sets.Windy);
	end 
	if (Zone.City[zone.Area]) and (varhelper.GetToggle('Fish') == false) then
		gFunc.EquipSet(sets.City);
	end
	if (subjob ~= player.SubJob) then
		gFunc.LockStyle(sets.LockStyle);
		gFunc.Message(player.MainJob + player.MainJobLevel + '/' + player.SubJob + player.SubJobSync);
		subjob = player.SubJob;
	end
	--gFunc.Message(subjob);
	
end

profile.HandleAbility = function()
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
	local spell = gData.GetAction();
    if (spell.Skill == 'Elemental Magic') and (varhelper.GetToggle('HP') == true) then
		gFunc.EquipSet(sets.HPdown);
	else
		gFunc.EquipSet(sets.Precast);
	end
end

profile.HandleMidcast = function()
    local weather = gData.GetEnvironment();
    local ElementalDebuffs = T{ 'Burn', 'Rasp', 'Drown', 'Choke', 'Frost', 'Shock' };
    local spell = gData.GetAction();
	local player = gData.GetPlayer();
    local MndDebuffs = T{'Slow', 'Paralyze', 'Silence'};
    local target = gData.GetActionTarget();
	local lvl = Settings.CurrentLevel;
	
	-- Check if SJ is RDM to set correct fast cast value
	if (player.SubJob == 'RDM') then
		fcv = 0.16;
	else
		fcv = 0.01;
	end
	
	-- Delay gear swap to .5 sec before cast
	local fastCastValue = fcv;
	local minimumBuffer = 0.5;
	local packetDelay = 0.25;
	local castDelay = ((spell.CastTime * (1 - fastCastValue)) / 1000) - minimumBuffer;
	if (castDelay >= packetDelay) then
		gFunc.SetMidDelay(castDelay);
	end
	gFunc.InterimEquipSet(sets.Idle);

	-- Enhancing magic (SS, sneak, invis)
    if (spell.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.Enhance);
		if string.match(spell.Name, 'Stoneskin') then
			gFunc.EquipSet(sets.Stoneskin);
		elseif string.match(spell.Name, 'Sneak') then
			gFunc.EquipSet(sets.Sneak);
		elseif string.match(spell.Name, 'Invisible') then
			gFunc.EquipSet(sets.Invis);
		end
		
    elseif (spell.Skill == 'Healing Magic') then
        gFunc.EquipSet(sets.Cure);

	-- Elemental Magic 
    elseif (spell.Skill == 'Elemental Magic') then
        if (varhelper.GetToggle('Skill') == true) then
			gFunc.EquipSet(sets.Skill);
        else
			gFunc.EquipSet(sets.Nuke);
		end
        if (ElementalDebuffs:contains(spell.Name)) then
            gFunc.EquipSet(sets.MaxInt);
        end
		-- Elemental obi check
        if (spell.Element == weather.WeatherElement) or (spell.Element == weather.DayElement) then 
            gFunc.Equip('Waist', ElementalObiTable[spell.Element]);
        end
		-- Match day for relic legs bonus
		if (spell.Element == weather.DayElement) then 
            gFunc.Equip('Legs', 'Sorcerer\'s Tonban');
        end
		-- Check for MB flag
		if (varhelper.GetToggle('MB') == true) then
			gFunc.Equip('Hands', 'Src. Gloves +1');
			gFunc.Equip('Ear2', 'Static Earring');
		    --varhelper.AdvanceToggle('MB');
			--gFunc.Message('**** Magic Burst Set ****');
		end
		-- Check mp after cast for uggy pendant
		if (spell.MppAftercast < 51) then
			gFunc.Equip('Neck', 'Uggalepih Pendant');
		end
		gFunc.Equip('main', ElementalStaffTable[spell.Element]);

			
    elseif (spell.Skill == 'Enfeebling Magic') then
        if (MndDebuffs:contains(spell.Name)) then
		    gFunc.EquipSet(sets.EnfeebleMND);
		else
            gFunc.EquipSet(sets.EnfeebleINT);
		end
		gFunc.Equip('main', ElementalStaffTable[spell.Element]);
		
    elseif (spell.Skill == 'Dark Magic') then
        gFunc.EquipSet(sets.Dark);
		if (string.match(spell.Name, 'Aspir') or string.match(spell.Name, 'Drain')) then
			gFunc.Equip('ring2', 'Overlord\'s Ring');
		end
		gFunc.Equip('main', ElementalStaffTable[spell.Element]);
		
		--if (weather.WeatherElement == 'Dark') and (string.match(spell.Name, 'Aspir') or string.match(spell.Name, 'Drain')) then
			--gFunc.Equip('main', 'Diabolos\'s Pole');
		--end
			--gFunc.Equip('main', ElementalStaffTable[spell.Element]);
		
    end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
   gFunc.EquipSet(sets.WS);
end

return profile;