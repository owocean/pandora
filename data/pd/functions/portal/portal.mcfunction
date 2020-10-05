tag @s remove stable

execute if block ^-0.5 ^-2 ^ minecraft:blackstone if block ^-1.5 ^-2 ^ minecraft:blackstone if block ^0.5 ^-2 ^ minecraft:blackstone if block ^1.5 ^-2 ^ minecraft:blackstone if block ^1.5 ^-1 ^ minecraft:blackstone if block ^-1.5 ^-1 ^ minecraft:blackstone if block ^1.5 ^ ^ minecraft:blackstone if block ^-1.5 ^ ^ minecraft:blackstone if block ^1.5 ^1 ^ minecraft:blackstone if block ^-1.5 ^1 ^ minecraft:blackstone if block ^1.5 ^2 ^ minecraft:blackstone if block ^-1.5 ^2 ^ minecraft:blackstone if block ^0.5 ^2 ^ minecraft:blackstone if block ^-0.5 ^2 ^ minecraft:blackstone run tag @s add stable
execute as @s[tag=!stable] at @s run function pd:portal/destroy

execute as @s[tag=!dead] if entity @e[tag=!plp,tag=!portal,type=#pd:p_can_tp,distance=0..3] unless entity @e[tag=plp1,distance=0..2] run summon armor_stand ^0.5 ^ ^ {Invisible:1b,NoGravity:1b,Small:1b,Tags:["plp1","plp"]}
execute as @s[tag=!dead] if entity @e[tag=!plp,tag=!portal,type=#pd:p_can_tp,distance=0..3] unless entity @e[tag=plp2,distance=0..2] run summon armor_stand ^-0.5 ^ ^ {Invisible:1b,NoGravity:1b,Small:1b,Tags:["plp2","plp"]}
execute as @s[tag=!dead] if entity @e[tag=!plp,tag=!portal,type=#pd:p_can_tp,distance=0..3] unless entity @e[tag=plp3,distance=0..2] run summon armor_stand ^0.5 ^1 ^ {Invisible:1b,NoGravity:1b,Small:1b,Tags:["plp3","plp"]}
execute as @s[tag=!dead] if entity @e[tag=!plp,tag=!portal,type=#pd:p_can_tp,distance=0..3] unless entity @e[tag=plp4,distance=0..2] run summon armor_stand ^-0.5 ^1 ^ {Invisible:1b,NoGravity:1b,Small:1b,Tags:["plp4","plp"]}
execute as @s[tag=!dead] if entity @e[tag=!plp,tag=!portal,type=#pd:p_can_tp,distance=0..3] unless entity @e[tag=plp5,distance=0..2] run summon armor_stand ^0.5 ^-1 ^ {Invisible:1b,NoGravity:1b,Small:1b,Tags:["plp5","plp"]}
execute as @s[tag=!dead] if entity @e[tag=!plp,tag=!portal,type=#pd:p_can_tp,distance=0..3] unless entity @e[tag=plp6,distance=0..2] run summon armor_stand ^-0.5 ^-1 ^ {Invisible:1b,NoGravity:1b,Small:1,Tags:["plp6","plp"]}

execute as @e[type=#pd:p_can_tp,tag=!p_teleported] at @s if predicate pd:in_overworld if entity @e[tag=plp,distance=..0.8] at @e[tag=portal,distance=0..2] rotated as @e[tag=portal,distance=0..2] in pd:pandora run function pd:portal/teleport
execute as @e[type=#pd:p_can_tp,tag=!p_teleported] at @s if predicate pd:in_pandora if entity @e[tag=plp,distance=..0.8] at @e[tag=portal,distance=0..2] rotated as @e[tag=portal,distance=0..2] in minecraft:overworld run function pd:portal/teleport

execute unless entity @e[tag=!plp,tag=!portal,type=#pd:p_can_tp,distance=0..3] if entity @e[tag=plp,distance=0..2] run kill @e[tag=plp,distance=0..2]

execute as @e[type=#pd:p_can_tp] at @s unless entity @e[tag=plp,distance=..0.8] if entity @e[tag=plp,distance=0.8..] run tag @s remove p_teleported