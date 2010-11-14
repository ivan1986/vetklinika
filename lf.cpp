//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "lf.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
Tlf_form *lf_form;
//---------------------------------------------------------------------------
__fastcall Tlf_form::Tlf_form(TComponent* Owner)
    : TForm(Owner)
{
    head->Canvas->Draw(0,0,Form1->logo_s->Picture->Graphic);

    TDate x(Form1->table->FieldByName("date")->AsDateTime);
    d->Text=x.FormatString("d");
    unsigned short yr,mn,dy;
    x.DecodeDate(&yr,&mn,&dy);
    switch(mn)
    {
    case  1: m->Text="€нвар€";   break;
    case  2: m->Text="феврал€";  break;
    case  3: m->Text="марта";    break;
    case  4: m->Text="апрел€";   break;
    case  5: m->Text="ма€";      break;
    case  6: m->Text="июн€";     break;
    case  7: m->Text="июл€";     break;
    case  8: m->Text="августа";  break;
    case  9: m->Text="сент€бр€"; break;
    case 10: m->Text="окт€бр€";  break;
    case 11: m->Text="но€бр€";   break;
    case 12: m->Text="декабр€";  break;
    }
    y->Text=x.FormatString("yy");
}
//---------------------------------------------------------------------------
void __fastcall Tlf_form::Button1Click(TObject *Sender)
{
    ot_l->Caption="от \""+d->Text+"\"    "+m->Text+"     20"+y->Text+"г.";
    vrach->Caption=vr->Text;
    l1->Caption=Edit1->Text.IsEmpty()?AnsiString("-"):Edit1->Text;
    l2->Caption=Edit2->Text.IsEmpty()?AnsiString("-"):Edit2->Text;
    l3->Caption=Edit3->Text.IsEmpty()?AnsiString("-"):Edit3->Text;
    l4->Caption=Edit4->Text.IsEmpty()?AnsiString("-"):Edit4->Text;
    l5->Caption=Edit5->Text.IsEmpty()?AnsiString("-"):Edit5->Text;
    l6->Caption=Edit6->Text.IsEmpty()?AnsiString("-"):Edit6->Text;
    l7->Caption=Edit7->Text.IsEmpty()?AnsiString("-"):Edit7->Text;
    text->Caption=memo->Text;
    this->FormStyle=fsNormal;
    QuickRep1->Preview();
    this->FormStyle=fsStayOnTop;
}
//---------------------------------------------------------------------------
void __fastcall Tlf_form::FormActivate(TObject *Sender)
{
    lft->SQL->Clear();
    lft->SQL->Add(
"SELECT lf.* "
"FROM lf "
"WHERE lf.id="+Form1->table->FieldByName("nomer")->AsString
    );
    lft->ExecSQL();
    lft->Open();
    if(lft->RecordCount==0)
    {
        lft->SQL->Clear();
        lft->SQL->Add(
    "INSERT INTO lf(id) "
    "VALUES ("+Form1->table->FieldByName("nomer")->AsString+")"
        );
        lft->ExecSQL();

        Edit1->Text=""; Edit2->Text=""; Edit3->Text=""; Edit4->Text="";
        Edit5->Text=""; Edit6->Text=""; Edit7->Text=""; memo->Text="";
        return;
    }
    Edit1->Text=lft->FieldByName("f1")->AsString;
    Edit2->Text=lft->FieldByName("f2")->AsString;
    Edit3->Text=lft->FieldByName("f3")->AsString;
    Edit4->Text=lft->FieldByName("f4")->AsString;
    Edit5->Text=lft->FieldByName("f5")->AsString;
    Edit6->Text=lft->FieldByName("f6")->AsString;
    Edit7->Text=lft->FieldByName("f7")->AsString;
    memo->Text=lft->FieldByName("txt")->AsString;
}
//---------------------------------------------------------------------------
void __fastcall Tlf_form::FormDeactivate(TObject *Sender)
{
    lft->Close();
    lft->SQL->Clear();
    lft->SQL->Add(
"UPDATE lf "
"SET "
"f1 ='"+Edit1->Text+"', "
"f2 ='"+Edit2->Text+"', "
"f3 ='"+Edit3->Text+"', "
"f4 ='"+Edit4->Text+"', "
"f5 ='"+Edit5->Text+"', "
"f6 ='"+Edit6->Text+"', "
"f7 ='"+Edit7->Text+"', "
"txt ='"+memo->Text+"' "
"WHERE id="+Form1->table->FieldByName("nomer")->AsString
    );
    lft->ExecSQL();
}
//---------------------------------------------------------------------------
