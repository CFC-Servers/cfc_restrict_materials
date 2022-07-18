AddCSLuaFile( "cfc_blockmat/modules/materials.lua" )
include( "cfc_blockmat/modules/materials.lua")

if SERVER then
    include( "cfc_blockmats.lua" )
end
