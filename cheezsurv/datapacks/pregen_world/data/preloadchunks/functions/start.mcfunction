execute unless entity @a[tag=preloader.start] run tellraw @a [{"text":"Use '/tag <> add preloader.start' on the player you want to use to preload the world. The player must not move in the process.\nSet the player's render distance to 9.\nThen execute this command again and the pregeneration will start.","color":"dark_gray","bold":true}]
execute as @a[tag=preloader.start] run function preloadchunks:internal/start2
