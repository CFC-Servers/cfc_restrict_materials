local IsBad = CFCBlockMats.IsBad
local original = constraint.Muscle
CFCBlockMats.originals.Muscle = original

constraint.Muscle = function( a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, material, ... )
    if IsBad( material ) then return end
    return original( a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, material, ... )
end
