//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "preload_form.h"
#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
//---------------------------------------------------------------------------
__fastcall Tpreload::Tpreload(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall Tpreload::FormClose(TObject *Sender, TCloseAction &Action)
{
    post_s(notinf);
    post_s(ambni);
    Form1->table->Refresh();
}
//---------------------------------------------------------------------------

void __fastcall Tpreload::grdDblClick(TObject *Sender)
{
    Form1->PageControl1->ActivePageIndex=1;
    Form1->vact->Locate(
        "nomer",
        notinf->FieldByName("nomer")->AsVariant,
        TLocateOptions()
                        );
}
//---------------------------------------------------------------------------

void __fastcall Tpreload::ambgrdClick(TObject *Sender)
{
    Form1->PageControl1->ActivePageIndex=0;
    Form1->table->Locate(
        "nomer",
        ambni->FieldByName("nomer")->AsVariant,
        TLocateOptions()
                        );
}
//---------------------------------------------------------------------------

