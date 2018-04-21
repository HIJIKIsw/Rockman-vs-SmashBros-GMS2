///-----------------------------------------------------------------------------
/// @desc Camera.EndStep
///-----------------------------------------------------------------------------

	// カメラの位置を調整
	var Cam = view_camera[0];
	var NewCamX = clamp(obj_Player.x-camera_get_view_width(Cam)/2, 0, room_width-camera_get_view_width(Cam));
	var NewCamY = clamp(obj_Player.y-camera_get_view_height(Cam)/2, 0, room_height-camera_get_view_height(Cam));
	camera_set_view_pos(Cam, NewCamX, NewCamY);