enum EFFECT {
	#----------------------------------------------------------------------------
	# Basic Effects
	#----------------------------------------------------------------------------

	# Labelled "Bat" in the menu. Pressing Action swings the bat. Can kill NPCs
	# and break certain objects.
	BASEBALL_BAT,

	# Labelled "Bat" in the menu. Player takes on the appearance of a brown bat.
	# Allows the player to fly over certain gaps.
	BAT,

	# Player is an evergreen tree decorated with ornaments. The player hops around
	# instead of walking and the ornaments shake and make a sleigh bell sound.
	CHRISTMAS_TREE,

	# Pressing Action sits.
	DEFAULT,

	# Pressing Action picks up certain objects and NPCs.
	GLOVES,

	# Player has gum on the bottom of their shoes and blows a gum bubble with
	# their mouth. Movement is slower but player won't slip on ice.
	GUM,

	# Player gets a big white mustache, puffy red clothes, and a golden crown.
	# some NPCs kneel when they see the player wearing the Monarch effect.
	MONARCH,

	# Player wears a jack-o'lantern head which glows bright orange. Illuminates
	# some dark areas. Pressing Action extinguishes the "candle" in their head.
	# You can only re-light it by re-equipping the effect.
	PUMPKIN,



	#----------------------------------------------------------------------------
	# Mix Effects
	#----------------------------------------------------------------------------

	# Mix Effect: BASEBALL_BAT + BAT
	# Player is a bat flapping its wings trying to hold up a baseball bat. The
	# player cannot move with this effect. Pressing a Move or Action button will
	# simply make the player sprite shake in place.
	BAT_WITH_BASEBALL_BAT,

	# Mix Effect: BAT + MONARCH
	# Player is a vampire. Player can press Action to switch between being a
	# black bat and a humanoid vampire. Player can cross certain gaps in bat form.
	VAMPIRE,
}
