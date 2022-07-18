local IsBad = CFCBlockMats.IsBad
local original = constraint.Slider
CFCBlockMats.originals.Slider = original

constraint.Slider = function( a, b, c, d, e, f, g, material, ... )
    if IsBad( material ) then return end
    return original( a, b, c, d, e, f, g, material, ... )
end
