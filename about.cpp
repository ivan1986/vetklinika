//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "about.h"
#include "ab_firm.h"
#pragma package(smart_init)
//---------------------------------------------------------------------------

//   Important: Methods and properties of objects in VCL can only be
//   used in a method called using Synchronize, for example:
//
//      Synchronize(UpdateCaption);
//
//   where UpdateCaption could look like:
//
//      void __fastcall about::UpdateCaption()
//      {
//        Form1->Caption = "Updated in a thread";
//      }
//---------------------------------------------------------------------------

__fastcall about::about(bool CreateSuspended)
    : TThread(CreateSuspended)
{
}
//---------------------------------------------------------------------------
int wait(WORD key)
{
    RegisterHotKey(NULL,0xFF0C,MOD_CONTROL,key);
    while(1)
	{
		MSG m; GetMessage(&m,0,0,0);
		if (m.message==WM_QUIT) return 1;
		if (m.message==WM_HOTKEY)
            if (HIWORD(m.lParam)==key)
                if (LOWORD(m.lParam)==MOD_CONTROL)
        			return 0;
	}
}

void __fastcall about::Execute()
{
    if (wait(0x5A)) return;
    if (wait(0x43)) return;
    if (wait(0x59)) return;
    if (wait(0x42)) return;
    if (wait(0x52)) return;
    if (wait(0x4A)) return;
    if (wait(0x44)) return;
    if (wait(0x46)) return;

    TAboutBox *x=new TAboutBox(NULL);
    x->ShowModal();
    delete x;
}
//---------------------------------------------------------------------------
