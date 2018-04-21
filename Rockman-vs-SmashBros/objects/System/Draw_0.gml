///-----------------------------------------------------------------------------
/// @desc System.Draw
///-----------------------------------------------------------------------------

	// デバッグモードでなければ描画しない
	if( !IsDebugMode )
	{
		exit;
	}

	// 最前面に描画するように
	depth = -1;

	// デバッグメッセージ描画
	var xx = camera_get_view_x(view_camera[0]);
	var yy = camera_get_view_y(view_camera[0]);
	draw_set_font(font0);
	draw_set_color(c_black);
	draw_text(xx, yy, "FPS: "+string(fps)); yy+=8;
	draw_text(xx, yy, "FPS_Real: "+string(Fps)); yy+=8;
	draw_text(xx, yy, "Press shift key to debug mode On/Off"); yy+=8;