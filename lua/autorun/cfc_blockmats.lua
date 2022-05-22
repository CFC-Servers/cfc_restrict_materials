local ENT = FindMetaTable("Entity")

function ENT:SetMaterial( mat )
    if mat and string.sub(mat, 1, 3) == "pp/" then return end -- Reject setting any material that starts with "pp/"

    ENT.SetMaterial( self, mat )
end

function ENT:SetSubMaterial( idx, mat )
    if mat and string.sub( mat, 1, 3 ) == "pp/" then return end

    ENT.SetSubMaterial( self, idx, mat )
end
