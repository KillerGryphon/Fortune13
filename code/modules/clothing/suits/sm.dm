/obj/item/clothing/suit/armor/f13/ncr_smranger
	name = "super mutant ranger armor"
	desc = "(VI) What looks to be NCR Ranger armor and clothing, specially made for the bulk of a Super Mutant, with added protection due to it's size."
	icon = 'icons/obj/clothing/smarmor.dmi'
	icon_state = "smranger_icon"
	item_state = "smranger"
	body_parts_covered = HEAD|CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	flags_inv = HIDEJUMPSUIT|HIDENECK|HIDEEARS|HIDEEYES|HIDEHAIR
	armor = list("tier" = 6, "melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 50, "bomb" = 60, "bio" = 65, "rad" = 20, "fire" = 65, "acid" = 35)

/obj/item/clothing/suit/armor/f13/ncr_smranger/Initialize() //HQ parts reinforcement
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/suit/armor/f13/smncr
	name = "super mutant ncr armor"
	desc = "(V) This ncr patrol vest has been stretched, torn, and manipulated to fit a super mutant trooper."
	icon = 'icons/obj/clothing/smarmor.dmi'
	icon_state = "smncr_icon"
	item_state = "smncr"
	body_parts_covered = HEAD|CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	flags_inv = HIDEJUMPSUIT|HIDENECK|HIDEEARS|HIDEEYES|HIDEHAIR
	armor = list("tier" = 5, "melee" = 45, "bullet" = 45, "laser" = 45, "energy" = 45, "bomb" = 55, "bio" = 60, "rad" = 15, "fire" = 60, "acid" = 30)

/obj/item/clothing/suit/armor/f13/smncr/Initialize() //HQ parts reinforcement
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/suit/armor/f13/smwarrior
	name = "super mutant warrior armor"
	desc = "(V) A combination of metal plates, tires, and rags fit to turn a Super Mutant into an armored combatant."
	icon = 'icons/obj/clothing/smarmor.dmi'
	icon_state = "smwarrior_icon"
	item_state = "smwarrior"
	body_parts_covered = HEAD|CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	flags_inv = HIDEJUMPSUIT|HIDENECK|HIDEEARS|HIDEEYES|HIDEHAIR
	armor = list("tier" = 5, "melee" = 45, "bullet" = 45, "laser" = 45, "energy" = 45, "bomb" = 55, "bio" = 60, "rad" = 15, "fire" = 60, "acid" = 30)

/obj/item/clothing/suit/armor/f13/smlt
	name = "super mutant lieutenant armor"
	icon = 'icons/obj/clothing/smarmor.dmi'
	desc = "(VII) A forged suit of armor made for the bulk of a Super Mutant, a high ranking one in The Master's army."
	icon_state = "smlieutenant_icon"
	item_state = "smlieutenant"
	body_parts_covered = HEAD|CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	flags_inv = HIDEJUMPSUIT|HIDENECK|HIDEEARS|HIDEEYES|HIDEHAIR
	armor = list("tier" = 7, "melee" = 55, "bullet" = 55, "laser" = 55, "energy" = 55, "bomb" = 60, "bio" = 65, "rad" = 20, "fire" = 65, "acid" = 35)

/obj/item/clothing/suit/armor/f13/smgladiator
	name = "super mutant gladiator armor"
	icon = 'icons/obj/clothing/smarmor.dmi'
	desc = "(VI) An armored super mutant is bad enough, but this one make a super mutant HEAVILY armored. Better place some sandbags right about now."
	icon_state = "smgladiator_icon"
	item_state = "smgladiator"
	body_parts_covered = HEAD|CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	flags_inv = HIDEJUMPSUIT|HIDENECK|HIDEEARS|HIDEEYES|HIDEHAIR
	armor = list("tier" = 6, "melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 50, "bomb" = 60, "bio" = 65, "rad" = 20, "fire" = 65, "acid" = 35)

/obj/item/clothing/suit/armor/f13/smgladiator/Initialize() //HQ parts reinforcement
	. = ..()
	AddComponent(/datum/component/armor_plate)	

/obj/item/clothing/suit/armor/f13/smleather
	name = "super mutant leather armor"
	icon = 'icons/obj/clothing/smarmor.dmi'
	desc = "(III) A combination of leather and metal plating, this leather armor fits only the bulk of a super mutant comfortably. Sadly, aiming at the exposed flesh won't make much difference to their victims."
	icon_state = "smleather_icon"
	item_state = "smleather"
	body_parts_covered = HEAD|CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	flags_inv = HIDEJUMPSUIT|HIDENECK|HIDEEARS|HIDEEYES|HIDEHAIR
	armor = list("tier" = 3, "melee" = 35, "bullet" = 35, "laser" = 35, "energy" = 35, "bomb" = 35, "bio" = 40, "rad" = 10, "fire" = 60, "acid" = 10)

/obj/item/clothing/under/armor/f13/smcasual
	name = "super mutant clothing"
	icon = 'icons/obj/clothing/smarmor.dmi'
	desc = "A pair of large jeans and a large tattered tanktop that now serves as clothing for a super mutant."
	icon_state = "smcasual1_icon"
	item_state = "smcasual1"
	body_parts_covered = HEAD|CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	flags_inv = HIDEJUMPSUIT|HIDENECK|HIDEEARS|HIDEEYES|HIDEHAIR
	armor = list("tier" = 1, "melee" = 5, "bullet" = 5, "laser" = 5, "energy" = 5, "bomb" = 5, "bio" = 0, "rad" = 30, "fire" = 20, "acid" = 0)

/obj/item/clothing/under/armor/f13/smvault
	name = "super mutant clothing"
	icon = 'icons/obj/clothing/smarmor.dmi'
	desc = "Fresh out of the FEV vat, this super mutant vault jumpsuit has been torn due to the mutations."
	icon_state = "smvaultjumpsuit_icon"
	item_state = "smvaultjumpsuit"
	body_parts_covered = HEAD|CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	flags_inv = HIDEJUMPSUIT|HIDENECK|HIDEEARS|HIDEEYES|HIDEHAIR
	armor = list("tier" = 1, "melee" = 5, "bullet" = 5, "laser" = 5, "energy" = 5, "bomb" = 5, "bio" = 0, "rad" = 30, "fire" = 20, "acid" = 0)

/obj/item/clothing/suit/armor/f13/smyeti
	name = "super mutant yeti armor"
	desc = "(III) An oddly familiar set of clothing that is mostly rags, the only armor being a sign strapped to an arm like a shield."
	icon = 'icons/obj/clothing/smarmor.dmi'
	icon_state = "smyeti_icon"
	item_state = "smyeti"
	body_parts_covered = HEAD|CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	flags_inv = HIDEJUMPSUIT|HIDENECK|HIDEEARS|HIDEEYES|HIDEHAIR
	armor = list("tier" = 3, "melee" = 35, "bullet" = 35, "laser" = 35, "energy" = 35, "bomb" = 35, "bio" = 40, "rad" = 10, "fire" = 60, "acid" = 10)

/obj/item/clothing/suit/armor/f13/nkwarrior
	name = "night kin warrior armor"
	desc = "(V) Rags covering metal plating that armor this night kin for combat."
	icon = 'icons/obj/clothing/smarmor.dmi'
	icon_state = "nkwarrior_icon"
	item_state = "nkwarrior"
	body_parts_covered = HEAD|CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	flags_inv = HIDEJUMPSUIT|HIDENECK|HIDEEARS|HIDEEYES|HIDEHAIR
	armor = list("tier" = 5, "melee" = 45, "bullet" = 45, "laser" = 45, "energy" = 45, "bomb" = 55, "bio" = 60, "rad" = 15, "fire" = 60, "acid" = 30)

/obj/item/clothing/suit/armor/f13/nkcmmdo
	name = "night kin commando armor"
	desc = "(VI) Combat armor that has been painted and fitted for a night kin to fight in stealth... as stealthfully as a super mutant can be."
	icon = 'icons/obj/clothing/smarmor.dmi'
	icon_state = "nkcommando_icon"
	item_state = "nkcommando"
	body_parts_covered = HEAD|CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	flags_inv = HIDEJUMPSUIT|HIDENECK|HIDEEARS|HIDEEYES|HIDEHAIR
	armor = list("tier" = 6, "melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 50, "bomb" = 60, "bio" = 65, "rad" = 20, "fire" = 65, "acid" = 35)

/obj/item/clothing/suit/armor/f13/nkchief
	name = "night kin chief armor"
	desc = "(VII) The Master's army once had many night kin assassins, and this set of armor belongs to one of their commanders, who now lead other night kin."
	icon = 'icons/obj/clothing/smarmor.dmi'
	icon_state = "nkchief_icon"
	item_state = "nkchief"
	body_parts_covered = HEAD|CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	flags_inv = HIDEJUMPSUIT|HIDENECK|HIDEEARS|HIDEEYES|HIDEHAIR
	armor = list("tier" = 7, "melee" = 55, "bullet" = 55, "laser" = 55, "energy" = 55, "bomb" = 60, "bio" = 65, "rad" = 20, "fire" = 65, "acid" = 35)

/obj/item/clothing/suit/armor/f13/smcrusher
	name = "super mutant crusher armor"
	desc = "(V) A set of armor fit for a super mutant specializing in melee combat. Don't let them get too close!"
	icon = 'icons/obj/clothing/smarmor.dmi'
	icon_state = "smcrusher_icon"
	item_state = "smcrusher"
	body_parts_covered = HEAD|CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	flags_inv = HIDEJUMPSUIT|HIDENECK|HIDEEARS|HIDEEYES|HIDEHAIR
	armor = list("tier" = 5, "melee" = 60, "bullet" = 40, "laser" = 40, "energy" = 40, "bomb" = 55, "bio" = 60, "rad" = 15, "fire" = 60, "acid" = 30)

/obj/item/clothing/suit/helmet/smmohawk
	name = "super mutant mohawk wig"
	desc = "A wig fit for a super mutant, this one is in the style of a mohawk, rock on!"
	icon = 'icons/obj/clothing/smarmor.dmi'
	icon_state = "smmohawk_icon"
	item_state = "smmohawk"
	body_parts_covered = HEAD
	flags_inv = HIDEEARS|HIDEEYES|HIDEHAIR

/obj/item/clothing/suit/helmet/smmohawk
	name = "super mutant flattop wig"
	desc = "A wig fit for a super mutant, this one is in the style of a flattop, watch the trim."
	icon = 'icons/obj/clothing/smarmor.dmi'
	icon_state = "smflattop_icon"
	item_state = "smflattop"
	slot_flags = ITEM_SLOT_HEAD
	body_parts_covered = HEAD
	flags_inv = HIDEEARS|HIDEEYES|HIDEHAIR

/obj/item/clothing/suit/helmet/smmohawk
	name = "super mutant warrior armor"
	desc = "A wig fit for a super mutant, this one is long and wild, are you swinging for vines or for veins?"
	icon = 'icons/obj/clothing/smarmor.dmi'
	icon_state = "smlonghair_icon"
	item_state = "smlonghair"
	slot_flags = ITEM_SLOT_HEAD
	body_parts_covered = HEAD
	flags_inv = HIDEEARS|HIDEEYES|HIDEHAIR
