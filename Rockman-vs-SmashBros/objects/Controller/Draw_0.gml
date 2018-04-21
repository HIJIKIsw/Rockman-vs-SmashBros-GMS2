///-----------------------------------------------------------------------------
/// @desc Controller.Draw
///-----------------------------------------------------------------------------

	// デバッグモードでなければ描画しない
	if( !System.IsDebugMode )
	{
		exit;
	}

	// 最前面に描画するように
	depth = -1;

	// 位置調整
	var cam = view_camera[0];
	x = camera_get_view_x(cam)+8;
	y = camera_get_view_y(cam)+camera_get_view_height(cam)-sprite_height-8;

	// 自身を描画
	draw_self();

	// 各ボタンの座標 (押下時のハイライト用)
	var UpX = 6;		var UpY = 3;
	var DownX = 6;		var DownY = 9;
	var LeftX = 3;		var LeftY = 6;
	var RightX = 9;		var RightY = 6;
	var AX = 26;		var AY = 9;
	var BX = 22;		var BY = 9;
	var StartX = 17;	var StartY = 11;
	var SelectX = 13;	var SelectY = 11;

	// 描画設定
	draw_set_color(c_white);
	var ButtonWidth = 3;
	var SlimButtonHeight = 1;

	// Up
	if (IsButtonDown[Buttons.Up])
	{
		draw_rectangle(x+UpX, y+UpY, x+UpX+ButtonWidth-1, y+UpY+ButtonWidth-1, false);
	}

	// Down
	if (IsButtonDown[Buttons.Down])
	{
		draw_rectangle(x+DownX, y+DownY, x+DownX+ButtonWidth-1, y+DownY+ButtonWidth-1, false);
	}

	// Left
	if (IsButtonDown[Buttons.Left])
	{
		draw_rectangle(x+LeftX, y+LeftY, x+LeftX+ButtonWidth-1, y+LeftY+ButtonWidth-1, false);
	}

	// Right
	if (IsButtonDown[Buttons.Right])
	{
		draw_rectangle(x+RightX, y+RightY, x+RightX+ButtonWidth-1, y+RightY+ButtonWidth-1, false);
	}

	// A
	if (IsButtonDown[Buttons.A])
	{
		draw_rectangle(x+AX, y+AY, x+AX+ButtonWidth-1, y+AY+ButtonWidth-1, false);
	}

	// B
	if (IsButtonDown[Buttons.B])
	{
		draw_rectangle(x+BX, y+BY, x+BX+ButtonWidth-1, y+BY+ButtonWidth-1, false);
	}

	// Start
	if (IsButtonDown[Buttons.Start])
	{
		draw_rectangle(x+StartX, y+StartY, x+StartX+ButtonWidth-1, y+StartY+SlimButtonHeight-1, false);
	}

	// Select
	if (IsButtonDown[Buttons.Select])
	{
		draw_rectangle(x+SelectX, y+SelectY, x+SelectX+ButtonWidth-1, y+SelectY+SlimButtonHeight-1, false);
	}