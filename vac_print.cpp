//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "vac_print.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
Tvac_prn *vac_prn;
//---------------------------------------------------------------------------
__fastcall Tvac_prn::Tvac_prn(TComponent* Owner)
    : TForm(Owner)
{
    QRImage1->Canvas->Draw(0,0,Form1->logo_s->Picture->Graphic);
    QRLabel2->Caption=Form1->fname1->Caption;
    QRLabel3->Caption=Form1->fname2->Caption;
    QRLabel4->Caption=Form1->podp1->Caption;
    QRLabel5->Caption=Form1->podp2->Caption;


    Qman->Close();
    Qman->SQL->Clear();
    Qman->SQL->Add(
"SELECT oper.oper, oper.st "
"FROM oper INNER JOIN (vac INNER JOIN vsv ON vac.nomer = vsv.id_usl) ON oper.id = vsv.id_op "
"WHERE vac.nomer="+tbl->DataSet->FieldByName("nomer")->AsString+" "
"ORDER BY oper.oper;"
                   );
    Qman->ExecSQL();
    Qman->Open();

    Qmnman->Close();
    Qmnman->SQL->Clear();
    Qmnman->SQL->Add(
"SELECT mn_op.name, mn_op.cenad, vmn_sv.count "
"FROM vac INNER JOIN (mn_op INNER JOIN vmn_sv ON mn_op.nomer = vmn_sv.id_mn) ON vac.nomer = vmn_sv.id "
"WHERE vac.nomer="+tbl->DataSet->FieldByName("nomer")->AsString+" "
"ORDER BY mn_op.name;"
                     );
    Qmnman->ExecSQL();
    Qmnman->Open();

    Qprep->Close();
    Qprep->SQL->Clear();
    Qprep->SQL->Add(
"SELECT lec.name, vlec_sv.doza, vlec_sv.st "
"FROM lec INNER JOIN (vac INNER JOIN vlec_sv ON vac.nomer = vlec_sv.id) ON lec.nomer = vlec_sv.id_lec "
"WHERE vac.nomer="+tbl->DataSet->FieldByName("nomer")->AsString+" "
"ORDER BY lec.name;"
                    );
    Qprep->ExecSQL();
    Qprep->Open();

    Qsales->Close();
    Qsales->SQL->Clear();
    Qsales->SQL->Add(
"SELECT sales.name, vsales_sv.count, vsales_sv.st "
"FROM sales INNER JOIN (vac INNER JOIN vsales_sv ON vac.nomer = vsales_sv.id) ON sales.nomer = vsales_sv.id_sales "
"WHERE vac.nomer="+tbl->DataSet->FieldByName("nomer")->AsString+" "
"ORDER BY sales.name;"
                    );
    Qsales->ExecSQL();
    Qsales->Open();

    Tdop->Sort="dop ASC";

}
//---------------------------------------------------------------------------
void __fastcall Tvac_prn::FormCreate(TObject *Sender)
{

    TDate x(Form1->vact->FieldByName("date")->AsDateTime);
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

    reps->Preview();
}
//---------------------------------------------------------------------------
void __fastcall Tvac_prn::repsAddReports(TObject *Sender)
{
    reps->Reports->Add(rep);

    reps->Reports->Add(manip);
    reps->Reports->Add(mn_man);
    reps->Reports->Add(prep);
    reps->Reports->Add(sales);
    reps->Reports->Add(not_std);
    reps->Reports->Add(itogo);
}
//---------------------------------------------------------------------------


