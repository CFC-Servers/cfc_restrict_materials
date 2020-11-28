local ENT    = FindMetaTable("Entity")
local SetMat = ENT.SetMaterial
local SubMat = ENT.SetSubMaterial
local sub    = string.sub

function ENT:SetMaterial(Mat)
    if sub(Mat, 1, 3) == "pp/" then return end -- Reject setting any material that starts with "pp/"

    SetMat(self, Mat)
end

function ENT:SetSubMaterial(Idx, Mat)
    if sub(Mat, 1, 3) == "pp/" then return end

    SubMat(self, Idx, Mat)
end