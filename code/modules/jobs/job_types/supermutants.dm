/datum/job/supermutants //do NOT use this for anything, it's just to store faction datums.
	department_flag = SUPERMUTANTS
	selection_color = "#26ad22"

	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/supermutants/

	objectivesList = list("You are a remnant of the Master's Army, or of the Enclave's experiments with FEV. Now, you are free from the direct influence of both, the former destroyed, and the latter a shell of their former selves. You alone now decide your path.")


/datum/outfit/job/supermutants/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return

/datum/outfit/job/supermutant/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/smlt) //adjust recipes as needed for night kin and more Super Mutant armor
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/gladiator)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/smleather)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/warrior)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/crusher)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/smyeti)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/smcasual)

/*
NCR Super Mutant
*/

/datum/job/supermutants/f13ncrsupermutant
	title = "NCR Super Mutant"
	flag = F13NCRSUPERMUTANT
	faction = "NCR"
	head_announce = list("Security")
	description = "After the Defeat of The Master, you pledged yourself to the fledgling New California Republic. Life is not always easy for Super Mutants in the NCR, and you may not always be treated fairly, but you're committed to the ideals of Freedom the NCR aims for. Serve well, and prove that your kind are not the monsters others make you out to be."
	supervisors = "Corporal and above if Trooper, Veteran Ranger and above if Ranger."
	selection_color = "#2f8b0a"
	req_admin_notify = 1

	exp_requirements = 6000
	exp_type = EXP_TYPE_NCR

	loadout_options = list(
	/datum/outfit/loadout/ranger, //Ranger armor, Service Carbine, .44 revolver 
	/datum/outfit/loadout/trooper, //Trooper armor, service rifle, 9mm pistol
	)
	total_positions = 1
	spawn_positions = 1

	outfit = /datum/outfit/job/supermutant

	access = list(ACCESS_NCR)
	minimal_access = list(ACCESS_NCR)

/datum/outfit/job/f13ncrsupermutant
	name 	= "NCR Super Mutant"
	id 		= /obj/item/card/id/dogtag/ncrtrooper
	uniform = /obj/item/clothing/under/f13/ncr
	jobtype = /datum/job/supermutants/f13ncrsupermutant
	belt 	= /obj/item/storage/belt/military/assault/ncr
	neck 	= /obj/item/storage/belt/holster
	ears 	= /obj/item/radio/headset/headset_ncr
	backpack = /obj/item/storage/backpack/trekker
	satchel = /obj/item/storage/backpack/satchel/trekker
	backpack_contents = list(
		/obj/item/storage/bag/money/small/settler = 1, \
		/obj/item/kitchen/knife/combat = 1, \
		/obj/item/storage/survivalkit = 1)

/datum/outfit/loadout/ranger
	name = "Super Mutant Patrol Ranger" //You don't need Ranger takedown, you ARE the takedown.
	suit = /obj/item/clothing/suit/armor/f13/ncr_smranger
	belt =	/obj/item/storage/belt/military/assault/ncr
	suit_store = /obj/item/gun/ballistic/automatic/service/carbine
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m556/rifle/assault = 1,
		/obj/item/storage/survivalkit_aid = 1,
		/obj/item/attachments/scope = 1,
		/obj/item/binoculars = 1,
		/obj/item/encryptionkey/headset_ranger,
		/obj/item/gun/ballistic/revolver/revolver44 = 1,
		/obj/item/ammo_box/m44=2
	)

/datum/outfit/loadout/trooper
	name = "Super Mutant NCR Trooper" //The heavy trooper's larger cousin.
	suit = /obj/item/clothing/suit/armor/f13/smncr
	belt =	/obj/item/storage/belt/military/assault/ncr
	suit_store = /obj/item/gun/ballistic/automatic/service
	accessory =     /obj/item/clothing/accessory/ncr/TPR
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/pistol/ninemil=1, \
		/obj/item/ammo_box/magazine/m9mm=3, \
		/obj/item/storage/survivalkit_aid=1, \
		/obj/item/ammo_box/magazine/m556/rifle/assault=3)

/*
Super Mutant Outlaw
*/

/datum/job/wasteland/f13smraider
	title = "Super Mutant Outlaw"
	flag = F13SMRAIDER
	faction = "Wastelander"
	social_faction = "Raiders"
	total_positions = 1
	spawn_positions = 1
	description = "You did not give into the NCR or give up and wander the wastes after the defeat of The Master. You are stronger, stronger than any ghoul or human out there, and you're going to prove it. You do not willingly bow to any powers, including any other outlaws, and always seek to make your way to the top of the outlaw hierarchy. Show them the age of the Super Mutant is not yet over."
	supervisors = "Your desire to DOMINATE AND DESTROY the humans!"
	selection_color = "#ff4747"
	exp_requirements = 6000
	exp_type = EXP_TYPE_OUTLAW

	outfit = /datum/outfit/job/wasteland/f13smraider

	access = list()
	minimal_access = list()
	loadout_options = list(
	/datum/outfit/loadout/supermutant_warrior,
	/datum/outfit/loadout/supermutant_crusher)

/datum/outfit/job/wasteland/f13smraider
	name = "Super Mutant Outlaw"
	jobtype = /datum/job/wasteland/f13smraider

	id			= null
	ears 		= null
	belt 		= null
	uniform 	= /obj/item/clothing/under/f13/raider_leather
	backpack 	= /obj/item/storage/backpack/satchel/explorer
	satchel 	= /obj/item/storage/backpack/satchel/explorer
	box 		= /obj/item/storage/survivalkit


/datum/outfit/loadout/supermutant_warrior
	name = "Warrior"
	suit = /obj/item/clothing/suit/armor/f13/smwarrior
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/service,
		/obj/item/ammo_box/magazine/m556/rifle/assault=3,
		/obj/item/kitchen/knife/bowie=1)

/datum/outfit/loadout/supermutant_crusher
	name = "Crusher"
	suit = /obj/item/clothing/suit/armor/f13/smcrusher
	backpack_contents = list(
		/obj/item/twohanded/fireaxe/bmprsword,
		/obj/item/gun/ballistic/automatic/pistol/n99=1,
		/obj/item/ammo_box/magazine/m10mm_adv/simple=2,
		/obj/item/megaphone=1)

/*
Super Mutant Wasterlander
*/

/datum/job/wasteland/f13smwastelander
	title = "Super Mutant Wastelander"
	flag = F13SMWASTELANDER
	faction = "Wastelander"
	total_positions = 1
	spawn_positions = 1
	description = "For whatever reason, you didn't stay around after the fall of The Master, and didn't join either the NCR or any roving bands of Super Mutants still fighting. Pahrump is one of the last stops before the East, where Super Mutants are not tolerated, and it is here that your trail has led."
	supervisors = "no one"
	selection_color = "#21b614"
	exp_requirements = 3000
	exp_type = EXP_TYPE_WASTELAND

	outfit = /datum/outfit/job/wasteland/f13smwastelander

	access = list()
	minimal_access = list()
	loadout_options = list(
	/datum/outfit/loadout/vault_mutant,
	/datum/outfit/loadout/wanderer)

/datum/outfit/job/wasteland/f13smwastelander
	name = "Wastelander"
	jobtype = /datum/job/wasteland/f13smwastelander
	id = null
	ears = null
	belt = null
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer

/datum/outfit/loadout/vault_mutant
	name = "Vaultie Super Mutant"
	uniform = /obj/item/clothing/under/armor/f13/smvault
	backpack_contents = list(
		/obj/item/pda=1,
		/obj/item/gun/ballistic/automatic/pistol/n99=1,
		/obj/item/ammo_box/magazine/m10mm_adv/simple=2,
		/obj/item/claymore/machete/reinforced=1)

/datum/outfit/loadout/wanderer
	name = "Super Mutant wanderer"
	uniform = /obj/item/clothing/under/armor/f13/smcasual
	l_hand = /obj/item/gun/ballistic/automatic/varmint
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m556/rifle=2,
		/obj/item/claymore/machete/reinforced=1)
