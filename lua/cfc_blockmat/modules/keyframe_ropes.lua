local IsBad = CFCBlockMats.IsBad
local original = constraint.CreateKeyframeRope
CFCBlockMats.originals.CreateKeyframeRope = original

constraint.CreateKeyframeRope = function( a, b, material, ... )
    if IsBad( material ) then
        material = "cable/cable2"
    end

    return original( a, b, material, ... )
end
