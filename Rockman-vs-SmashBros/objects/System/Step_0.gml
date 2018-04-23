///-----------------------------------------------------------------------------
/// @desc System.Step
///-----------------------------------------------------------------------------

	if( keyboard_check_pressed(ord("R")) )
	{
		room_restart();
	}

	// Debug Toggle
	if( Controller.IsButtonPressed[Buttons.Select] )
	{
		IsDebugMode = !IsDebugMode;
	}

	layer_set_visible("MapCollision", IsDebugMode);