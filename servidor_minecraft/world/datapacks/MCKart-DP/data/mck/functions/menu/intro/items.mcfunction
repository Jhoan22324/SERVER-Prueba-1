function mck:menu/bar/bar_set_item
item replace entity @s inventory.5 with gold_nugget{display:{Name:'{"translate":"menu.bar.challenges","color":"#EBC20F","bold":true,"italic":false}'},CustomModelData:128,killme:1b} 1


execute if score @s mck_scene matches 12 run item replace entity @s inventory.0 with gold_nugget{display:{Name:'{"translate":"menu.bar.play","color":"#80B524","bold":true,"italic":false}'},CustomModelData:173,killme:1b} 1
execute if score @s mck_scene matches 12 run item replace entity @s inventory.4 with gold_nugget{display:{Name:'{"text":" "}'},CustomModelData:10015,killme:1b} 1

execute if score @s mck_scene matches 13 run function mck:menu/page_play/page_play_items


execute if score @s mck_scene matches 14 run item replace entity @s inventory.4 with gold_nugget{display:{Name:'{"text":" "}'},CustomModelData:10001,killme:1b} 1
execute if score @s mck_scene matches 14 run item replace entity @s inventory.0 with gold_nugget{display:{Name:'{"translate":"menu.page.lobby.lobby_view","color":"#D4E0CE","bold":true,"italic":false}'},CustomModelData:111,killme:1b} 1
execute if score @s mck_scene matches 14 run item replace entity @s inventory.26 with gold_nugget{display:{Name:'{"translate":"menu.page.lobby.leave","color":"#FF6040","bold":true,"italic":false}'},CustomModelData:115,menu:1b,killme:1b} 1
execute if score @s mck_scene matches 14 run scoreboard players set players mck_temp 0
execute if score @s mck_scene matches 14 run function mck:menu/page_lobby/list_players
execute if score @s mck_scene matches 14 run item replace entity @s inventory.9 from block 0 0 0 container.0
execute if score @s mck_scene matches 14 run item replace entity @s inventory.1 with gold_nugget{display:{Name:'{"translate":"menu.bar.tracks","color":"#61B5FF","bold":true,"italic":false}'},CustomModelData:131,killme:1b} 1

execute if score @s mck_scene matches 15 run function mck:menu/page_tracks/page_tracks_items
execute if score @s mck_scene matches 15 run item replace entity @s inventory.4 with gold_nugget{display:{Name:'{"text":" "}'},CustomModelData:10016,killme:1b} 1

execute if score @s mck_scene matches 16 run item replace entity @s inventory.4 with gold_nugget{display:{Name:'{"text":" "}'},CustomModelData:10015,killme:1b} 1