/datum/species/smutant
	name = "Super Mutant"
	id = "smutant"
	say_mod = "yells"
	limbs_id = "smutant"
	var/whitelistedsupermutants = 1 		//Restricts the species to certain players
	var/whitelistsupermutants = list() 		//List the ckeys that can use this species, if it's whitelisted.: list("John Doe", "poopface666", "SeeALiggerPullTheTrigger") Spaces & capitalization can be included or ignored entirely for each key as it checks for both.
	species_traits = list(NOTRANSSTING,NOGENITALS,NOAROUSAL)
	inherent_traits = list(TRAIT_RADIMMUNE,TRAIT_VIRUSIMMUNE)
	inherent_biotypes = list(MOB_INORGANIC, MOB_HUMANOID)
	no_equip = list(SLOT_WEAR_MASK, SLOT_W_UNIFORM, SLOT_GLOVES, SLOT_SHOES)
	punchdamagelow = 10
	punchdamagehigh = 24 //super mutants hit hard
	punchstunthreshold = 20
	use_skintones = 0
	speedmod = 1 //slower than humans, but not TOO slow that you want to tear your hair out when wearing heavier armor.
	armor = 15 //they get pretty okay armor already, don't want to make them TOO powerful, but, even naked super mutants should have a little armor. 
	sexes = 0
	liked_food = JUNKFOOD | FRIED | RAW

//Super mutants have stronger limbs
/datum/species/smutant/on_species_gain(mob/living/carbon/C, datum/species/old_species)
	..()
	for(var/obj/item/bodypart/b in C.bodyparts)
		b.max_damage += 50
	C.faction |= "supermutant"
/datum/species/smutant/on_species_loss(mob/living/carbon/C)
	..()
	C.faction -= "supermutant"
	for(var/obj/item/bodypart/b in C.bodyparts)
		b.max_damage = initial(b.max_damage)

/datum/species/smutant/qualifies_for_rank(rank, list/features)
	if(rank in GLOB.legion_positions) /* Legion isn't a fan of muties */
		return 0
	if(rank in GLOB.brotherhood_positions) //Kill it with fire.
		return 0
	if(rank in GLOB.vault_positions) //How did they even get in??.
		return 0
	return ..()
