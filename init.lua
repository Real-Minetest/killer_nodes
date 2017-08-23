--[[

   Killer Nodes init.lua

   Copyright 2017 Hamlet <h4mlet@riseup.net>

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
   MA 02110-1301, USA.

]]--


--
-- Damage per second, character's max health points = 20
--

-- Death in one minute
local slow = {damage_per_second = 0.333333}

-- Death in six seconds
local medium = {damage_per_second = 3.333333}

-- Deat in three seconds
local fast = {damage_per_second = 6.666666}

-- Instant death
local immediate = {damage_per_second = 20}


--
-- Default Minetest Game's nodes
--

minetest.override_item("default:sand", slow)

minetest.override_item("default:desert_sand", slow)

minetest.override_item("default:silver_sand", slow)

minetest.override_item("default:gravel", medium)

minetest.override_item("default:lava_source", immediate)

minetest.override_item("default:lava_flowing", immediate)

minetest.override_item("fire:basic_flame", fast)

minetest.override_item("fire:permanent_flame", fast)

minetest.override_item("default:torch", medium)


--
-- Support for [Mod] Fallen Nodes [fallen_nodes]
--

if minetest.get_modpath("fallen_nodes") then

   minetest.override_item("default:cobble", medium)

   minetest.override_item("default:mossycobble", medium)

   minetest.override_item("default:desert_cobble", medium)


--[[
   --
   -- Stairs and slabs | Disabled due to damage on walking over
   --

   minetest.override_item("stairs:stair_cobble", medium)

   minetest.override_item("stairs:stair_outer_cobble", medium)

   minetest.override_item("stairs:stair_inner_cobble", medium)

   minetest.override_item("stairs:slab_cobble", medium)

   minetest.override_item("stairs:stair_mossycobble", medium)

   minetest.override_item("stairs:stair_outer_mossycobble", medium)

   minetest.override_item("stairs:stair_inner_mossycobble", medium)

   minetest.override_item("stairs:slab_mossycobble", medium)

   minetest.override_item("stairs:stair_desert_cobble", medium)

   minetest.override_item("stairs:stair_inner_desert_cobble", medium)

   minetest.override_item("stairs:stair_outer_desert_cobble", medium)

   minetest.override_item("stairs:slab_desert_cobble", medium)
]]--

   --
   -- Soft / Non-Stone
   --

   minetest.override_item("default:dirt", slow)

   minetest.override_item("default:dirt_with_grass", slow)

   minetest.override_item("default:dirt_with_grass_footsteps", slow)

   minetest.override_item("default:dirt_with_dry_grass", slow)

   minetest.override_item("default:dirt_with_snow", slow)

   minetest.override_item("default:dirt_with_rainforest_litter", slow)


   --
   -- Plantlife (non-cubic)
   --

   minetest.override_item("default:cactus", fast)

end


--
-- Support for [Mod] Fallen Trees [fallen_trees]
--

if minetest.get_modpath("fallen_trees") then

   minetest.override_item("default:tree", fast)

   minetest.override_item("default:jungletree", fast)

   minetest.override_item("default:pine_tree", fast)

   minetest.override_item("default:acacia_tree", fast)

   minetest.override_item("default:aspen_tree", fast)

end

--
-- Support for [Mod] Experimental mapgen [mg]
--

if minetest.get_modpath("mg") then

   minetest.override_item("mg:dirt_with_dry_grass", slow)

end


--
-- Support for [Mod] Darkage [darkage]
--

if minetest.get_modpath("darkage") then

   minetest.override_item("darkage:chalk", medium)

   minetest.override_item("darkage:basalt_rubble", medium)

   minetest.override_item("darkage:cobble_with_plaster", medium)

   minetest.override_item("darkage:darkdirt", slow)

   minetest.override_item("darkage:gneiss_rubble", medium)

   minetest.override_item("darkage:mud", fast)

   minetest.override_item("darkage:ors_rubble", medium)

   minetest.override_item("darkage:silt", fast)

   minetest.override_item("darkage:slate_rubble", medium)

end


if minetest.settings:get("log_mods") then
   minetest.log("action", "[Mod] Killer Nodes loaded")
end
