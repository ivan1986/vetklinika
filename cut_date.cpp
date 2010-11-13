//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "cut_date.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
current cur;
//---------------------------------------------------------------------------
__fastcall Top_form::Top_form(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------
current::current()
{
    AnsiString iniF=ExtractFilePath(Application->ExeName)+"Options.ini";
    FromDay=Date();
    inifile=new TIniFile(iniF);
    FromDay+=days=inifile->ReadInteger("Interval","Days",7);
}
//---------------------------------------------------------------------------
current::~current()
{
    delete inifile;
}
//---------------------------------------------------------------------------
void current::EditPeriod()
{
    Top_form* frm=new Top_form(NULL);
    days=inifile->ReadInteger("Interval","Days",7);
    frm->days->Text=days;
    frm->ShowModal();
    frm->days->Text=frm->days->Text.Trim();
    inifile->WriteString("Interval","Days",frm->days->Text);
    delete frm;
}
//---------------------------------------------------------------------------
void __fastcall Top_form::Button1Click(TObject *Sender)
{
    ModalResult=1;
}
//---------------------------------------------------------------------------
void current::OnCreate()
{

}

