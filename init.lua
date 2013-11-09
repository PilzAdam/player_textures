minetest.register_on_joinplayer(function(player)
	local filename = minetest.get_modpath("player_textures").."/textures/player_"..player:get_player_name()
	if io.open(filename..".png") then
		default.player_set_textures(player, {"player_"..player:get_player_name()..".png"})
	end
end)
