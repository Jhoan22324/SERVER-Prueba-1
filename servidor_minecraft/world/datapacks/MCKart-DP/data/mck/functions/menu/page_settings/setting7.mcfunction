execute if score @s mck_setting7 matches 0 run scoreboard players set bool mck_temp 1
execute if score @s mck_setting7 matches 1 run scoreboard players set bool mck_temp 0
execute if score bool mck_temp matches 1 run scoreboard players set @s mck_setting7 1
execute if score bool mck_temp matches 0 run scoreboard players set @s mck_setting7 0