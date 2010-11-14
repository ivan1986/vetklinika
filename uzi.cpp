//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "uzi.h"
#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
Tuz_form *uz_form;
//---------------------------------------------------------------------------
__fastcall Tuz_form::Tuz_form(TComponent* Owner)
    : TForm(Owner)
{
    head->Canvas->Draw(0,0,Form1->logo_b->Picture->Graphic);
}
//---------------------------------------------------------------------------
void __fastcall Tuz_form::FormActivate(TObject *Sender)
{
    uz->Close();
    uz->SQL->Clear();
    uz->SQL->Add(
"SELECT uzi.* "
"FROM uzi "
"WHERE uzi.id="+Form1->table->FieldByName("nomer")->AsString
    );
    uz->ExecSQL();
    uz->Open();
    if(uz->RecordCount==0)
    {
        uz->SQL->Clear();
        uz->SQL->Add(
    "INSERT INTO uzi(id) "
    "VALUES ("+Form1->table->FieldByName("nomer")->AsString+")"
        );
        uz->ExecSQL();

        uz->SQL->Clear();
        uz->SQL->Add(
"SELECT uzi.* "
"FROM uzi "
"WHERE uzi.id="+Form1->table->FieldByName("nomer")->AsString
        );
        uz->ExecSQL();
        uz->Open();
        return;
    }
}
//---------------------------------------------------------------------------
void __fastcall Tuz_form::FormDeactivate(TObject *Sender)
{
    post_s(uz);
}
//---------------------------------------------------------------------------
void __fastcall Tuz_form::Button1Click(TObject *Sender)
{
    pmemo->Lines->Clear();
    pmemo->Lines->Add("�������: "+uz->FieldByName("f1")->AsString);
    pmemo->Lines->Add("�����������: "+uz->FieldByName("f2")->AsString);
    pmemo->Lines->Add("������������: "+uz->FieldByName("f3")->AsString);
    pmemo->Lines->Add("�������: "+uz->FieldByName("f4")->AsString);

    jmemo->Lines->Clear();
    jmemo->Lines->Add("�����: "+uz->FieldByName("f5")->AsString);
    jmemo->Lines->Add("������: "+uz->FieldByName("f6")->AsString);
    jmemo->Lines->Add("����������: "+uz->FieldByName("f7")->AsString);

    smemo->Lines->Clear();
    smemo->Lines->Add("�������: "+uz->FieldByName("f8")->AsString);
    smemo->Lines->Add("�����������: "+uz->FieldByName("f9")->AsString);
    smemo->Lines->Add("������������: "+uz->FieldByName("f10")->AsString);
    smemo->Lines->Add("�������: "+uz->FieldByName("f11")->AsString);

    pp->Lines->Clear();
    pp->Lines->Add(uz->FieldByName("f12")->AsString);
    pp->Lines->Add(uz->FieldByName("f14")->AsString);
    pp->Lines->Add(uz->FieldByName("f16")->AsString);
    pp->Lines->Add(uz->FieldByName("f18")->AsString);
    lp->Lines->Clear();
    lp->Lines->Add(uz->FieldByName("f13")->AsString);
    lp->Lines->Add(uz->FieldByName("f15")->AsString);
    lp->Lines->Add(uz->FieldByName("f17")->AsString);
    lp->Lines->Add(uz->FieldByName("f19")->AsString);

    mpmemo->Lines->Clear();
    mpmemo->Lines->Add("�������: "+uz->FieldByName("f21")->AsString);
    mpmemo->Lines->Add("������: "+uz->FieldByName("f22")->AsString);
    mpmemo->Lines->Add("����������: "+uz->FieldByName("f23")->AsString);

    mtmemo->Lines->Clear();
    mtmemo->Lines->Add("����: "+uz->FieldByName("f24")->AsString);
    mtmemo->Lines->Add("����: "+uz->FieldByName("f25")->AsString);
    mtmemo->Lines->Add("�������: "+uz->FieldByName("f26")->AsString);

    pjmemo->Lines->Clear();
    pjmemo->Lines->Add("�������: "+uz->FieldByName("f27")->AsString);
    pjmemo->Lines->Add("�������: "+uz->FieldByName("f28")->AsString);
    pjmemo->Lines->Add("�����������: "+uz->FieldByName("f29")->AsString);
    pjmemo->Lines->Add("������������: "+uz->FieldByName("f30")->AsString);

    text->Caption=memo->Text;
    vrach->Caption=vr->Text;
    this->FormStyle=fsNormal;
    QuickRep1->Preview();
    this->FormStyle=fsStayOnTop;
}
//---------------------------------------------------------------------------


