/*
*/

/datum/job/supermutants //do NOT use this for anything, it's just to store faction datums.
	department_flag = Supermutants
	selection_color = "#26ad22"

	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/supermutants/
	exp_type = EXP_TYPE_SUPERMUTANTS

	objectivesList = list("You are a remnant of the Master's Army, or of the Enclave's experiments with FEV. Now, you are free from the direct influence of both, the former destroyed, and the latter a shell of their former selves. You alone now decide your path.")

/datum/outfit/job/supermutant
	name = "supermutantdatums"
	jobtype = 	/datum/job/supermutant
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	ears = 		/obj/item/radio/headset
	box = 		/obj/item/storage/survivalkit

/datum/outfit/job/supermutants/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return

/datum/outfit/job/supermutant/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	ADD_TRAIT(H, TRAIT_LIFEGIVER, src)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/boscombatarmor) //add super mutant armor crafting recipes to replace thse
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/boscombathelmet)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/boscombatarmormk2)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/boscombathelmetmk2)
/*
NCR Super Mutant
*/

/datum/job/supermutants/f13ncrsupermutant
	title = "NCR Super Mutant"
	flag = F13NCRSUPERMUTANT
	faction = "NCR"
	head_announce = list("Security")
	supervisors = "Sergeant First Class and above if Trooper, Veteran Ranger and above if Ranger."
	selection_color = "#2f8b0a"
	req_admin_notify = 1

	exp_requirements = 3000
	exp_type = EXP_TYPE_NCR

	loadout_options = list(
	/datum/outfit/loadout/trooper, //Trooper armor, , 
	/datum/outfit/loadout/ranger, //Ranger armor, Service Carbine, .44 revolver
	)
	total_positions = 1
	spawn_positions = 1

	outfit = /datum/outfit/job/supermutant

	access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_MINERAL_STOREROOM, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)
	minimal_access = list(ACCESS_ROBOTICS, ACCESS_BOS, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_HYDROPONICS, ACCESS_MINERAL_STOREROOM, ACCESS_KITCHEN, ACCESS_BAR, ACCESS_SEC_DOORS)

/datum/outfit/job/supermutant/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_CHEMWHIZ, src)

/datum/outfit/job/f13ncrsupermutant
	name = "NCR Super Mutant"
	jobtype = /datum/job/supermutants/f13ncrsupermutant
	suit = 			/obj/item/clothing/suit/f13/elder
	glasses =       /obj/item/clothing/glasses/night
	accessory = 	/obj/item/clothing/accessory/bos/elder
	suit_store =	/obj/item/gun/energy/laser/laer
	neck = /obj/item/clothing/neck/cloak/bos/right
	backpack_contents = list(
		/obj/item/storage/bag/money/small/settler = 1, \
		/obj/item/kitchen/knife/combat = 1, \
		)

/datum/outfit/loadout/ranger
	name = "Super Mutant Patrol Ranger"
	suit = /obj/item/clothing/smarmor/armor/f13/ncr_smranger
	belt =	/obj/item/storage/belt/military/assault/ncr
	suit_store = /obj/item/gun/ballistic/automatic/service/carbine
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m556/rifle/assault = 1,
		/obj/item/clothing/head/helmet/f13/combat/ncr_patrol = 1,
		/obj/item/storage/survivalkit_aid = 1,
		/obj/item/attachments/scope = 1,
		/obj/item/encryptionkey/headset_ranger,
		/obj/item/gun/ballistic/revolver/revolver44 = 1,
		/obj/item/ammo_box/m44=2
	)
