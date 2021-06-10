/datum/species/smutant
	name = "Super Mutant"
	id = "smutant"
	say_mod = "yells"
	limbs_id = "smutant"
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
	if(rank in GLOB.vault_positions) //How did they even get in??
		return 0
	if(rank in GLOB.den_positions) //Super Mutants tend to attract attention, bad for the town.
		return 0
	if(rank in GLOB.ncr_positions) //Camp Miller wasn't expecting special forces
		return 0
	if(rank in GLOB.wasteland_positions) //Calling a Super Mutant just a waster is generally a bad idea.
		return 0
	if(rank in GLOB.tribal_positions) //The isolation of the tribe has prevented Super Mutants from being a part of them.
		return 0
	if(rank in GLOB.followers_positions) //Followers don't have anything against intelligent super mutants, but they don't have any within their ranks in Pahrump.
		return 0
	if(rank in GLOB.enclave_positions) //DIE MUTIE!!
		return 0			
	return ..()
