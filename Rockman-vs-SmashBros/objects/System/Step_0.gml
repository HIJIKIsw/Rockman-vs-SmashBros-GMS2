///-----------------------------------------------------------------------------
/// @desc System.Step
///-----------------------------------------------------------------------------

	// Debug Toggle
	if( Controller.IsButtonPressed[Buttons.Select] )
	{
		IsDebugMode = !IsDebugMode;
	}

	layer_set_visible("MapCollision", IsDebugMode);