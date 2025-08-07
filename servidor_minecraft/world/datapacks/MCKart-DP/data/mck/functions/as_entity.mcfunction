function ah:entitys/all


execute if entity @s[tag=data_handler] run tp @s 0 0 0 0 0

execute if entity @s[tag=recording_shower] run function mck:recordings/open/process


execute if entity @s[tag=mck_pulley] run function mck:pulley


execute if entity @s[tag=mck_spectate_entity] run function mck:player/spectate/tp


execute if entity @s[type=player] run function mck:player/player_main

execute if entity @s[type=item] if predicate mck:is_killable_item run kill @s

execute if entity @s[tag=fan] run function mck:fan

execute if entity @s[tag=mck_kart_shrink] run function mck:kart/shrink
execute if entity @s[tag=kart] run function mck:kart/kart_main

execute if entity @s[tag=bot] run function mck:bots/main

execute if entity @s[tag=mck_shop] run function mck:shop/main
execute if entity @s[tag=mck_shop_item] run function mck:shop/item_shop




execute if entity @s[tag=coin] run function mck:coin/main
execute if entity @s[tag=itembox] run function mck:itembox/main

execute if entity @s[tag=banana] run function mck:item_function/banana/banana_main
execute if entity @s[tag=fire_ball] run function mck:item_function/fireflower/fireflower_main
execute if entity @s[tag=blue_shell] run function mck:item_function/blue_shell/main
execute if entity @s[tag=red_shell] run function mck:item_function/red_shell/main
execute if entity @s[tag=bomb] run function mck:item_function/bomb/main
execute if entity @s[tag=pipe] run function mck:item_function/pipe/counter
execute if entity @s[tag=fake_itembox] run function mck:item_function/fake-itembox/main


execute if entity @s[tag=item_mount] if score @s mck_item_mount matches 1.. run function mck:item_mount/rotate
execute if entity @s[tag=item_mount] unless score @s mck_item_mount matches 1.. run data modify entity @s item.id set value "minecraft:air"


execute if entity @s[type=item_display,tag=mck_lootbox] if score lootbox_timer mck_timer matches 0 as @a[distance=..6] unless score @s mck_lootbox matches 1.. run function mck:lootbox_subtitle


#pcd
execute if entity @s[type=item_display,tag=pcd.camera] run function pcd:camera/main

execute if entity @s[tag=bob_shower] run kill @s