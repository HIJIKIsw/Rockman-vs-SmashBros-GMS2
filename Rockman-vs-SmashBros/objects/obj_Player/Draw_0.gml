///-----------------------------------------------------------------------------
/// @desc obj_Player.Draw
///-----------------------------------------------------------------------------

	draw_self();

	draw_set_font(font0);
	draw_text(x, y, string(x)+", "+string(y));