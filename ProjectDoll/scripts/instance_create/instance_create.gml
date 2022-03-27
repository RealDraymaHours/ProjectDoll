/// @description Creates an instance of a given object at a given position.
/// @param x The x position the object will be created at.
/// @param y The y position the object will be created at.
/// @param obj The object to create an instance of.
function instance_create(argument0, argument1, argument2) {
	var myDepth = object_get_depth( argument2 );
	return instance_create_depth( argument0, argument1, myDepth, argument2 );



}


/// @description Returns the depth of the specified object.
/// @param {Number} obj The index of the object to check
/// @return {Number} depth of the object
function object_get_depth(argument0) {

	var objID = argument0;
	var ret = 0;
	if (objID >= 0) && (objID < array_length_1d(global.__objectID2Depth)) {
		ret = global.__objectID2Depth[objID];
	} // end if
	return ret;


}

function __init_view() {
	enum e__VW
	{
		XView,
		YView,
		WView,
		HView,
		Angle,
		HBorder,
		VBorder,
		HSpeed,
		VSpeed,
		Object,
		Visible,
		XPort,
		YPort,
		WPort,
		HPort,
		Camera,
		SurfaceID,
	};


}


function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = -99; // oGame
	global.__objectDepths[1] = 0; // oParSolid
	global.__objectDepths[2] = 0; // oParEntity
	global.__objectDepths[3] = 0; // oBlock
	global.__objectDepths[4] = 0; // oPushBlock
	global.__objectDepths[5] = 0; // oSpring
	global.__objectDepths[6] = 0; // oFadeBlock
	global.__objectDepths[7] = 0; // oSlopeR
	global.__objectDepths[8] = 0; // oSlopeL
	global.__objectDepths[9] = -1; // oPlayer
	global.__objectDepths[10] = -10; // oBlood
	global.__objectDepths[11] = -2; // oCamera
	global.__objectDepths[12] = 0; // oParticle


	global.__objectNames[0] = "oGame";
	global.__objectNames[1] = "oParSolid";
	global.__objectNames[2] = "oParEntity";
	global.__objectNames[3] = "oBlock";
	global.__objectNames[4] = "oPushBlock";
	global.__objectNames[5] = "oSpring";
	global.__objectNames[6] = "oFadeBlock";
	global.__objectNames[7] = "oSlopeR";
	global.__objectNames[8] = "oSlopeL";
	global.__objectNames[9] = "oPlayer";
	global.__objectNames[10] = "oBlood";
	global.__objectNames[11] = "oCamera";
	global.__objectNames[12] = "oParticle";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}

function __init_global() {
	gml_pragma( "global", "__init_global();");

	// set any global defaults
	layer_force_draw_depth(true,0);		// force all layers to draw at depth 0
	draw_set_colour( c_black );


}

