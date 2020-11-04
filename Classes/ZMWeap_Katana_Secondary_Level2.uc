class ZMWeap_Katana_Secondary_Level2 extends ROMeleeWeapon;


simulated state WeaponEquipping
{
	simulated function BeginState(Name PreviousStateName)
	{
		super.BeginState(PreviousStateName);

		ZMPlayerController(Instigator.Controller).TriggerHint(ZMHTrig_Katana);
	}
}

defaultproperties
{
	WeaponContentClass(0)="ZombieMode.ZMWeap_Katana_Content_Secondary_Level2"
	RoleSelectionImage(0)=Texture2D'ZM_RS_UI_Textures_Three.WeaponRenders.JP_Katana_UPGD2'

	// bDebugWeapon=True

	TeamIndex=`AXIS_TEAM_INDEX

	WeaponClassType=ROWCT_Melee

	Category=ROIC_Secondary
	Weight=0.05 // kg
	RoleEncumbranceModifier=0.0
	InvIndex=`ZMII_Katana_Secondary
	InventoryWeight=9

	PlayerViewOffset=(X=-1.557,Y=2.077,Z=-1.914)

	//Equip and putdown
	WeaponPutDownAnim=Katana_Putaway
	WeaponEquipAnim=Katana_Pullout
	WeaponDownAnim=Katana_Down
	WeaponUpAnim=Katana_Up

	// Idle Anim
	//Hip Idle
   	WeaponIdleAnims(0)=Katana_idle
	WeaponIdleAnims(1)=Katana_idle
	// Shouldered idle
	WeaponIdleShoulderedAnims(0)=Katana_idle
	WeaponIdleShoulderedAnims(1)=Katana_idle

	// Prone Crawl
	WeaponCrawlingAnims(0)=Katana_CrawlF
	WeaponCrawlStartAnim=Katana_Crawl_into
	WeaponCrawlEndAnim=Katana_Crawl_out

	// Sprinting
	WeaponSprintStartAnim=Katana_1H_sprint_into
	WeaponSprintLoopAnim=Katana_1H_Sprint
	WeaponSprintEndAnim=Katana_1H_sprint_out

	// Mantling
	WeaponMantleOverAnim=Katana_Mantle

	// Cover/Blind Fire Anims
	WeaponRestAnim=Katana_rest_idle
	WeaponEquipRestAnim=Katana_pullout_rest
	WeaponPutDownRestAnim=Katana_putaway_rest
	WeaponIdleToRestAnim=Katana_idleTOrest
	WeaponRestToIdleAnim=Katana_restTOidle

	// Swing anims
	WeaponSwingAnims(0)=Katana_Attack1
	WeaponSwingAnims(1)=Katana_Attack2
	WeaponSwingHardAnim=Katana_AttackHARD
	SwingPullbackAnims(0)=Katana_Pullback
	SwingPullbackAnims(1)=Katana_Pullback
	SwingHoldAnims(0)=Katana_Pullback_Hold
	SwingHoldAnims(1)=Katana_Pullback_Hold

	// Stab anims
	WeaponMeleeAnims(0)=Katana_Stab
	WeaponMeleeHardAnim=Katana_StabHard
	MeleePullbackAnim=Katana_Stab_Pullback
	MeleeHoldAnim=Katana_Stab_Pullback_Hold

	// Block anims
	WeaponBlockStartAnim=Katana_Block_into
	WeaponBlockLoopAnim=Katana_BlockHOLD
	WeaponBlockEndAnim=Katana_Block_out
	WeaponBlockDeflectAnim=Katana_Deflect

	// MAIN FIREMODE
	InstantHitDamageTypes(0)=class'ZMDmgType_Katana'

	// MELEE FIREMODE
	InstantHitDamageTypes(MELEE_ATTACK_FIREMODE)=class'ZMDmgType_KatanaStab'

	// DISMEMBERMENT DAMAGE
	DismemberDamageType=class'ZMDmgType_KatanaChop'

	SwingAttackSound=AkEvent'WW_WEP_Shared.Play_WEP_Melee_Katana_Swing'
	SwingHardAttackSound=AkEvent'WW_WEP_Shared.Play_WEP_Melee_Katana_Swing'
	SwingImpactSound=AkEvent'WW_WEP_Shared.Play_WEP_Melee_Bayonet_Hard'
	SwingAttackHitFleshSound=AkEvent'WW_WEP_Shared.Play_WEP_Melee_Bayonet_Flesh'
	MeleeAttackSound=AkEvent'WW_WEP_Shared.Play_WEP_Melee_Rifle_Swing'
	MeleeImpactSound=AkEvent'WW_WEP_Shared.Play_WEP_Melee_Bayonet_Hard'
	MeleeAttackHitFleshSound=AkEvent'WW_WEP_Shared.Play_WEP_Melee_Rifle_Impact'

	// Swing Settings
	MeleeSwingRange=60
	MeleeSwingDamage=75
	MeleeSwingChargeDamage=200

	// Stab Settings
	MeleeAttackRange=65 //75
	MeleeAttackDamage=75 //90
	MeleeAttackChargeDamage=150

	// AI
	MinBurstAmount=1
	MaxBurstAmount=1
	BurstWaitTime=1.5
}
