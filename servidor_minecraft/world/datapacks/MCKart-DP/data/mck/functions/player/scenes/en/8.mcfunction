execute if score @s mck_scene_anim matches 540 run stopsound @s master custom:en.start.manager6
execute if score @s mck_scene_anim matches 540 run playsound custom:en.start.manager7 master @s ~ ~ ~ 1 1
execute if score @s mck_scene_anim matches 540 run tag @s add phone_bar
execute if score @s mck_scene_anim matches 540 run bossbar set phone players @a[tag=phone_bar]
execute if score @s mck_scene_anim matches 540 run function mck:menu/draw

execute if score @s mck_scene_anim matches 540 run effect give @s invisibility infinite 0 true

execute if score @s mck_scene_anim matches 470..540 run title @s actionbar {"translate":"subtitles.manager36","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 420..470 run title @s actionbar {"translate":"subtitles.manager37","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 340..420 run title @s actionbar {"translate":"subtitles.manager38","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 215..340 run title @s actionbar {"translate":"subtitles.manager39","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 140..215 run title @s actionbar {"translate":"subtitles.manager40","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 40..140 run title @s actionbar {"translate":"subtitles.manager41","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 1..40 run title @s actionbar {"translate":"subtitles.manager42","color":"#DEDEDE","bold":false,"italic":false}

execute if score @s mck_scene_anim matches 2 run tag @s remove phone_bar

execute if score @s mck_scene matches 13 if score @s mck_scene_anim matches 2.. run scoreboard players remove @s mck_scene_anim 1