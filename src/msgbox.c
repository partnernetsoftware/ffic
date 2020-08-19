/*
本程序通过GetProcAddress方法调用Api
  int (__stdcall *MsgBox)(HWND ,LPSTR,LPSTR,int);
  (FARPROC&)MsgBox=GetProcAddress(hMod,\"MessageBoxA\");
  MsgBox(Null,"hello,I love you","Caption",0);
  
  typedef int (__stdcall *MSGBOX)(HWND ,LPSTR ,LPSTR ,INT);
  MSGBOX MsgBox2=(MSGBOX)GetProcAddress(hMod,"MessageBoxA");
  MsgBox2(Null,"hello,I love you","Caption",0);
*/

#include <windows.h>

void main()
{
 HMODULE hMod=LoadLibrary("user32.dll");
 //void*(*ptr)() = GetProcAddress(hMod,"MessageBoxA");
 //ptr(0,"a","b",0);

 //int (__stdcall *MsgBox1)(HWND ,LPSTR,LPSTR,int);
 int (__stdcall *MsgBox1)();
 //(FARPROC)MsgBox1=GetProcAddress(hMod,"MessageBoxA");
 MsgBox1=GetProcAddress(hMod,"MessageBoxA");

 typedef int (__stdcall *MSGBOX)(HWND ,LPSTR ,LPSTR ,INT); 
 MSGBOX MsgBox2=(MSGBOX)GetProcAddress(hMod,"MessageBoxA");
 
 MsgBox1(NULL,"通过函数指针调用Api成功!\n\n"
  "int (__stdcall *MsgBox)(HWND ,LPSTR,LPSTR,int);\n"
  "(FARPROC&)MsgBox=GetProcAddress(hMod,\"MessageBoxA\");\n"
  "MsgBox(Null,\"hello,I love you\",\"Caption\",0);",
  "通过函数指针调用Api，方法一:",0);

 MsgBox2(NULL,"通过函数指针调用Api成功!\n\n"
  "1、typedef int (__stdcall *MSGBOX)(HWND ,LPSTR ,LPSTR ,INT);\n"
  "2、MSGBOX MsgBox2=(MSGBOX)GetProcAddress(hMod,\"MessageBoxA\");\n"
  "3、MsgBox2(Null,\"hello,I love you\",\"Caption\",0);",
  "通过函数指针调用Api，方法二:",0);

 return;
}
