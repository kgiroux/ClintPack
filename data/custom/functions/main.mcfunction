advancement grant @s[advancements={custom:livestock/skeleton_horse=false},nbt={RootVehicle:{Entity:{id:"minecraft:skeleton_horse"}}}] only custom:livestock/skeleton_horse
advancement grant @s[advancements={minecraft:nether/respawn_anchor=false},nbt={SpawnDimension:"minecraft:the_nether"}] only minecraft:nether/respawn_anchor

execute at @s[advancements={minecraft:nether/strider=false},nbt={RootVehicle:{Entity:{id:"minecraft:strider"}}}] positioned ~ ~-1 ~ if entity @e[type=strider,limit=1,sort=nearest,distance=..0.1] run function custom:strider

execute as @s[advancements={minecraft:nether/soul_speed=false}] at @s if predicate custom:soul_speed_boots if block ~ ~-0.1 ~ #minecraft:soul_speed_blocks run advancement grant @s only minecraft:nether/soul_speed

execute unless entity @s[advancements={custom:villages/internal/pillaged=true}] run advancement revoke @s only custom:villages/internal/pillaged