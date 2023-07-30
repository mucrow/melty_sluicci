enum GAME_STATE_FLAG {
	# woke up from a dream without leaving the (dream) apartment
	PINCHED_CHEEK_IN_LAYER_0,

	# player has gone at least one layer deeper than the nexus
	VISITED_LAYER_2,

	# had a dream that did not start in the (dream) apartment
	VISITED_ALT_LAYER_0,

	# visited a map tagged "scary"
	VISITED_SCARY_MAP,

	# visited a map tagged "abstract"
	VISITED_ABSTRACT_MAP,

	# visited a map tagged "nature"
	VISITED_NATURE_MAP,

	# visited a "Jail" (a map with no exits, or a part of a map with no exits)
	VISITED_JAIL_MAP,

	# visited a "Fake Jail" (a map that can only be reached the first time by being
	# caught by a jailer. the map has exits, which is the distinction between a
	# "Jail" and a "Fake Jail".
	VISITED_FAKE_JAIL_MAP,

	# visited a shrine while karma was below -5
	VISITED_SHRINE_WITH_BAD_KARMA,

	# visited a shrine while karma was above +5
	VISITED_SHRINE_WITH_GOOD_KARMA,

	# TODO maybe convert "met_npc", "npc_is_dead", and "has_killed_npc" flags to
	#			another class and track them elsewhere

	# interacted with Keith
	MET_KEITH,

	# killed Keith. Keith can be revived and this flag is set back to false.
	KEITH_IS_DEAD,

	# killed Keith. this flag stays true even if keith is revived
	HAS_KILLED_KEITH,

	# player has died because they fell from a great height
	HAS_DIED_FROM_FALL_DAMAGE,

	# player has died from drowning
	HAS_DIED_FROM_DROWNING,

	# player has died from loitering in a map that was too cold
	HAS_DIED_FROM_FREEZING,

	# player has died from loitering in a map that was too hot
	HAS_DIED_FROM_HEAT_STROKE,

	# player has died from being hit by an object that fell from the sky
	HAS_DIED_FROM_ANVIL,

	# pinched cheek in a "Jail" or "Fake Jail"
	PINCHED_CHEEK_IN_JAIL,

	# player has been caught by a jailer (NPCs that warp you to a "Jail" or "Fake Jail")
	CAUGHT_BY_JAILER,

	# player has died by being caught by a killer (humans that kill you or
	# monsters that eat you, etc.)
	CAUGHT_BY_KILLER,

	# there is a jailer or killer satisfying at least one of these conditions:
	# - player was caught by them at least three times
	# - player was caught by them two dreams in a row
	# - player was caught by them while seemingly trying to kill them (e.g., during
	#	 baseball bat swing animation)
	#
	# every time the player goes to sleep, RNG picks a layer between 0 and 3 in
	# which the dream demon will appear. upon reaching that layer, the dream demon
	# will be instantiated somewhere on that map. if the dream demon catches the
	# player, it has the same effect as being caught by that NPC in their default
	# map (e.g., you go to THEIR jail or you get killed)
	#
	# visiting a shrine with good karma lifts the dream demon effect. this flag is
	# false after lifting the effect, but HAS_HAD_DREAM_DEMON stays true.
	#
	HAS_DREAM_DEMON,

	# has the player ever had a dream demon?
	HAS_HAD_DREAM_DEMON,
}
