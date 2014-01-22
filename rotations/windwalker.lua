-- SPEC ID 269 (Windwalker) 
-- Vers: 1.0                   
-- Last Update:    
-- Author: Kroniq                             

ProbablyEngine.rotation.register_custom(269, "Kroniq Windwalker", {

--Pause
  { "pause", "modifier.alt" },

--Racials

  { "Stoneform", "player.health <= 65" },

  { "Every Man for Himself", "player.state.charm" },
  { "Every Man for Himself", "player.state.fear" },
  { "Every Man for Himself", "player.state.incapacitate" },
  { "Every Man for Himself", "player.state.sleep" },
  { "Every Man for Himself", "player.state.stun" },

  { "Gift of the Naaru", "player.health <= 70", "player" },

  { "Escape Artist", "player.state.root" },
  { "Escape Artist", "player.state.snare" },

  { "Shadowmeld", "target.threat >= 80" },
  { "Shadowmeld", "focus.threat >= 80"},

  { "Will of the Forsaken", "player.state.fear" },
  { "Will of the Forsaken", "player.state.charm" },
  { "Will of the Forsaken", "player.state.sleep" },

  { "Quaking Palm", "modifier.interrupts" },
  
--Don't Die 
  { "Healing Sphere", "modifier.shift", "ground" },
  { "Expel Harm", "player.health < 40" },
  { "#5512" , "player.health < 40" }, --Healthstone
  { "Fortifying Brew", "player.health <= 30" },
  { "Touch of Karma", "player.health <= 50" },
  { "Nimble Brew", "player.state.fear" },
  { "Nimble Brew", "player.state.stun" },
  { "Nimble Brew", "player.state.root" },
  { "Nimble Brew", "player.state.horror" },
  { "Dampen Harm", "player.health <= 50" },
  { "Diffuse Magic", "player.health <= 45" },
  
--CoolDowns 
 
  { "Invoke Xuen, The White Tiger", "modifier.cooldowns" },
  { "Touch of Karma", "modifier.cooldowns" },
  { "Lifeblood" },

--Interupts
  { "Leg Sweep", {"modifier.interrupts", "target.range <= 5"} },
  { "Spear Hand Strike", "modifier.interupts" },
  
--Touch of Death
  { "Touch of Death", "player.buff(Death Note)" },
  
--Brews
  { "Energizing Brew", "player.energy < 40" },
  { "Tigereye Brew", "player.buff(Tigereye Brew).count >= 10" },
  { "Chi Brew", "player.chi <= 1" },
 
--AoE Rotation 
  
  { "Rising Sun Kick", { "!target.debuff(Rising Sun Kick), player.chi <= 2", "modifier.multitarget"} },
  { "Rising Sun Kick", { "!target.debuff(Rising Sun Kick), player.chi <= 2", "modifier.control"} },  
  { "Spinning Crane Kick", "modifier.multitarget" },
  { "Spinning Crane Kick", "modifier.control" },
   
--ST Rotation
{{ 
  { "Rising Sun Kick" },
  { "Tiger Palm", "!player.buff(Tiger Power)" },
  { "Blackout Kick", "player.buff(Combo Breaker: Blackout Kick)" },
  { "Fists of Fury", {"player.energy < 30", "target.range <= 8"} },
  { "Tiger Palm", "player.buff(Combo Breaker: Tiger Palm)" },
  { "Chi Wave", "player.energy >= 60" },
  { "Blackout Kick" },
}, {"player.chi >= 3", "!modifier.control", "!modifier.multitarget"} },
 
 { "Expel Harm", "player.health < 80" },
 { "Jab" },

},
--OOC
{
--Buffs
  { "Legacy of the Emperor", { "!player.buff(Legacy of the Emperor).any", "!player.buff(Mark of the Wild).any", "!player.buff(Blessing of Kings).any" } },
  { "Legacy of the White Tiger", { "!player.buff(Legacy of the White Tiger).any", "!player.buff(Arcane Brilliance).any", "!player.buff(Dalaran Brilliance).any"} },

--Heal
  { "Expel Harm", "player.health < 95" },
  { "Healing Sphere", "modifier.shift", "ground" }, 

})
