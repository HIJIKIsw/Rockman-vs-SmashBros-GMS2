///-----------------------------------------------------------------------------
/// @desc obj_Player.Step
///-----------------------------------------------------------------------------

	var UpKey = Controller.IsButtonDown[Buttons.Up];
	var DownKey = Controller.IsButtonDown[Buttons.Down];	
	var LeftKey = Controller.IsButtonDown[Buttons.Left];
	var RightKey = Controller.IsButtonDown[Buttons.Right];
	var JumpKey = Controller.IsButtonPressed[Buttons.A];

	var Move = RightKey - LeftKey;
	MoveX = Move*WalkSpeed;

	// ジャンプ
	if( !IsInAir && JumpKey )
	{
		MoveY = JumpSpeed;
	}

	// 親のイベントを呼ぶ
	event_inherited();