AddCSLuaFile( "cl_init.lua" ) --Tell the server that the client need to download cl_init.lua
AddCSLuaFile( "shared.lua" ) --Tell the server that the client need to download shared.lua
AddCSLuaFile( "teamsetup.lua" )
AddCSLuaFile( "cl_scoreboard.lua" )
 
include( "shared.lua" ) --Tell the server to load shared.lua
include( "teamsetup.lua" )
 
function GM:PlayerSpawn(ply)
	print("Player:"..ply:Nick().. "has spawned!")
	ply:SetupTeam(math.random(0,1))
	ply:SetupHands()
end