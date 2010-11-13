//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "recept.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
Trecept_form *recept_form;
//---------------------------------------------------------------------------
__fastcall Trecept_form::Trecept_form(TComponent* Owner)
    : TForm(Owner)
{
   QRImage1->Canvas->Draw(0,0,Form1->logo_s->Picture->Graphic);
   QRLabel2->Caption=Form1->fname1->Caption;
   QRLabel3->Caption=Form1->fname2->Caption;
   QRLabel4->Caption=Form1->podp1->Caption;
   QRLabel5->Caption=Form1->podp2->Caption;
}
//---------------------------------------------------------------------------
void __fastcall Trecept_form::zapAfterInsert(TDataSet *DataSet)
{
    DataSet->FieldByName("id")->AsInteger=
        Form1->table->FieldByName("nomer")->AsInteger;
}
//---------------------------------------------------------------------------
void __fastcall Trecept_form::FormActivate(TObject *Sender)
{
    zap->Close();
    zap->SQL->Clear();
    zap->SQL->Add("SELECT nomer,id, prep, prim FROM recept WHERE id="
        +Form1->table->FieldByName("nomer")->AsString);
    zap->ExecSQL();
    zap->Open();
}
//---------------------------------------------------------------------------
void __fastcall Trecept_form::zapAfterPost(TDataSet *DataSet)
{
    int i=zap->RecNo;
    FormActivate(NULL);
    zap->RecNo=i;
}
//---------------------------------------------------------------------------
void __fastcall Trecept_form::grdKeyUp(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
    if (Key!=VK_DELETE) return;
    if (MessageBox(NULL,"Удалить запись?","Удаление записи",
        MB_OKCANCEL|MB_APPLMODAL|MB_DEFBUTTON2|MB_ICONWARNING)
        !=ID_OK) return;
    zap->Delete();
}
//---------------------------------------------------------------------------
void __fastcall Trecept_form::Button1Click(TObject *Sender)
{
    FormStyle=fsNormal;

    prn->SQL->Clear();
    prn->SQL->Add("SELECT prep, prim FROM recept WHERE id="
        +Form1->table->FieldByName("nomer")->AsString);
    prn->ExecSQL();
    prn->Open();
    rep->Preview();
    prn->Close();

    FormStyle=fsStayOnTop;
}
//---------------------------------------------------------------------------

