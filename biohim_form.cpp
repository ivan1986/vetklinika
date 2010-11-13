//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "biohim_form.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
Tbiohim *biohim;
TIniFile* inif;
//---------------------------------------------------------------------------
__fastcall Tbiohim::Tbiohim(TComponent* Owner)
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

    x=Now();
    h->Text=x.FormatString("hh");
    min->Text=x.FormatString("nn");
                      
    for(int j=0;j<4;j++)
    for(int i=0;i<16;i++)
    {
        dat[j][i]=new TQRLabel(this);
        dat[j][i]->Parent=TitleBand1;
        dat[j][i]->AutoSize=false;
        switch (j)
        {
        case 0:
            dat[j][i]->Left=140;
            dat[j][i]->Width=60;
            break;
        case 1:
            dat[j][i]->Left=205;
            dat[j][i]->Width=75;
            break;
        case 2:
            dat[j][i]->Left=290;
            dat[j][i]->Width=60;
            break;
        case 3:
            dat[j][i]->Left=357;
            dat[j][i]->Width=55;
            break;

        }
        dat[j][i]->Top=330+i*17;
        dat[j][i]->Height=17;
        dat[j][i]->Caption="";
        dat[j][i]->Transparent=true;
        dat[j][i]->Font->Color=RGB(127,127,127);
    }

    AnsiString iniF=ExtractFilePath(Application->ExeName)+"Options.ini";
    inif=new TIniFile(iniF);

    for(int j=0;j<3;j++)
    for(int i=0;i<16;i++)
    {
        edits[j][i]=new TEdit(this);
        edits[j][i]->Parent=this;
        edits[j][i]->AutoSize=false;
        edits[j][i]->Ctl3D=false;
        edits[j][i]->Font->Assign(tmpedit->Font);
        switch (j)
        {
        case 0:
            edits[j][i]->Left=120;
            edits[j][i]->Width=67;
            edits[j][i]->Text=inif->ReadString("ed","e"+IntToStr(i),"");
            edits[j][i]->OnExit=ededitExit;
            break;
        case 1:
            edits[j][i]->Left=269;
            edits[j][i]->Width=69;
            edits[j][i]->Text=inif->ReadString("dog","n"+IntToStr(i),"");
            edits[j][i]->OnExit=dogeditExit;
            break;
        case 2:
            edits[j][i]->Left=337;
            edits[j][i]->Width=62;
            edits[j][i]->Text=inif->ReadString("cat","n"+IntToStr(i),"");
            edits[j][i]->OnExit=cateditExit;
            break;
        }
        edits[j][i]->Top=294+i*17;
        edits[j][i]->Height=18;
        edits[j][i]->Tag=i;
    }

}
//---------------------------------------------------------------------------

void __fastcall Tbiohim::dogeditExit(TObject *Sender)
{
    TEdit* x=(TEdit*)Sender;
    int n=x->Tag;
    inif->WriteString("dog","n"+IntToStr(n),x->Text);
}
//---------------------------------------------------------------------------

void __fastcall Tbiohim::cateditExit(TObject *Sender)
{
    TEdit* x=(TEdit*)Sender;
    int n=x->Tag;
    inif->WriteString("cat","n"+IntToStr(n),x->Text);
}
//---------------------------------------------------------------------------

void __fastcall Tbiohim::ededitExit(TObject *Sender)
{
    TEdit* x=(TEdit*)Sender;
    int n=x->Tag;
    inif->WriteString("ed","e"+IntToStr(n),x->Text);
}
//---------------------------------------------------------------------------
void __fastcall Tbiohim::FormActivate(TObject *Sender)
{
    am->SQL->Clear();
    am->SQL->Add(
"SELECT bh.* "
"FROM bh "
"WHERE bh.id="+Form1->table->FieldByName("nomer")->AsString
    );
    am->ExecSQL();
    am->Open();
    if(am->RecordCount==0)
    {
        am->SQL->Clear();
        am->SQL->Add(
    "INSERT INTO bh(id) "
    "VALUES ("+Form1->table->FieldByName("nomer")->AsString+")"
        );
        am->ExecSQL();
        for(int i=1;i<=16;i++)
            grid->Cells[0][i-1]="";
        memo->Text="";
        return;
    }

    for(int i=1;i<=16;i++)
        grid->Cells[0][i-1]=am->FieldByName("f"+IntToStr(i))->AsString;
    memo->Text=am->FieldByName("txt")->AsString;
}
//---------------------------------------------------------------------------
void __fastcall Tbiohim::Button1Click(TObject *Sender)
{
    ot_l->Caption="от \""+d->Text+"\"    "+m->Text+"     20"+y->Text+"г."+
    "  "+h->Text+" ч. "+min->Text+" мин.";
    vrach->Caption=vr->Text;
    for(int i=0;i<16;i++)
    {
        dat[0][i]->Caption=edits[0][i]->Text;
        dat[1][i]->Caption=grid->Cells[0][i];
        dat[2][i]->Caption=edits[1][i]->Text;
        dat[3][i]->Caption=edits[2][i]->Text;
    }
    text->Caption=memo->Text;
    this->FormStyle=fsNormal;
    QuickRep1->Preview();
    this->FormStyle=fsStayOnTop;
}
//---------------------------------------------------------------------------

void __fastcall Tbiohim::FormDeactivate(TObject *Sender)
{
    AnsiString zap="";
    for(int i=0;i<16;i++)
        zap+="f"+IntToStr(i+1)+" ='"+grid->Cells[0][i]+"', ";
    zap+="txt ='"+memo->Text+"' ";

    am->Close();
    am->SQL->Clear();
    am->SQL->Add(
"UPDATE bh "
"SET "+zap+
"WHERE id="+Form1->table->FieldByName("nomer")->AsString
    );
    am->ExecSQL();
}
//---------------------------------------------------------------------------

