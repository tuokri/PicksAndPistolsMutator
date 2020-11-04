class ZMRoleInfoNorthernFlamer extends ZMRoleInfoNorthernInfantry;

simulated function ExtraPawnModifiers(ZMNorthPawn NP)
{
    super.ExtraPawnModifiers(NP);
    NP.bShowFlamerBurningEffects = True;
    NP.SpawnFlamerBurningEffects();

    NP.Jumpz *= 2;
    NP.MaxFallSpeed *= 3;
    NP.AirControl *= 10;
    NP.AirSpeed *= 4;

    // Normalize Flamer health back to 100.

    // NP.HealthMax = class'ROPawn'.default.Health;
    // NP.Health = class'ROPawn'.default.Health;
}

DefaultProperties
{
	bAllowPistolsInRealism=True

	RoleType=RORIT_Scout
    ClassTier=4
    ClassIndex=`ROCI_HEAVY // 5

	ClassIcon=Texture2D'VN_UI_Textures.menu.class_icon_sapper'
	ClassIconLarge=Texture2D'VN_UI_Textures.menu.ProfileStats.class_icon_large_sapper'

	Items[RORIGM_Default]={(
        PrimaryWeapons=(class'ZombieMode.ZMWeap_M9_Flamethrower'),
        SecondaryWeapons=(class'ZombieMode.ZMWeap_Katana_Secondary_Level2'),
        OtherItems=(class'ROGame.ROItem_TunnelTool'),
        SquadLeaderItems=()
    )}

    Items[RORIGM_Campaign_Early]={(
        PrimaryWeapons=(class'ZombieMode.ZMWeap_M9_Flamethrower'),
        SecondaryWeapons=(class'ZombieMode.ZMWeap_Katana_Secondary_Level2'),
        OtherItems=(class'ROGame.ROItem_TunnelTool'),
        SquadLeaderItems=()
    )}

    Items[RORIGM_Campaign_Mid]={(
        PrimaryWeapons=(class'ZombieMode.ZMWeap_M9_Flamethrower'),
        SecondaryWeapons=(class'ZombieMode.ZMWeap_Katana_Secondary_Level2'),
        OtherItems=(class'ROGame.ROItem_TunnelTool'),
        SquadLeaderItems=()
    )}

    Items[RORIGM_Campaign_Late]={(
        PrimaryWeapons=(class'ZombieMode.ZMWeap_M9_Flamethrower'),
        SecondaryWeapons=(class'ZombieMode.ZMWeap_Katana_Secondary_Level2'),
        OtherItems=(class'ROGame.ROItem_TunnelTool'),
        SquadLeaderItems=()
    )}
}
