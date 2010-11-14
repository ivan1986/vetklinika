//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "cg.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
Tcg_form *cg_form;
//---------------------------------------------------------------------------
__fastcall Tcg_form::Tcg_form(TComponent* Owner)
    : TForm(Owner)
{
    head->Canvas->Draw(0,0,Form1->logo_s->Picture->Graphic);

    TDate x(Form1->table->FieldByName("date")->AsDateTime);
    d->Text=x.FormatString("d");
    unsigned short yr,mn,dy;
    x.DecodeDate(&yr,&mn,&dy);
    switch(mn)
    {
    case  1: m->Text="января";   break;
    case  2: m->Text="февраля";  break;
    case  3: m->Text="марта";    break;
    case  4: m->Text="апреля";   break;
    case  5: m->Text="мая";      break;
    case  6: m->Text="июня";     break;
    case  7: m->Text="июля";     break;
    case  8: m->Text="августа";  break;
    case  9: m->Text="сентября"; break;
    case 10: m->Text="октября";  break;
    case 11: m->Text="ноября";   break;
    case 12: m->Text="декабря";  break;
    }
    y->Text=x.FormatString("yy");
}
//---------------------------------------------------------------------------

void __fastcall Tcg_form::FormActivate(TObject *Sender)
{
    cg->Close();
    cg->SQL->Clear();
    cg->SQL->Add(
"SELECT cg.* "
"FROM cg "
"WHERE cg.id="+Form1->table->FieldByName("nomer")->AsString
    );
    cg->ExecSQL();
    cg->Open();
    if(cg->RecordCount==0)
    {
        cg->SQL->Clear();
        cg->SQL->Add(
    "INSERT INTO cg(id) "
    "VALUES ("+Form1->table->FieldByName("nomer")->AsString+")"
        );
        cg->ExecSQL();

        cg->SQL->Clear();
        cg->SQL->Add(
"SELECT cg.* "
"FROM cg "
"WHERE cg.id="+Form1->table->FieldByName("nomer")->AsString
        );
        cg->ExecSQL();
        cg->Open();
        return;
    }
}
//---------------------------------------------------------------------------

void __fastcall Tcg_form::FormDeactivate(TObject *Sender)
{
    post_s(cg);
}
//---------------------------------------------------------------------------

void __fastcall Tcg_form::Button1Click(TObject *Sender)
{
    ot_l->Caption="от \""+d->Text+"\"    "+m->Text+"     20"+y->Text+"г.";
    ot_l->Font->Color=RGB(127,127,127);
    vrach->Caption=vr->Text;

    cg1->Caption="Материал исследований: " +cgm1->Text;
    cg2->Caption="Результат исследований: "+cgm2->Text;
    cg3->Caption="Материал исследований: " +cgm3->Text;
    cg4->Caption="Результат исследований: "+cgm4->Text;

    this->FormStyle=fsNormal;
    QuickRep1->Preview();
    this->FormStyle=fsStayOnTop;
}
//---------------------------------------------------------------------------

