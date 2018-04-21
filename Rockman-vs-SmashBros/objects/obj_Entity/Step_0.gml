///-----------------------------------------------------------------------------
/// @desc obj_Entity.Step
///-----------------------------------------------------------------------------

	// 重力を付加
	if( IsInAir && !IsIgnoreGravity )
	{
		MoveDistanceY += Gravity;
	}

	// X 方向の移動量を反映
	if( place_meeting(x+MoveDistanceX, y, obj_Terrain) && !IsNoclip )
	{
		while (!place_meeting(x+sign(MoveDistanceX), y, obj_Terrain))
		{
			x += sign(MoveDistanceX);
		}
		MoveDistanceX = 0;
	}
	x += MoveDistanceX;

	// Y 方向の移動量を反映
	if( place_meeting(x, y+MoveDistanceY, obj_Terrain) && !IsNoclip )
	{
		while( !place_meeting(x, y+sign(MoveDistanceY), obj_Terrain) )
		{
			y += sign(MoveDistanceY);
		}
		if( MoveDistanceY < 0.0 )
		{
			y = ceil(y);
		}
		else if( MoveDistanceY > 0.0 )
		{
			y = floor(y);
		}
		MoveDistanceY = 0
	}
	y += MoveDistanceY;

	// 接地判定
	if( place_meeting(x, y+1, obj_Terrain) )
	{
		IsInAir = false
	}
	else
	{
		IsInAir = true;
	}