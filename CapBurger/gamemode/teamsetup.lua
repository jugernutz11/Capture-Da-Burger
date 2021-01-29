local ply = FindMetaTable("Player")

local teams = {}

teams[0] = {

	name = "Ketchup",
	color = Vector(1.0,1.0,0)}

teams [1] = {

	name = "Mustard",
	color = Vector(1.0,0,0)}

function ply:SetupTeam (n)
	if (not teams[n]) then return end
	local modelTable = { "male" , "female" }
	
	self:SetTeam(n)
	self: SetPlayerColor (teams[n].color)
	self:GiveAmmo( 9999,	"Pistol", 		true )
	self:Give( "weapon_pistol" )
	self:Give( "weapon_fists" )
	self:SetHealth (100)
	self:SetMaxHealth(100)
	self:SetRunSpeed(250)
	self:SetWalkSpeed(150)
	self:SetModel("models/player/Group01/"..modelTable[math.random(#modelTable)] .."_0"..math.random(1,6)..".mdl")
	end