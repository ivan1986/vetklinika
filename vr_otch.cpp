//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "unit1.h"
#include "vr_otch.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "ToolEdit"
#pragma resource "*.dfm"
Tvrach_otch *vrach_otch;
//---------------------------------------------------------------------------
__fastcall Tvrach_otch::Tvrach_otch(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall Tvrach_otch::FormKeyPress(TObject *Sender, char &Key)
{
    if (Key==27) this->Close();
}
//---------------------------------------------------------------------------
void __fastcall Tvrach_otch::FormCreate(TObject *Sender)
{
    fdo->Date=StartOfTheMonth(Now())-1;
    fot->Date=StartOfTheMonth(StartOfTheMonth(Now())-1);
    this->ShowModal();
}
//---------------------------------------------------------------------------
void __fastcall Tvrach_otch::Button1Click(TObject *Sender)
{
    pr->Caption="от "+fot->Date.FormatString("dd.mm.yyyy")+
               " до "+fdo->Date.FormatString("dd.mm.yyyy");

    TADOQuery* x=new TADOQuery(NULL);
    x->Connection=Form1->connect;
    x->Close();
    x->SQL->Clear();
    x->SQL->Add(
"SELECT count(view1.sum) AS [cnt], Sum(view1.sum) AS [summa] "
"FROM view1 "
"WHERE (view1.date>=#"+fot->Date.FormatString("mm'/'dd'/'yyyy")+"#) "
"AND   (view1.date<=#"+fdo->Date.FormatString("mm'/'dd'/'yyyy")+"#) "
                  );
    x->ExecSQL();
    x->Open();
    if (x->RecordCount>0)
    {
        sum=x->FieldByName("summa")->AsInteger;
        c  =x->FieldByName("cnt")  ->AsInteger;
    }
    else
    {
        sum=c=0;
    }

    x->Close();
    delete x;

    zap->Close();
    zap->SQL->Clear();
    zap->SQL->Add(
"SELECT view1.vrach_id, count(view1.sum) AS [cnt], Sum(view1.sum) AS [summa] "
"FROM view1 "
"WHERE (view1.date>=#"+fot->Date.FormatString("mm'/'dd'/'yyyy")+"#) "
"AND   (view1.date<=#"+fdo->Date.FormatString("mm'/'dd'/'yyyy")+"#) "
"GROUP BY view1.vrach_id"
                  );
    zap->ExecSQL();
    zap->Open();

    pr_sc->Caption=c;
    pr_ss->Caption=sum;

    rep->Preview();
}
//---------------------------------------------------------------------------

void __fastcall Tvrach_otch::prcPrint(TObject *sender, AnsiString &Value)
{
    Value=zap->FieldByName("cnt")->AsInteger*100/(c>0?c:1);
    Value+="%";
}
//---------------------------------------------------------------------------

void __fastcall Tvrach_otch::prsPrint(TObject *sender, AnsiString &Value)
{
    Value=zap->FieldByName("summa")->AsInteger*100/(sum>0?sum:1);
    Value+="%";
}
//---------------------------------------------------------------------------

