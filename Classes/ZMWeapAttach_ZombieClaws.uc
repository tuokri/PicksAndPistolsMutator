class ZMWeapAttach_ZombieClaws extends ZMWeapAttach_Katana;

DefaultProperties
{
	//CarrySocketName=WeaponSling // Add a socket to carry this weapon on the hip?
	ThirdPersonHandsAnim=Idle
	IKProfileName=F1

	// Weapon SkeletalMesh
	/*
	Begin Object Name=SkeletalMeshComponent0
		SkeletalMesh=SkeletalMesh'ZM_WP_RS_3rd_Master.Mesh_UPGD.Katana_3rd_Master'
		CullDistance=5000
	End Object
	*/

	WeaponClass=class'ZMWeap_ZombieClaws'

	// ROPawn weapon specific animations
	CHR_AnimSet=AnimSet'ZM_Zombie_Melee_Anims.Zombie_Melee_AnimSet'

	// Player animations - Weapon Actions
	HolsterWeaponAnim=Katana_Putaway
	EquipWeaponAnim=Katana_pullout
	EquipWeaponIronAnim=Katana_pullout

	// Melee Attacks: Bash or stab is randomly picked to add variety to the sword attacks
	MeleeBash1Anim=Katana_Attack_1
    MeleeBash1Anim_CH=CH_Katana_Attack_1
    MeleeStabAnim=Katana_Attack_2
	MeleeStabAnim_CH=CH_Katana_Attack_2
	MeleeStabAnim_Prone=Prone_Katana_Attack_Stab
	// Melee Charge Attacks
	MeleeBashChargeAnim=Katana_Attack_Hard
	MeleeBashChargeAnim_CH=CH_Katana_Attack_Hard
	MeleeStabChargeAnim=Katana_Attack_Hard
	MeleeStabChargeAnim_CH=CH_Katana_Attack_Hard
}
