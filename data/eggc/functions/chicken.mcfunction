scoreboard objectives add Timer dummy

execute as @e[name="EggCoin Miner", nbt={EggLayTime:1}] run tag @s add layedegg
execute as @e[tag=layedegg] run scoreboard players add @s Timer 1

execute as @e[name="EggCoin Miner", scores={Timer=2..}, tag=layedegg] at @s run kill @e[type=item, nbt={Age:0s, Item:{id:"minecraft:egg"}}, sort=nearest, limit=1, distance=..0.1]
execute as @e[name="EggCoin Miner", scores={Timer=2..}, tag=layedegg] at @s run loot spawn ~ ~ ~ loot minecraft:eggmining_table

execute as @e[name="EggCoin Miner", scores={Timer=2..}] run tag @s remove layedegg
execute as @e[name="EggCoin Miner", scores={Timer=2..}] run scoreboard players set @s Timer 0
