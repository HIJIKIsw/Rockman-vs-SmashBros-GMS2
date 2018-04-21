///-----------------------------------------------------------------------------
/// @desc Controller.Create
///-----------------------------------------------------------------------------

	// 左+右や上+下の同時押しを許可するか
	AllowConflictKeyInput = false;
	
	// キー入力状態配列
	IsButtonDown = array_create(Buttons.Number, false);							// キーを押下しているか
	IsButtonPressed = array_create(Buttons.Number, false);						// キーを押した瞬間であるか