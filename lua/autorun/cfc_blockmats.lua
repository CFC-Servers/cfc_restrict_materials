local ENT = FindMetaTable("Entity")
ENT._SetMaterial = ENT._SetMaterial or ENT.SetMaterial
ENT._SetSubMaterial = ENT._SetSubMaterial or ENT.SetSubMaterial


function ENT:SetMaterial( mat )
    if mat and string.sub(mat, 1, 3) == "pp/" then return end -- Reject setting any material that starts with "pp/"

    ENT._SetMaterial( self, mat )
end

function ENT:SetSubMaterial( idx, mat )
    if mat and string.sub( mat, 1, 3 ) == "pp/" then return end

    ENT._SetSubMaterial( self, idx, mat )
end
