//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "otchet.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
Totch_form *otch_form;
TIniFile* inifile;
//---------------------------------------------------------------------------
__fastcall Totch_form::Totch_form(TComponent* Owner)
    : TForm(Owner),zero(false)
{
    head->Canvas->Draw(0,0,Form1->logo_b->Picture->Graphic);

    TDate x(Now());
    d->Text=x.FormatString("d");
    unsigned short yr,mn,dy;
    x.DecodeDate(&yr,&mn,&dy);
    switch(mn)
    {
    case  1: m->Text="������";   break;
    case  2: m->Text="�������";  break;
    case  3: m->Text="�����";    break;
    case  4: m->Text="������";   break;
    case  5: m->Text="���";      break;
    case  6: m->Text="����";     break;
    case  7: m->Text="����";     break;
    case  8: m->Text="�������";  break;
    case  9: m->Text="��������"; break;
    case 10: m->Text="�������";  break;
    case 11: m->Text="������";   break;
    case 12: m->Text="�������";  break;
    }
    y->Text=x.FormatString("yy");

    TDate otdate=Form1->ot_date->Date;
    TDate dodate=Form1->do_date->Date;
    zapros->Close();
    zapros->SQL->Clear();

    zapros->SQL->Add(
"SELECT Count(vac.nomer) AS [Count-nomer], prep.protiv, prep.name "
"FROM prep INNER JOIN vac ON prep.id = vac.prep_id "
"WHERE (((vac.date)>=#"+otdate.FormatString("mm'/'dd'/'yyyy")+"# "
"AND (vac.date)<=#"+dodate.FormatString("mm'/'dd'/'yyyy")+"#) AND "
"((prep.name)='"+Form1->prep_flt->Text+"')) "
"GROUP BY prep.protiv, prep.name;"
                     );

    zapros->ExecSQL();
    zapros->Open();
    if (zapros->RecordCount==0)
    {
        zapros->Close();
        zero=true;
        zapros->SQL->Clear();
        zapros->SQL->Add(
        "SELECT prep.protiv, prep.name FROM prep "
        "WHERE prep.name='"+Form1->prep_flt->Text+"' ;"
                         );
        zapros->ExecSQL();
    } else zero=false;
    zapros->Open();

    dates->Caption="� "+Form1->ot_date->Text+" �� "+Form1->do_date->Text+
    " ��������� ��������������� ���������";
    countl->Caption="� ���������� "+
        (zero?AnsiString("0"):zapros->FieldByName("Count-nomer")->AsString)+
        " ����� ������";

    protiv->Text=zapros->FieldByName("protiv")->AsVariant;
    vac->Caption="�������� �������������� �������� "+
        zapros->FieldByName("name")->AsString;


    //����� ������
    AnsiString iniF=ExtractFilePath(Application->ExeName)+"Options.ini";
    inifile=new TIniFile(iniF);
    vr1->Text=inifile->ReadString("names","vr1","");
    vr2->Text=inifile->ReadString("names","vr2","");
    vr3->Text=inifile->ReadString("names","vr3","");
    vr4->Text=inifile->ReadString("Names","vr4","");

    this->ShowModal();
}
//---------------------------------------------------------------------------
void __fastcall Totch_form::Button1Click(TObject *Sender)
{
    ot_l->Caption="�� \""+d->Text+"\"    "+m->Text+"     20"+y->Text+"�.";
    vrachi->Caption="��, ����������������� ������������ ����� "+
        (vr1->Text.IsEmpty()?AnsiString(""):vr1->Text)+
        (vr2->Text.IsEmpty()?AnsiString(""):(", "+vr2->Text))+
        (vr3->Text.IsEmpty()?AnsiString(""):(", "+vr3->Text))+
        (vr4->Text.IsEmpty()?AnsiString(""):(", "+vr4->Text));

    date_count_prot->Caption="� "+Form1->ot_date->Text+
    " �� "+Form1->do_date->Text+" ������� ���������������� ��������� "+
    jiv->Text+" � ���������� "+
    (zero?AnsiString("0"):zapros->FieldByName("Count-nomer")->AsString)+
    " ����� ������ "+protiv->Text+".";

    vactsina->Caption="�������� �������������� �������� "+
    zapros->FieldByName("name")->AsString;

    proizvod->Caption="������������� "+proizv->Text+", ����� "+
    ser->Text+", �������� "+contr->Text;

    izg->Caption="���� ������������ "+data_izg->Text+" �������� "+
    godn->Text+" � ����, �������� �����������.";

    rash->Caption="������������� �� ��������� "+doz->Text+" ��� �������.";

    v1->Caption=vr1->Text; if (vr1->Text.IsEmpty()) QRShape1->Pen->Color=clWhite;
    v2->Caption=vr2->Text; if (vr2->Text.IsEmpty()) QRShape2->Pen->Color=clWhite;
    v3->Caption=vr3->Text; if (vr3->Text.IsEmpty()) QRShape3->Pen->Color=clWhite;
    v4->Caption=vr4->Text; if (vr4->Text.IsEmpty()) QRShape4->Pen->Color=clWhite;

    QuickRep1->Preview();
}
//---------------------------------------------------------------------------
void __fastcall Totch_form::vrExit(TObject *Sender)
{
    TEdit* x=(TEdit*)Sender;
    AnsiString st;
    if (x==vr1) st="vr1";
    if (x==vr2) st="vr2";
    if (x==vr3) st="vr3";
    if (x==vr4) st="vr4";
    inifile->WriteString("Names",st,x->Text);
}
//---------------------------------------------------------------------------
