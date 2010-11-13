//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "dop.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
Tdop_form *dop_form;
//---------------------------------------------------------------------------
__fastcall Tdop_form::Tdop_form(TComponent* Owner, bool ekg)
    : TForm(Owner)
{
    QRImage1->Canvas->Draw(0,0,Form1->logo_b->Picture->Graphic);
    QRLabel2->Caption=Form1->fname1->Caption;
    QRLabel3->Caption=Form1->fname2->Caption;
    QRLabel4->Caption=Form1->amtel1->Caption;
    QRLabel5->Caption=Form1->amtel2->Caption;
    QRLabel1->Caption=Form1->amtel3->Caption;
    capt->Caption=ekg?"ЭКГ":"";
    Panel2->Caption=ekg?"ЭКГ":"Дополнительные данные";
    this->Caption=Panel2->Caption;
    dop_text->DataField=ekg?"ekg":"text";
    this->ShowModal();
}
//---------------------------------------------------------------------------

bool flag=false;
void __fastcall Tdop_form::dop_textKeyDown(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
    flag=false;
    if (!Shift.Contains(ssCtrl)) return;
    if (Key!=VK_RETURN) return;
    flag=true;
}
//---------------------------------------------------------------------------

void __fastcall Tdop_form::dop_textKeyPress(TObject *Sender, char &Key)
{
    if (!flag) return;
    Key=0;
    prnb->SetFocus();
}
//---------------------------------------------------------------------------

void __fastcall Tdop_form::dop_textExit(TObject *Sender)
{
    post_s(dop);
}
//---------------------------------------------------------------------------

void __fastcall Tdop_form::prnbClick(TObject *Sender)
{
    text->Lines->Assign(dop_text->Lines);
    rep->Preview();
}
//---------------------------------------------------------------------------

void __fastcall Tdop_form::Panel3Resize(TObject *Sender)
{
    prnb->Left=Panel3->Width-100;
}
//---------------------------------------------------------------------------

void __fastcall Tdop_form::FormClose(TObject *Sender, TCloseAction &Action)
{
    post_s(dop);
}
//---------------------------------------------------------------------------

void __fastcall Tdop_form::FormActivate(TObject *Sender)
{
    dop->Close();
    dop->SQL->Clear();
    dop->SQL->Add(
"SELECT dopolnit.* "
"FROM dopolnit "
"WHERE dopolnit.id="+Form1->table->FieldByName("nomer")->AsString
    );
    dop->ExecSQL();
    dop->Open();
    if(dop->RecordCount==0)
    {
        dop->SQL->Clear();
        dop->SQL->Add(
    "INSERT INTO dopolnit(id) "
    "VALUES ("+Form1->table->FieldByName("nomer")->AsString+")"
        );
        dop->ExecSQL();

        dop->SQL->Clear();
        dop->SQL->Add(
"SELECT dopolnit.* "
"FROM dopolnit "
"WHERE dopolnit.id="+Form1->table->FieldByName("nomer")->AsString
        );
        dop->ExecSQL();
        dop->Open();
        return;
    }
}
//---------------------------------------------------------------------------

