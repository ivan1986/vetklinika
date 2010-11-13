//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "am.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
Tam_form *am_form;
//---------------------------------------------------------------------------
__fastcall Tam_form::Tam_form(TComponent* Owner)
    : TForm(Owner)
{
    QRImage1->Canvas->Draw(0,0,Form1->logo_b->Picture->Graphic);
    Image1->Canvas->Draw(0,0,Form1->logo_b->Picture->Graphic);
    QRLabel2->Caption=Form1->fname1->Caption;
    QRLabel3->Caption=Form1->fname2->Caption;
    QRLabel4->Caption=Form1->amtel1->Caption;
    QRLabel5->Caption=Form1->amtel2->Caption;
    QRLabel1->Caption=Form1->amtel3->Caption;

    Label9->Caption=Form1->fname1->Caption;
    Label8->Caption=Form1->fname2->Caption;
    Label7->Caption=Form1->amtel1->Caption;
    Label1->Caption=Form1->amtel2->Caption;
    Label6->Caption=Form1->amtel3->Caption;

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

    for(int i=0;i<22;i++)
    {
        dat[i]=new TQRLabel(this);
        dat[i]->Parent=TitleBand1;
        dat[i]->AutoSize=false;
        dat[i]->Left=170;
        dat[i]->Top=309+i*17;
        dat[i]->Height=17;
        dat[i]->Width=95;
        dat[i]->Caption="";
        dat[i]->Transparent=true;
        dat[i]->Font->Color=RGB(127,127,127);
    }
}
//---------------------------------------------------------------------------

void __fastcall Tam_form::FormActivate(TObject *Sender)
{
    am->SQL->Clear();
    am->SQL->Add(
"SELECT am.* "
"FROM am "
"WHERE am.id="+Form1->table->FieldByName("nomer")->AsString
    );
    am->ExecSQL();
    am->Open();
    if(am->RecordCount==0)
    {
        am->SQL->Clear();
        am->SQL->Add(
    "INSERT INTO am(id) "
    "VALUES ("+Form1->table->FieldByName("nomer")->AsString+")"
        );
        am->ExecSQL();
        for(int i=1;i<=22;i++)
            grid->Cells[0][i-1]="";
        memo->Text="";
        return;
    }

    for(int i=1;i<=22;i++)
        grid->Cells[0][i-1]=am->FieldByName("f"+IntToStr(i))->AsString;
    memo->Text=am->FieldByName("txt")->AsString;
}
//---------------------------------------------------------------------------

void __fastcall Tam_form::FormDeactivate(TObject *Sender)
{
    AnsiString zap="";
    for(int i=0;i<22;i++)
        zap+="f"+IntToStr(i+1)+" ='"+grid->Cells[0][i]+"', ";

    zap+="txt ='"+memo->Text+"' ";
    am->Close();
    am->SQL->Clear();
    am->SQL->Add(
"UPDATE am "
"SET "+zap+
"WHERE id="+Form1->table->FieldByName("nomer")->AsString
    );
    am->ExecSQL();
}
//---------------------------------------------------------------------------

void __fastcall Tam_form::Button1Click(TObject *Sender)
{
    ot_l->Caption="от \""+d->Text+"\"    "+m->Text+"     20"+y->Text+"г.";
    ot_l->Font->Color=RGB(127,127,127);
    vrach->Caption=vr->Text;
    for(int i=0;i<22;i++)
        dat[i]->Caption=grid->Cells[0][i];
    text->Caption=memo->Text;
    this->FormStyle=fsNormal;
    QuickRep1->Preview();
    this->FormStyle=fsStayOnTop;
}
//---------------------------------------------------------------------------

