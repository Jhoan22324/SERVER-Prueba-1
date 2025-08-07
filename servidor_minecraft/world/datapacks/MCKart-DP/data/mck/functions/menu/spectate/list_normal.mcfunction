scoreboard players add temp mck_temp 1

execute store result score lobbyjoinlocked mck_temp run data get storage temp lobby[0].joinlocked
execute store result score lobbyplayers mck_temp run data get storage temp lobby[0].players
execute store result score lobbystatus mck_temp run data get storage temp lobby[0].status
execute store result score lobbygametime mck_temp run data get storage temp lobby[0].gametime
execute store result score lobbyid mck_temp run data get storage temp lobby[0].id

execute if score lobbystatus mck_temp matches 2 run scoreboard players operation time mck_time = lobbygametime mck_temp
execute if score lobbystatus mck_temp matches 2 run scoreboard players set skip_digits mck_time 1
execute if score lobbystatus mck_temp matches 2 run function mck:time/calc


item replace block 0 0 0 container.0 with gold_nugget{display:{Name:'{"translate":"menu.page.play.normallobby","color":"#D6972B","bold":true,"italic":false}'},CustomModelData:102,killme:1b} 1

item modify block 0 0 0 container.0 mck:lobbybar/ingame

item modify block 0 0 0 container.0 mck:normal_lobby

execute if score lobbyplayers mck_temp matches ..11 run data remove block 0 0 0 Items[0].tag.display.Lore[17]
execute if score lobbyplayers mck_temp matches ..10 run data remove block 0 0 0 Items[0].tag.display.Lore[16]
execute if score lobbyplayers mck_temp matches ..9 run data remove block 0 0 0 Items[0].tag.display.Lore[15]
execute if score lobbyplayers mck_temp matches ..8 run data remove block 0 0 0 Items[0].tag.display.Lore[14]
execute if score lobbyplayers mck_temp matches ..7 run data remove block 0 0 0 Items[0].tag.display.Lore[13]
execute if score lobbyplayers mck_temp matches ..6 run data remove block 0 0 0 Items[0].tag.display.Lore[12]
execute if score lobbyplayers mck_temp matches ..5 run data remove block 0 0 0 Items[0].tag.display.Lore[11]
execute if score lobbyplayers mck_temp matches ..4 run data remove block 0 0 0 Items[0].tag.display.Lore[10]
execute if score lobbyplayers mck_temp matches ..3 run data remove block 0 0 0 Items[0].tag.display.Lore[9]
execute if score lobbyplayers mck_temp matches ..2 run data remove block 0 0 0 Items[0].tag.display.Lore[8]
execute if score lobbyplayers mck_temp matches ..1 run data remove block 0 0 0 Items[0].tag.display.Lore[7]
execute if score lobbyplayers mck_temp matches ..0 run data remove block 0 0 0 Items[0].tag.display.Lore[6]


execute unless score lobbystatus mck_temp matches 2 run item modify block 0 0 0 container.0 mck:lobbybar/no_race

execute if score temp mck_temp matches 1 run data modify block 0 0 0 Items[0].tag.lobby set value 1
execute if score temp mck_temp matches 1 run item replace entity @s inventory.9 from block 0 0 0 container.0
execute if score temp mck_temp matches 2 run data modify block 0 0 0 Items[0].tag.lobby set value 2
execute if score temp mck_temp matches 2 run item replace entity @s inventory.10 from block 0 0 0 container.0
execute if score temp mck_temp matches 3 run data modify block 0 0 0 Items[0].tag.lobby set value 3
execute if score temp mck_temp matches 3 run item replace entity @s inventory.11 from block 0 0 0 container.0
execute if score temp mck_temp matches 4 run data modify block 0 0 0 Items[0].tag.lobby set value 4
execute if score temp mck_temp matches 4 run item replace entity @s inventory.12 from block 0 0 0 container.0
execute if score temp mck_temp matches 5 run data modify block 0 0 0 Items[0].tag.lobby set value 5
execute if score temp mck_temp matches 5 run item replace entity @s inventory.13 from block 0 0 0 container.0
execute if score temp mck_temp matches 6 run data modify block 0 0 0 Items[0].tag.lobby set value 6
execute if score temp mck_temp matches 6 run item replace entity @s inventory.14 from block 0 0 0 container.0
execute if score temp mck_temp matches 7 run data modify block 0 0 0 Items[0].tag.lobby set value 7
execute if score temp mck_temp matches 7 run item replace entity @s inventory.15 from block 0 0 0 container.0
execute if score temp mck_temp matches 8 run data modify block 0 0 0 Items[0].tag.lobby set value 8
execute if score temp mck_temp matches 8 run item replace entity @s inventory.16 from block 0 0 0 container.0
execute if score temp mck_temp matches 9 run data modify block 0 0 0 Items[0].tag.lobby set value 9
execute if score temp mck_temp matches 9 run item replace entity @s inventory.17 from block 0 0 0 container.0


data remove storage temp lobby[0]
execute if data storage temp lobby[0] run function mck:menu/spectate/list_normal