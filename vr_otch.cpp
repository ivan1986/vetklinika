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
    int index = this->type->ItemIndex;
    if (index < 0 || index > 2)
        return;
    AnsiString sql, sql2;
    if (index == 0)
    {
        title->Caption = "Отчет по работе врачей за период";
        name->Caption = "Врач";
        count->Caption = "Кол-во приемов";
        sql =
"SELECT Sum(1.0) AS [cnt], Sum(sum) AS [summa] "
"FROM view1, vrachi "
"WHERE (vrachi.id=view1.vrach_id) "
"AND   (view1.sum > 0)" //баг аксеса (почему - хз, но так заработало)
"AND   (view1.date>=#"+fot->Date.FormatString("mm'/'dd'/'yyyy")+"#) "
"AND   (view1.date<=#"+fdo->Date.FormatString("mm'/'dd'/'yyyy")+"#) ";
        sql2 =
"SELECT name, Sum(1.0) AS [cnt], Sum(sum) AS [summa] "
"FROM view1, vrachi "
"WHERE (vrachi.id=view1.vrach_id) "
"AND   (view1.sum > 0)" //потому что гладиолус
"AND   (view1.date>=#"+fot->Date.FormatString("mm'/'dd'/'yyyy")+"#) "
"AND   (view1.date<=#"+fdo->Date.FormatString("mm'/'dd'/'yyyy")+"#) "
"GROUP BY name";
    }

    if (index == 1)
    {
        title->Caption = "Отчет по использованию препаратов за период";
        name->Caption = "Препарат";
        count->Caption = "Всего";
        sql =
"SELECT SUM(doza) AS [cnt], SUM(st) AS [summa] "
"FROM lec_sv AS sv "
"INNER JOIN lec AS l ON sv.id_lec=l.nomer "
"WHERE sv.id IN (SELECT a.nomer FROM amb AS a "
"WHERE (date>=#"+fot->Date.FormatString("mm'/'dd'/'yyyy")+"#) "
"AND   (date<=#"+fdo->Date.FormatString("mm'/'dd'/'yyyy")+"#) "
")";
        sql2 =
"SELECT name, SUM(doza) AS [cnt], SUM(st) AS [summa] "
"FROM lec_sv AS sv "
"INNER JOIN lec AS l ON sv.id_lec=l.nomer "
"WHERE sv.id IN (SELECT a.nomer FROM amb AS a "
"WHERE (date>=#"+fot->Date.FormatString("mm'/'dd'/'yyyy")+"#) "
"AND   (date<=#"+fdo->Date.FormatString("mm'/'dd'/'yyyy")+"#) "
") GROUP BY name";
    }

    if (index == 2)
    {
        title->Caption = "Отчет по продажам за период";
        name->Caption = "Товар";
        count->Caption = "Кол-во";
        sql =
"SELECT SUM(count) AS [cnt], SUM(st) AS [summa] "
"FROM sales_sv AS sv "
"INNER JOIN sales AS s ON sv.id_sales=s.nomer "
"WHERE sv.id IN (SELECT a.nomer FROM amb AS a "
"WHERE (date>=#"+fot->Date.FormatString("mm'/'dd'/'yyyy")+"#) "
"AND   (date<=#"+fdo->Date.FormatString("mm'/'dd'/'yyyy")+"#) "
")";
        sql2 =
"SELECT name, SUM(count) AS [cnt], SUM(st) AS [summa] "
"FROM sales_sv AS sv "
"INNER JOIN sales AS s ON sv.id_sales=s.nomer "
"WHERE sv.id IN (SELECT a.nomer FROM amb AS a "
"WHERE (date>=#"+fot->Date.FormatString("mm'/'dd'/'yyyy")+"#) "
"AND   (date<=#"+fdo->Date.FormatString("mm'/'dd'/'yyyy")+"#) "
") GROUP BY name";
    }

    pr->Caption="от "+fot->Date.FormatString("dd.mm.yyyy")+
               " до "+fdo->Date.FormatString("dd.mm.yyyy");

    TADOQuery* x=new TADOQuery(NULL);
    x->Connection=Form1->connect;
    x->Close();
    x->SQL->Clear();
    x->SQL->Add(sql);
    x->ExecSQL();
    x->Open();
    if (x->RecordCount>0)
    {
        sum=x->FieldByName("summa")->AsFloat;
        c  =x->FieldByName("cnt")  ->AsFloat;
    }
    else
    {
        sum=c=0;
    }

    x->Close();
    delete x;

    zap->Close();
    zap->SQL->Clear();
    zap->SQL->Add(sql2);
    zap->ExecSQL();
    zap->Open();

    pr_sc->Caption=c;
    pr_ss->Caption=sum;

    rep->Preview();
}
//---------------------------------------------------------------------------

void __fastcall Tvrach_otch::prcPrint(TObject *sender, AnsiString &Value)
{
    Value=FormatFloat("0",
        zap->FieldByName("cnt")->AsFloat*100/(c>0?c:1));
    Value+="%";
}
//---------------------------------------------------------------------------

void __fastcall Tvrach_otch::prsPrint(TObject *sender, AnsiString &Value)
{
    Value=FormatFloat("0",
        zap->FieldByName("summa")->AsFloat*100/(sum>0?sum:1));
    Value+="%";
}
//---------------------------------------------------------------------------

void __fastcall Tvrach_otch::QRDBText2Print(TObject *sender,
      AnsiString &Value)
{
    Value=FormatFloat("0", zap->FieldByName("cnt")->AsFloat);
}
//---------------------------------------------------------------------------

