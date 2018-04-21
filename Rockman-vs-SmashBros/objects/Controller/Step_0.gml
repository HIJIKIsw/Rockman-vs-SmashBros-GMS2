///-----------------------------------------------------------------------------
/// @desc obj_Controller.Step
///-----------------------------------------------------------------------------

	// 入力状態を受付
	IsButtonDown[Buttons.Up] = keyboard_check(ord("W"));
	IsButtonDown[Buttons.Down] = keyboard_check(ord("S"));
	IsButtonDown[Buttons.Left] = keyboard_check(ord("A"));
	IsButtonDown[Buttons.Right] = keyboard_check(ord("D"));
	IsButtonDown[Buttons.A] = keyboard_check(vk_space);
	IsButtonDown[Buttons.B] = keyboard_check(ord("E"));
	IsButtonDown[Buttons.Start] = keyboard_check(vk_enter);
	IsButtonDown[Buttons.Select] = keyboard_check(vk_shift);

	// 入力した瞬間を受付
	IsButtonPressed[Buttons.Up] = keyboard_check_pressed(ord("W"));
	IsButtonPressed[Buttons.Down] = keyboard_check_pressed(ord("S"));
	IsButtonPressed[Buttons.Left] = keyboard_check_pressed(ord("A"));
	IsButtonPressed[Buttons.Right] = keyboard_check_pressed(ord("D"));
	IsButtonPressed[Buttons.A] = keyboard_check_pressed(vk_space);
	IsButtonPressed[Buttons.B] = keyboard_check_pressed(ord("E"));
	IsButtonPressed[Buttons.Start] = keyboard_check_pressed(vk_enter);
	IsButtonPressed[Buttons.Select] = keyboard_check_pressed(vk_shift);

	// 矛盾する十字キー入力を無効にする
	if( !AllowConflictKeyInput )
	{
		// 上下
		if( IsButtonDown[Buttons.Up] && IsButtonDown[Buttons.Down] )
		{
			 IsButtonDown[Buttons.Up] = false;
			 IsButtonDown[Buttons.Down] = false;
			 IsButtonPressed[Buttons.Up] = false;
			 IsButtonPressed[Buttons.Down] = false;
		}

		// 左右
		if( IsButtonDown[Buttons.Left] && IsButtonDown[Buttons.Right] )
		{
			IsButtonDown[Buttons.Left] = false;
			IsButtonDown[Buttons.Right] = false;
			IsButtonPressed[Buttons.Left] = false;
			IsButtonPressed[Buttons.Right] = false;
		}
	}