summon minecraft:area_effect_cloud ^ ^ ^ {Duration:120,Tags:["p_cloud"]}

execute as @e[type=minecraft:area_effect_cloud,tag=p_cloud] run tp @s ^ ^ ^ ~ ~

scoreboard players reset @s portal_one