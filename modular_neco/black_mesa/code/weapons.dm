/obj/item/crowbar/freeman
	name = "blood soaked crowbar"
	desc = "A heavy handed crowbar, it drips with blood."
	icon = 'modular_skyrat/modules/awaymissions_skyrat/icons/freeman.dmi'
	icon_state = "crowbar"
	force = 35
	throwforce = 45
	toolspeed = 0.1
	wound_bonus = 10
	hitsound = 'modular_skyrat/master_files/sound/weapons/crowbar2.ogg'
	mob_throw_hit_sound = 'modular_skyrat/master_files/sound/weapons/crowbar2.ogg'
	force_opens = TRUE

/obj/item/crowbar/freeman/ultimate
	name = "\improper Freeman's crowbar"
	desc = "A weapon wielded by an ancient physicist, the blood of hundreds seeps through this rod of iron and malice."
	force = 45

/obj/item/crowbar/freeman/ultimate/Initialize(mapload)
	. = ..()
	add_filter("rad_glow", 2, list("type" = "outline", "color" = "#fbff1479", "size" = 2))

/obj/item/shield/riot/pointman/hecu
	name = "ballistic shield"
	desc = "A shield fit for those that want to sprint headfirst into the unknown! Cumbersome as hell. Repair with iron."
	icon_state = "ballistic"
	icon = 'modular_skyrat/modules/awaymissions_skyrat/icons/ballistic.dmi'
	worn_icon_state = "ballistic_worn"
	worn_icon = 'modular_skyrat/modules/awaymissions_skyrat/icons/ballistic.dmi'
	inhand_icon_state = "ballistic"
	lefthand_file = 'modular_skyrat/modules/awaymissions_skyrat/icons/ballistic_l.dmi'
	righthand_file = 'modular_skyrat/modules/awaymissions_skyrat/icons/ballistic_r.dmi'
	force = 14
	throwforce = 5
	throw_speed = 1
	throw_range = 1
	block_chance = 45
	slot_flags = ITEM_SLOT_BACK
	w_class = WEIGHT_CLASS_BULKY
	attack_verb_continuous = list("shoves", "bashes")
	attack_verb_simple = list("shove", "bash")
	transparent = TRUE
	max_integrity = 150
	repairable_by = /obj/item/stack/sheet/iron //what to repair the shield with
	shield_break_leftover = /obj/item/ballistic_broken

/obj/item/ballistic_broken
	name = "broken ballistic shield"
	desc = "An unsalvageable, unrecoverable mess of armor steel and kevlar. Should've maintained it, huh?"
	icon_state = "ballistic_broken"
	icon = 'modular_skyrat/modules/awaymissions_skyrat/icons/ballistic.dmi'
	w_class = WEIGHT_CLASS_BULKY

/obj/item/gun/ballistic/automatic/mp5
	name = "\improper MP5/40"
	desc = "An old SMG, this one is chambered in 10mm Auto. It has Heckler & Koch etched above the magazine well."
	icon = 'modular_neco/black_mesa/iconsgunsgalore_guns40x32.dmi'
	lefthand_file = 'modular_neco/black_mesa/icons/galore_lefthand.dmi'
	righthand_file ='modular_neco/black_mesa/icons/galore_righthand.dmi'
	icon_state = "mp5"
	inhand_icon_state = "mp5"
	selector_switch_icon = TRUE
	mag_type = /obj/item/ammo_box/magazine/mp5
	bolt_type = BOLT_TYPE_LOCKING
	can_suppress = TRUE
	burst_size = 3
	fire_delay = 1.25
	spread = 2.5
	mag_display = TRUE
	alt_icons = TRUE
	realistic = TRUE
	load_sound = 'modular_neco/black_mesa/sound/guns/mp5_magin.ogg'
	load_empty_sound = 'modular_neco/black_mesa/sound/gunsmp5_magin.ogg'
	rack_sound = 'modular_neco/black_mesa/sound/guns/mp5_cock.ogg'
	lock_back_sound = 'modular_neco/black_mesa/sound/guns/mp5_boltback.ogg'
	eject_sound = 'modular_neco/black_mesa/sound/guns/mp5_magout.ogg'
	eject_empty_sound = 'modular_neco/black_mesa/sound/guns/mp5_magout.ogg'
	bolt_drop_sound = 'modular_neco/black_mesa/sound/guns/mp5_boltforward.ogg'
	fire_sound = 'modular_neco/black_mesa/sound/guns/mp5_fire.ogg'
	alternative_fire_sound = 'modular_neco/black_mesa/sound/guns/mp5_fire_suppressed.ogg'
	suppressed_sound = 'modular_neco/black_mesa/sound/guns/mp5_fire_suppressed.ogg'
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/ammo_box/magazine/mp5
	name = "MP5 magazine (10mm Auto)"
	desc = "Magazines taking 10mm ammunition; it fits in the MP5."
	icon = 'modular_neco/black_mesa/icons/galore_items.dmi'
	icon_state = "mp5"
	ammo_type = /obj/item/ammo_casing/b10mm
	caliber = CALIBER_10MMAUTO
	max_ammo = 30
	multiple_sprites = AMMO_BOX_FULL_EMPTY_BASIC