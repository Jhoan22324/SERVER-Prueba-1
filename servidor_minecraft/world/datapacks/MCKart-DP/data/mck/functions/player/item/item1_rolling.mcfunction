item replace block 0 0 0 container.0 with carrot_on_a_stick{display:{Name:'{"translate":"race.item.rolling","color":"dark_gray","italic": false}'},CustomModelData:1001,Unbreakable:1b,killme:1b} 1

execute store result score custommodeldata mck_temp run data get entity @s EnderItems[3].tag.item1[0] 1
scoreboard players add custommodeldata mck_temp 1000
execute store result storage temp custommodeldata int 1 run scoreboard players get custommodeldata mck_temp

item modify block 0 0 0 container.0 mck:copy_item

item replace entity @s hotbar.0 from block 0 0 0 container.0
item replace entity @s hotbar.1 from block 0 0 0 container.0
item replace entity @s hotbar.2 from block 0 0 0 container.0
item replace entity @s hotbar.3 from block 0 0 0 container.0
item replace entity @s hotbar.4 from block 0 0 0 container.0
item replace entity @s hotbar.5 from block 0 0 0 container.0
item replace entity @s hotbar.6 from block 0 0 0 container.0
item replace entity @s hotbar.7 from block 0 0 0 container.0
item replace entity @s hotbar.8 from block 0 0 0 container.0