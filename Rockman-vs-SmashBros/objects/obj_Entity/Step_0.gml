///-----------------------------------------------------------------------------
/// @desc obj_Entity.Step
///-----------------------------------------------------------------------------

	// 重力を付加
	if( IsInAir && !IsIgnoreGravity )
	{
		MoveY += Gravity;
	}

	// X 方向の移動量を反映
	if( place_meeting(x+MoveX, y, obj_TerrainCollider) && !IsNoclip )
	{
		// スロープを登る
		if( place_meeting(x+MoveX, y, obj_SlopeCollider) && !place_meeting(x+MoveX, y-abs(MoveX), obj_SlopeCollider) )
		{
			while( place_meeting(x+MoveX, y, obj_SlopeCollider) )
			{
				y--;
			}
			x += MoveX;
		}
		else
		{
			// 地形に接触する場合はギリギリの位置まで移動
			while (!place_meeting(x+sign(MoveX), y, obj_TerrainCollider))
			{
				x += sign(MoveX);
			}
		}


		// めり込み防止
		if( MoveX < 0.0 )
		{
			x = ceil(x);
		}
		else if( MoveX > 0.0 )
		{
			x = floor(x);
		}
		MoveX = 0;
	}
	x += MoveX;

	// Y 方向の移動量を反映
	if( place_meeting(x, y+MoveY, obj_TerrainCollider) && !IsNoclip )
	{
		while( !place_meeting(x, y+sign(MoveY), obj_TerrainCollider) )
		{
			y += sign(MoveY);
		}
		// めり込み防止
		if( MoveY < 0.0 )
		{
			y = ceil(y);
		}
		else if( MoveY > 0.0 )
		{
			y = floor(y);
		}
		MoveY = 0
	}
	y += MoveY;

	// 接地判定
	if( place_meeting(x, y+1, obj_TerrainCollider) )
	{
		IsInAir = false
	}
	else
	{
		IsInAir = true;
	}