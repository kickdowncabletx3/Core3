tusken_blood_champion = Creature:new {
	objectName = "@mob/creature_names:tusken_blood_champion",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 70,
	chanceHit = 0.46,
	damageMin = 360,
	damageMax = 430,
	baseXp = 4279,
	baseHAM = 9500,
	baseHAMmax = 11700,
	armor = 0,
	resists = {50,40,0,30,-1,30,-1,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/tusken_raider.iff"},
	lootGroups = {
		{
			groups = {
				{group = "tusken_common", chance = 2500000},
				{group = "wearables_uncommon", chance = 500000},
				{group = "armor_attachments", chance = 500000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "color_crystals", chance = 2000000},
				{group = "power_crystals", chance = 2000000}
			}
		}
	},
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,brawlermaster,fencermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(tusken_blood_champion, "tusken_blood_champion")
