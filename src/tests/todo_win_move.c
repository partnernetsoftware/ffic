// Func _MakeLong($LoWord,$HiWord)
// 	Return BitOR($HiWord * 0x10000, BitAND($LoWord, 0xFFFF))
//  EndFunc
// 
// Func TryMoveVerify($hWnd,$offsetX=2,$offsetY=2)
// 
// Local $MK_LBUTTON = 0x0001
// Local $WM_LBUTTONDOWN = 0x0201
// Local $WM_LBUTTONUP = 0x0202
// ;Local $MK_RBUTTON = 0x0002
// ;Local $WM_RBUTTONDOWN = 0x0204
// ;Local $WM_RBUTTONUP = 0x0205
// ;Local $WM_CLICK = 0xF5
// Local $WM_MOUSEMOVE = 0x0200
// 
// $Button = $MK_LBUTTON
// $ButtonDown = $WM_LBUTTONDOWN
// $ButtonUp = $WM_LBUTTONUP
// 
// 	Local $stPoint = _MakeLong($offsetX, $offsetY)
// 
// 	_WinAPI_PostMessage($hWnd, $ButtonDown, $Button, $stPoint)
// ;	_WinAPI_PostMessage($hWnd, $WM_MOUSEMOVE, 0, $stPoint);try new way
// ;	_WinAPI_PostMessage($hWnd, $ButtonUp, $Button, $stPoint)
// 
// EndFunc
// 
// ;TODO get x,y from arg...
// TryMoveVerify(0);
// 
//Func FindAllWin($title)
//	Local $a_win = WinList($title)
//	Local $a_win_len = $a_win[0][0]
//	Dim $rt_a[$a_win_len]
//	For $i = 1 to $a_win_len
//		$rt_a[$i-1]=$a_win[$i][1]
//	Next
//	return $rt_a
//EndFunc
//
//Func HideThem($title)
//	local $hwnd_a = FindAllWin($title)
//	For $i = 1 to UBound($hwnd_a)
//		$hWnd = $hwnd_a[$i-1]
//		;WinSetState($hWnd, "", @SW_MINIMIZE)
//		WinSetState($hWnd, "", @SW_HIDE)
//	Next
//EndFunc
//
//HideThem("[REGEXPTITLE:(.*AnyDesk.*)]")
//// 
