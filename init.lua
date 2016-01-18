minetest.register_on_joinplayer(function(player)
	local filename = minetest.get_modpath("player_textures").."/textures/player_"..player:get_player_name()
	local f = io.open(filename..".png")
	if f then
		f:close()
		default.player_set_textures(player, {"[combine:64x32:0,0=player_"..player:get_player_name()..".png:"})
	end
end)
