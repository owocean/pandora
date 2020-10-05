execute as @a[scores={portal_one=1..}] at @s rotated as @s anchored eyes positioned ^ ^ ^ run function pd:portal/cast
execute as @e[type=minecraft:area_effect_cloud,tag=p_cloud] at @s run function pd:portal/cloud
execute as @e[tag=portal] at @s run function pd:portal/portal