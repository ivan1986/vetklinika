//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "print.h"
#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
Tprint_form *print_form;
//---------------------------------------------------------------------------
__fastcall Tprint_form::Tprint_form(TComponent* Owner)
    : TForm(Owner)
{
    head->Canvas->Draw(0,0,Form1->logo_b->Picture->Graphic);

    Qman->Close();
    Qman->SQL->Clear();
    Qman->SQL->Add(
"SELECT oper.oper, oper.st "
"FROM oper INNER JOIN (amb INNER JOIN sv ON amb.nomer = sv.id_usl) ON oper.id = sv.id_op "
"WHERE amb.nomer="+tbl->DataSet->FieldByName("nomer")->AsString+" "
"ORDER BY oper.oper;"
                   );
    Qman->ExecSQL();
    Qman->Open();

    Qmnman->Close();
    Qmnman->SQL->Clear();
    Qmnman->SQL->Add(
"SELECT mn_op.name, mn_op.cenad, mn_sv.count "
"FROM amb INNER JOIN (mn_op INNER JOIN mn_sv ON mn_op.nomer = mn_sv.id_mn) ON amb.nomer = mn_sv.id "
"WHERE amb.nomer="+tbl->DataSet->FieldByName("nomer")->AsString+" "
"ORDER BY mn_op.name;"
                     );
    Qmnman->ExecSQL();
    Qmnman->Open();

    Qprep->Close();
    Qprep->SQL->Clear();
    Qprep->SQL->Add(
"SELECT lec.name, lec_sv.doza, lec_sv.st "
"FROM lec INNER JOIN (amb INNER JOIN lec_sv ON amb.nomer = lec_sv.id) ON lec.nomer = lec_sv.id_lec "
"WHERE amb.nomer="+tbl->DataSet->FieldByName("nomer")->AsString+" "
"ORDER BY lec.name;"
                    );
    Qprep->ExecSQL();
    Qprep->Open();

    Qsales->Close();
    Qsales->SQL->Clear();
    Qsales->SQL->Add(
"SELECT sales.name, sales_sv.count, sales_sv.st "
"FROM sales INNER JOIN (amb INNER JOIN sales_sv ON amb.nomer = sales_sv.id) ON sales.nomer = sales_sv.id_sales "
"WHERE amb.nomer="+tbl->DataSet->FieldByName("nomer")->AsString+" "
"ORDER BY sales.name;"
                    );
    Qsales->ExecSQL();
    Qsales->Open();

    dop->Sort="prep ASC";

}
//---------------------------------------------------------------------------
void __fastcall Tprint_form::FormCreate(TObject *Sender)
{
    TDate x(Form1->table->FieldByName("date")->AsDateTime);
    AnsiString d,m,y;
    d=x.FormatString("d");
    unsigned short yr,mn,dy;
    x.DecodeDate(&yr,&mn,&dy);
    switch(mn)
    {
    case  1: m="€нвар€";   break;
    case  2: m="феврал€";  break;
    case  3: m="марта";    break;
    case  4: m="апрел€";   break;
    case  5: m="ма€";      break;
    case  6: m="июн€";     break;
    case  7: m="июл€";     break;
    case  8: m="августа";  break;
    case  9: m="сент€бр€"; break;
    case 10: m="окт€бр€";  break;
    case 11: m="но€бр€";   break;
    case 12: m="декабр€";  break;
    }
    y=x.FormatString("yy");

    ot_l->Caption="от \""+d+"\"    "+m+"     20"+y+"г.";
    cr->Preview();
}
//---------------------------------------------------------------------------

void __fastcall Tprint_form::crAddReports(TObject *Sender)
{
    cr->Reports->Add(title);
    cr->Reports->Add(manip);
    cr->Reports->Add(mn_man);
    cr->Reports->Add(prep);
    cr->Reports->Add(sales);
    cr->Reports->Add(not_std);
    cr->Reports->Add(itogo);
}
//---------------------------------------------------------------------------


