--                              |
-- SPEC ID 104 (Guardian Druid) |
-- Vers: 1.23                   |
-- Last Update: 1-14-14         |
-- Author: Kroniq               |
--                              |
-------------------------------\|

ProbablyEngine.rotation.register_custom(104, "Kroniq Bear", {

--Pause
{ "pause", "modifier.lshift" },

-- Form Swap
{{
{ "!/cast Bear Form", "!player.buff(Bear Form)" },
{ "!/cast Cat Form", "!player.buff(Cat Form)" },
}, "modifier.ralt" },

{ "!/cast Bear Form", "player.seal = 0" },

-- Stampeding Roar
{ "Stampeding Roar", "modifier.rshift" },

-- Mighty Bash
{ "Mighty Bash", "modifier.lcontrol" },

-- Interrupts
{ "Skull Bash", "modifier.interrupts" },

--Oh Shit
{ "Might of Ursoc", "player.health < 30" },
{ "#5512" , "player.health < 40" }, --Healthstone

--Rebirth
{{
{ "!/cast Rebirth", { 
	"mouseover.exists",
	"!mouseover.enemy",
	"!mouseover.alive",
}, "mouseover" },
}, "modifier.lalt" },


-- Dream of Cenarius Healing Touch
{ "5185", {  --HT
	"player.health < 80", 
	"player.buff(145162)"   --DoC
}, "player" },
{ "5185", {  --HT
	"lowest.health < 70", 
	"player.buff(145162)"   --DoC
}, "lowest" },


--Heart of the Wild
--{ "Rejuvenation", { 
--	"player.buff(Heart of the Wild)", 
--	"!lowest.buff(Rejuvenation)", 
--  "lowest.health < 95",
--}, "lowest" },


--Bear Rotation
{{

-- Bear CDs
{{

{ "Berserk" },
{ "Incarnation: Son of Ursoc" },
{ "Nature's Vigil" },
{ "Barkskin", "player.health <= 70" },
{ "Bone Shield", "player.health <= 85" },
--{ "Elusive Brew", "player.health <= 85" },
{ "Cenarion Ward" , "player.health <= 60", "player" },
{ "Survival Instincts", "player.health <= 40" },
{ "Renewal", "player.health <= 40" },

}, "modifier.cooldowns" },
 
--Defensive
{ "62606", {  --Savage Defense
	"!player.buff",
	"player.health <= 95",
}},

{ "22842", { --Frenzied Regeneration
	"!player.buff",
	"player.health <= 70",
	"player.rage >= 20",
}},


-- Rotation

{ "Enrage", "player.rage < 20" }, --Enrage
{ "Mangle", "player.buff(Berserk)" }, --Mangle
--Swipe
{ "Swipe", "modifier.multitarget" }, --AoE
{ "Swipe", "modifier.rcontrol" }, --AoE
--Thrash
{ "Thrash", "modifier.multitarget" }, --AoE
{ "Thrash", "modifier.rcontrol" }, --AoE
{ "Thrash", { 
	"target.debuff.duration < 4",
	"target.range <= 5",
}},

{ "Mangle" }, --Mangle
{ "Lacerate" }, --Lacerate
{ "Faerie Fire" }, --Faerie Fire
--{ "Consecration" }, --Consecration
--Maul
{ "Maul", "player.buff(Tooth and Claw)" }, --Tooth and Claw
{ "Maul", "player.rage >= 85" }, 


}, "player.buff(Bear Form)"},

-- Cat Rotation
{{

-- Cat CDs
{ "Berserk", {
	"!player.buff(Berserk)",
	"modifier.cooldowns" 
}},
 
-- Rotation

{ "Ferocious Bite", { 
	"player.combopoints = 5",
	"target.debuff(Rip).duration >= 6",
}},

{ "Rip", "player.combopoints = 5" },
{ "Faerie Fire", "!target.debuff(Weakened Armor)" },
--{ "Consecration" },
{ "Rake", "target.debuff(Rake).duration <= 4" },
{ "Mangle" },

}, "player.buff(Cat Form)"},

},

--No Combat
{
-- Mark of the Wild
{ "Mark of the Wild", { 
	"!player.buff(Mark of the Wild).any", 
	"!player.buff(Blessing of Kings).any", 
	"!player.buff(Legacy of the Emperor).any" ,
	"player.form = 0"
}},

--

-- Stampeding Roar
{ "Stampeding Roar", "modifier.rshift" },

})



