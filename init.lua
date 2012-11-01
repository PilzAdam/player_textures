minetest.register_on_joinplayer(function(player)
	local filename = minetest.get_modpath("player_textures").."/textures/player_"..player:get_player_name()
	if io.open(filename..".png") then
		player:set_properties({
			textures = {"player_"..player:get_player_name()..".png", "player_"..player:get_player_name().."_back.png"},
		})
	end
end)
