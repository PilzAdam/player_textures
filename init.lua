local mod_path = minetest.get_modpath(minetest.get_current_modname())
local got_tex = {}
local got_gdl = minetest.get_dir_list

if got_gdl then
	for _, name in pairs(minetest.get_dir_list(mod_path.."/textures")) do
		if name:sub(0, 7) == "player_" then
			local player_name = name:sub(7):match("(.+)%.")
			got_tex[player_name] = true
		end
	end
end

minetest.register_on_joinplayer(function(player)
	local player_name = player:get_player_name()
	local tex = "player_"..player_name..".png"
	if got_gdl then
		if not got_tex[player_name] then return end
	else
		if not io.open(mod_path.."/textures/"..tex) then
			return
		end
	end
	player:set_properties({textures = {tex}})
end)
