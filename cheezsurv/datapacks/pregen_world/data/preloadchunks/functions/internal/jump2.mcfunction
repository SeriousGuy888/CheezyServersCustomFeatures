tp @s ~-288 110 ~ ~ 50
execute if score @s jump2 matches 1.. run scoreboard players remove @s jump2 1
execute if score @s jump2 matches ..0 run scoreboard players add @s stage 1
function preloadchunks:internal/get.pos

scoreboard players remove #totaljumps preload_chunks 1

execute if score @s jump2 matches 1.. run tellraw @s [{"text":"Jumping West (-X): ","color":"yellow"},{"score":{"name":"@s","objective":"jump2"},"color":"gold","bold":true},{"text":" jumps remaining...","color":"yellow","bold":false}]
execute if score @s jump2 matches ..0 run tellraw @s [{"text":"Jumping North (-Z): ","color":"yellow"},{"score":{"name":"@s","objective":"jump3"},"color":"gold","bold":true},{"text":" jumps remaining...","color":"yellow","bold":false}]
tellraw @s [{"text":"Total jumps remaining: ","color":"yellow"},{"score":{"name":"#totaljumps","objective":"preload_chunks"},"color":"gold","bold":true}]
