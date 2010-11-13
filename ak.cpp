//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "ak.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
Tak_form *ak_form;
//---------------------------------------------------------------------------
__fastcall Tak_form::Tak_form(TComponent* Owner)
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

    for(int i=0;i<23;i++)
    {
        dat[i]=new TQRLabel(this);
        dat[i]->Parent=TitleBand1;
        dat[i]->AutoSize=false;
        dat[i]->Left=170;
        dat[i]->Top=309+i*17;
        dat[i]->Height=17;
        dat[i]->Width=245;
        dat[i]->Caption="";
        dat[i]->Transparent=true;
        dat[i]->Font->Color=RGB(127,127,127);
    }
}
//---------------------------------------------------------------------------

void __fastcall Tak_form::FormActivate(TObject *Sender)
{
    ak->SQL->Clear();
    ak->SQL->Add(
"SELECT ak.* "
"FROM ak "
"WHERE ak.id="+Form1->table->FieldByName("nomer")->AsString
    );
    ak->ExecSQL();
    ak->Open();
    if(ak->RecordCount==0)
    {
        ak->SQL->Clear();
        ak->SQL->Add(
    "INSERT INTO ak(id) "
    "VALUES ("+Form1->table->FieldByName("nomer")->AsString+")"
        );
        ak->ExecSQL();
        for(int i=1;i<=22;i++)
            grid->Cells[0][i-1]="";
        return;
    }

    for(int i=1,j=1;i<=20;i++,j++)
    {
        if (i==1)  grid->Cells[0][++j-2]="          Морфология";
        if (i==16) grid->Cells[0][++j-2]="          Биохимия";
        if (i==20) grid->Cells[0][++j-2]="          Дополнительно";
        grid->Cells[0][j-1]=ak->FieldByName("f"+IntToStr(i))->AsString;
    }
}
//---------------------------------------------------------------------------

void __fastcall Tak_form::FormDeactivate(TObject *Sender)
{
    AnsiString zap="";
    for(int i=0,j=0;i<20;i++,j++)
    {
        if (i==0||i==15||i==19) j++;
        zap+="f"+IntToStr(i+1)+" ='"+grid->Cells[0][j]+"'";
        if (i<19) zap+=", ";
    }
    ak->Close();
    ak->SQL->Clear();
    ak->SQL->Add(
"UPDATE ak "
"SET "+zap+
" WHERE id="+Form1->table->FieldByName("nomer")->AsString
    );
    ak->ExecSQL();
}
//---------------------------------------------------------------------------

void __fastcall Tak_form::Button1Click(TObject *Sender)
{
    ot_l->Caption="от \""+d->Text+"\"    "+m->Text+"     20"+y->Text+"г.";
    ot_l->Font->Color=RGB(127,127,127);
    vrach->Caption=vr->Text;
    for(int i=0;i<23;i++)
        dat[i]->Caption=grid->Cells[0][i];
    this->FormStyle=fsNormal;
    QuickRep1->Preview();
    this->FormStyle=fsStayOnTop;
}
//---------------------------------------------------------------------------



