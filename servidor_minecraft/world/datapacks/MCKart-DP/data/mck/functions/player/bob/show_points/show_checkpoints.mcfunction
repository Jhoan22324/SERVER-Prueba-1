data modify entity @s Pos set from storage bob show.checkpoints[0][0]
execute if data storage bob show.checkpoints[0] at @s run particle block_marker red_concrete ~0.5 ~0.5 ~0.5 0 0 0 0 1 force @a[scores={mck_status=-72}]
data modify entity @s Pos set from storage bob show.checkpoints[0][1]
execute if data storage bob show.checkpoints[0] at @s run particle block_marker blue_concrete ~0.5 ~0.5 ~0.5 0 0 0 0 1 force @a[scores={mck_status=-72}]
data modify entity @s Pos set from storage bob show.checkpoints[0][2]
execute if data storage bob show.checkpoints[0] at @s run particle block_marker respawn_anchor ~0.5 ~0.5 ~0.5 0 0 0 0 1 force @a[scores={mck_status=-72}]

data remove storage bob show.checkpoints[0]


execute if data storage bob show.checkpoints[0] run function mck:player/bob/show_points/show_checkpoints