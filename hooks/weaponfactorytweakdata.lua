Hooks:PostHook(WeaponFactoryTweakData, "init", "counterfeit_contraband_init", function(self)
    for _, id in pairs(self.wpn_fps_ass_contraband.uses_parts) do
        local part = self.parts[id]
        local stance_mod = part and part.stance_mod
        if stance_mod and stance_mod.wpn_fps_ass_contraband then
            stance_mod.wpn_fps_counterfeit_contraband = stance_mod.wpn_fps_ass_contraband
        end
    end
end)