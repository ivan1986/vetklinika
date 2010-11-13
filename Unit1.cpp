//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit2.h"
#include "uzi.h"
#include "am.h"
#include "ak.h"
#include "lf.h"
#include "cg.h"
#include "dop.h"
#include "biohim_form.h"
#include "cut_date.h"
#include "prep_form.h"
#include "about.h"
#include <vector>
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "RxLookup"
#pragma link "RXDBCtrl"
#pragma link "ToolEdit"
#pragma link "DBIndex"
#pragma link "RxDBComb"
#pragma link "CurrEdit"
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
    : TForm(Owner)
{
    static about *x=new about(false);
}
//---------------------------------------------------------------------------

void post_s(TCustomADODataSet* x)
{
    if (x->State==dsEdit||x->State==dsInsert)
        x->Post();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::notSelectQ(AnsiString Q)
{
    TADOQuery* q=new TADOQuery(NULL);
    q->Connection=connect;
    q->SQL->Clear();

    q->SQL->Add(Q);
    q->ExecSQL();
    delete q;
}
//---------------------------------------------------------------------------

bool amb_upfl=false;
void __fastcall TForm1::tabledate_nextChange(TField *Sender)
{
    notSelectQ(
"UPDATE amb SET send=0 WHERE nomer="+table->FieldByName("nomer")->AsString
                );
    amb_upfl=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::tableAfterScroll(TDataSet *DataSet)
{
    if (amb_upfl)
    {
        table->Refresh();
        amb_upfl=false;
    }

    AnsiString s;
    try{    s=DataSet->FieldByName("nomer")->AsString; }
    catch(...) {return;}
    s=s.IsEmpty()?AnsiString("0"):s;

    sv->Close();
    sv->SQL->Clear();
    sv->SQL->Add(
"SELECT oper.oper, sv.id_usl, sv.id_op "
"FROM oper INNER JOIN (amb INNER JOIN sv ON amb.nomer = sv.id_usl) ON oper.id = sv.id_op "
"WHERE amb.nomer="+s+" "
"ORDER BY oper.oper;"
                    );
    sv->ExecSQL();
    sv->Open();

    mn_sv->Close();
    mn_sv->SQL->Clear();
    mn_sv->SQL->Add(
"SELECT amb.nomer, mn_sv.nomer, mn_sv.id, mn_sv.id_mn, mn_sv.count, mn_op.name, mn_op.nomer "
"FROM mn_op INNER JOIN (amb INNER JOIN mn_sv ON amb.nomer = mn_sv.id) ON mn_op.nomer = mn_sv.id_mn "
"WHERE amb.nomer="+s+" "
"ORDER BY mn_op.name;"
                    );
    mn_sv->ExecSQL();
    mn_sv->Open();

    lec_sv->Close();
    lec_sv->SQL->Clear();
    lec_sv->SQL->Add(
"SELECT amb.nomer, lec_sv.nomer, lec_sv.id, lec_sv.id_lec, lec.name, lec_sv.doza, lec_sv.st, lec.nomer "
"FROM amb INNER JOIN (lec INNER JOIN lec_sv ON lec.nomer = lec_sv.id_lec) ON amb.nomer = lec_sv.id "
"WHERE amb.nomer="+s+" "
"ORDER BY lec.name;"
                    );
    lec_sv->ExecSQL();
    lec_sv->Open();

    sales_sv->Close();
    sales_sv->SQL->Clear();
    sales_sv->SQL->Add(
"SELECT amb.nomer, sales_sv.nomer, sales_sv.id, sales_sv.id_sales, sales.name, sales_sv.count, sales_sv.st, sales.nomer "
"FROM amb INNER JOIN (sales INNER JOIN sales_sv ON sales.nomer = sales_sv.id_sales) ON amb.nomer = sales_sv.id "
"WHERE amb.nomer="+s+" "
"ORDER BY sales.name;"
                    );
    sales_sv->ExecSQL();
    sales_sv->Open();

    dopt->Close();
    dopt->Open();

    if (uz_form)  uz_form->FormActivate(NULL);
    if (lf_form)  lf_form->FormActivate(NULL);
    if (am_form)  am_form->FormActivate(NULL);
    if (ak_form)  ak_form->FormActivate(NULL);
    if (cg_form)  cg_form->FormActivate(NULL);
    if (biohim)   biohim->FormActivate(NULL);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::connectConnectComplete(TADOConnection *Connection,
      const Error *Error, TEventStatus &EventStatus)
{
    if (EventStatus==esOK) return;
    MessageBox(NULL,"Невозможно подключится к базе данных",
        "Фатальная Ошибка",MB_OK|MB_APPLMODAL|MB_ICONERROR);
    Application->Terminate();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::N2Click(TObject *Sender)
{
    delete new TForm2(NULL);

    vrachi->Close();
    vrachi->Open();
    sqlRefrAfterPost(mn_sv);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::tableAfterInsert(TDataSet *DataSet)
{
    DataSet->FieldByName("date")->AsDateTime = Date();
    DataSet->FieldByName("vrach_id")->AsInteger = 0;
    DataSet->FieldByName("die")->AsBoolean = false;

    TADOQuery* del=new TADOQuery(NULL);
    del->Connection=connect;
    del->SQL->Clear();
    del->SQL->Add("SELECT MAX(npp) AS nx FROM amb");
    del->ExecSQL();
    del->Open();
    del->First();
    DataSet->FieldByName("npp")->AsInteger=
        del->FieldByName("nx")->AsInteger+1;
    delete del;

    vld->SetFocus();
    DataSet->Post();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::tableBeforeDelete(TDataSet *DataSet)
{
    deleted_npp=DataSet->FieldByName("npp")->AsInteger;
    notSelectQ(
"UPDATE amb SET npp=npp-1 WHERE npp>"+DataSet->FieldByName("npp")->AsString
    );
    notSelectQ(
"DELETE FROM amb WHERE nomer="+DataSet->FieldByName("nomer")->AsString
    );
    sqlRefrAfterPost(table);
    Abort();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::gridExit(TObject *Sender)
{
    post_s(table);
}
//---------------------------------------------------------------------------
#include "print.h"
void __fastcall TForm1::prnBtnClick(TObject *Sender)
{
    sqlRefrAfterPost(mn_sv);
    delete new Tprint_form(NULL);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::table_controls(bool enable)
{
    if (enable)
    {
        table->EnableControls();
            sv->EnableControls();
            mn_sv->EnableControls();
            lec_sv->EnableControls();
            sales_sv->EnableControls();
            dopt->EnableControls();
    }
    else
    {
        table->DisableControls();
            sv->DisableControls();
            mn_sv->DisableControls();
            lec_sv->DisableControls();
            sales_sv->DisableControls();
            dopt->DisableControls();
    }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::fltClick(TObject *Sender)
{
    fpan->Visible=flt->Checked;
    if (!flt->Checked)
    {
        //закрыли поиск
        vladf->Text="";
        adrf->Text="";
        zverf->Text="";
        dzf->Text="";
        dopf->Text="";
        sub->Text="";
        sue->Text="";
        fot->Text="  .  .  ";
        fdo->Text="  .  .  ";
    }
    else
    {
        //открыли поиск
        TADOQuery* x=new TADOQuery(NULL);
        x->Connection=connect;
        x->SQL->Clear();
        x->SQL->Add("SELECT name FROM vrachi WHERE id<>0 ORDER BY name");
        x->ExecSQL();
        x->Open();
        vrachf->Items->Clear();
        vrachf->Items->Add("любой врач");
        for(x->First();!x->Eof;x->Next())
        {
            vrachf->Items->Add(x->FieldByName("name")->AsString);
        }
        x->Close();
        delete x;
        vrachf->ItemIndex=0;
    }
    if (ambl->Caption!="")
    {
        //что-то искали
        table_controls(false);
        table->Close();
        table->SQL->Clear();
        table->SQL->Add("select * from (SELECT top 100 * FROM view1 WHERE 1 order by date desc) order by date, nomer");
        table->ExecSQL();
        table->Open();
        table->Last();
        table_controls(true);
        ambl->Caption="";
    }
    if (vacl->Caption!="")
    {
        vact->DisableControls();
        vact->Close();
        vact->SQL->Clear();
        vact->SQL->Add("select * from (SELECT top 100 * FROM view2 WHERE 1 order by date desc) order by date, nomer");
        vact->ExecSQL();
        vact->Open();
        vact->Last();
        vact->EnableControls();
        vacl->Caption="";
    }
}
//---------------------------------------------------------------------------
// Поиск
//---------------------------------------------------------------------------
void __fastcall TForm1::fnd_btnClick(TObject *Sender)
{
    AnsiString x;
    if (!vladf->Text.IsEmpty()) x+="AND Ucase(vladel) like Ucase(\"%"+vladf->Text+"%\") ";
    if (!adrf->Text.IsEmpty())  x+="AND Ucase(adr)    like Ucase(\"%"+adrf->Text+"%\") ";
    if (!zverf->Text.IsEmpty()) x+="AND Ucase(zver)   like Ucase(\"%"+zverf->Text+"%\") ";
    if (!dzf->Text.IsEmpty())   x+="AND Ucase(dz)     like Ucase(\"%"+dzf->Text+"%\") ";
    if (!dopf->Text.IsEmpty())  x+="AND Ucase(dop)    like Ucase(\"%"+dopf->Text+"%\") ";

    Form1->sub->Text=Form1->sub->Text.Trim();
    Form1->sue->Text=Form1->sue->Text.Trim();
    if (!sub->Text.IsEmpty())  x+="AND [sum]>"+sub->Text+" ";
    if (!sue->Text.IsEmpty())  x+="AND [sum]<"+sue->Text+" ";

    bool flot=false,fldo=false;
    try { StrToDate(fot->Text); flot=true; } catch(...) { }
    try { StrToDate(fdo->Text); fldo=true; } catch(...) { }
    if (flot) x+="AND [date]>=#"+fot->Date.FormatString("mm'/'dd'/'yyyy")+"# ";
    if (fldo) x+="AND [date]<=#"+fdo->Date.FormatString("mm'/'dd'/'yyyy")+"# ";

    if (vrachf->Text!="любой врач")
        x+="AND vrach_id in (select id from vrachi where name='"+vrachf->Text+"') ";

    table->Close();
    table->SQL->Clear();
    table->SQL->Add("SELECT * FROM view1 WHERE 1 "+x);
    table->ExecSQL();
    table->Open();
    table->First();

    TADOQuery* del=new TADOQuery(NULL);
    del->Connection=Form1->connect;
    del->Close();
    del->SQL->Clear();
    del->SQL->Add("select sum(sum) as s, count(*) as c from view1 where 1 "+x);
    del->ExecSQL();
    del->Open();
    del->First();
    ambl->Caption="Найдено записей: "+del->FieldByName("c")->AsString+
    "     на сумму "+
        (del->FieldByName("s")->AsInteger>0 ?
            del->FieldByName("s")->AsString :
            AnsiString("0"))
        +" рублей";
    del->Close();

    x="";
    if (!vladf->Text.IsEmpty()) x+="AND Ucase(vlad) like Ucase(\"%"+vladf->Text+"%\") ";
    if (!adrf->Text.IsEmpty())  x+="AND Ucase(vlad) like Ucase(\"%"+adrf->Text+"%\") ";
    if (!zverf->Text.IsEmpty()) x+="AND Ucase(zver) like Ucase(\"%"+zverf->Text+"%\") ";

    Form1->sub->Text=Form1->sub->Text.Trim();
    Form1->sue->Text=Form1->sue->Text.Trim();
    if (!sub->Text.IsEmpty())  x+="AND [sum]>"+sub->Text+" ";
    if (!sue->Text.IsEmpty())  x+="AND [sum]<"+sue->Text+" ";

    flot=false,fldo=false;
    try { StrToDate(fot->Text); flot=true; } catch(...) { }
    try { StrToDate(fdo->Text); fldo=true; } catch(...) { }
    if (flot) x+="AND [date]>=#"+fot->Date.FormatString("mm'/'dd'/'yyyy")+"# ";
    if (fldo) x+="AND [date]<=#"+fdo->Date.FormatString("mm'/'dd'/'yyyy")+"# ";

    vact->Close();
    vact->SQL->Clear();
    vact->SQL->Add("SELECT * FROM view2 WHERE 1 "+x);
    vact->ExecSQL();
    vact->Open();
    vact->First();

    del->SQL->Clear();
    del->SQL->Add("select sum(sum) as s, count(*) as c from view2 where 1 "+x);
    del->ExecSQL();
    del->Open();
    del->First();
    vacl->Caption="Найдено записей: "+del->FieldByName("c")->AsString+
    "     на сумму "+
        (del->FieldByName("s")->AsInteger>0 ?
            del->FieldByName("s")->AsString :
            AnsiString("0"))
        +" рублей";
    del->Close();
    delete del;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::CtrlGridKeyUp(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
    if (Key!=VK_DELETE) return;
    if (MessageBox(NULL,"Удалить запись?","Удаление записи",
        MB_OKCANCEL|MB_APPLMODAL|MB_DEFBUTTON2|MB_ICONWARNING)
        !=ID_OK)
            return;
    ((TDBCtrlGrid*)Sender)->DataSource->DataSet->Delete();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::gridPaintPanel(TDBCtrlGrid *DBCtrlGrid, int Index)
{
    int x=DBCtrlGrid->Height; x/=DBCtrlGrid->RowCount;
    if (
        (DBCtrlGrid==grid && !table->FieldByName("send")->AsBoolean
         && !(table->FieldByName("date_next")->AsDateTime>cur.GFromDate())
         && !(table->FieldByName("date_next")->AsDateTime<TDate(1910,1,1))
        ) ||
        (DBCtrlGrid==grd_vac && !vact->FieldByName("send")->AsBoolean)
         && !(vact->FieldByName("date_next")->AsDateTime>cur.GFromDate())
         && !(vact->FieldByName("date_next")->AsDateTime<TDate(1910,1,1))
        )
    {
        DBCtrlGrid->Canvas->Brush->Color=TColor(0x2248ff);
        DBCtrlGrid->Canvas->FillRect(TRect(1,1,DBCtrlGrid->Width-2,x-2));
    }

    if (
        (DBCtrlGrid==grid && table->FieldByName("die")->AsBoolean) ||
        (DBCtrlGrid==grd_vac && vact->FieldByName("die")->AsBoolean)
        )
    {
        DBCtrlGrid->Canvas->Brush->Color=TColor(0xe90dee);
        DBCtrlGrid->Canvas->FillRect(TRect(1,1,DBCtrlGrid->Width-2,x-2));
    }

    if (DBCtrlGrid->PanelIndex!=Index) return;
    DBCtrlGrid->Canvas->Brush->Color=TColor(0xc97632);
    DBCtrlGrid->Canvas->FillRect(TRect(1,1,DBCtrlGrid->Width-2,x-2));
}
//---------------------------------------------------------------------------

void __fastcall TForm1::bh_btnClick(TObject *Sender)
{
    if (!biohim) biohim=new Tbiohim(Form1);
    biohim->Show();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::cg_btnClick(TObject *Sender)
{
    if (!cg_form) cg_form=new Tcg_form(Form1);
    cg_form->Show();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::am_btnClick(TObject *Sender)
{
    if (!am_form) am_form=new Tam_form(Form1);
    am_form->Show();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ak_btnClick(TObject *Sender)
{
    if (!ak_form) ak_form=new Tak_form(Form1);
    ak_form->Show();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::lf_btnClick(TObject *Sender)
{
    if (!lf_form) lf_form=new Tlf_form(Form1);
    lf_form->Show();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::uzi_btnClick(TObject *Sender)
{
    if (!uz_form) uz_form=new Tuz_form(Form1);
    uz_form->Show();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::dop_btnClick(TObject *Sender)
{
    delete new Tdop_form(NULL,false);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ekg_btnClick(TObject *Sender)
{
    delete new Tdop_form(NULL,true);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::fltExit(TObject *Sender)
{
    if (flt->Checked) vladf->SetFocus();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::TabSheet1Resize(TObject *Sender)
{
    grid->RowCount=grid->Height/(Shape1->Height+1);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::TableKeyUp(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
    if (Key!=VK_DELETE) return;
    if (MessageBox(NULL,"Удалить запись?","Удаление записи",
        MB_OKCANCEL|MB_APPLMODAL|MB_DEFBUTTON2|MB_ICONWARNING)
        !=ID_OK) return;
    ((TDataSet*)Sender)->Delete();
    table->Refresh();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::dopanResize(TObject *Sender)
{
    int h=dopan->Height/5;
    std_panel->Height  =h;
    man_panel->Height  =h;
    prep_panel->Height =h;
    dop_panel->Height  =h;
    sales_panel->Height=h;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::amb_panelResize(TObject *Sender)
{
    TPanel *x=(TPanel*)Sender;
    TDBCtrlGrid *y=(TDBCtrlGrid*)x->Tag;
    y->RowCount=y->Height/25;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::fldEnter(TObject *Sender)
{
    ((TDBEdit*)Sender)->SelectAll();
}
//---------------------------------------------------------------------------
// следущие 8 функций предотвращают удаление из таблиц
// при удалении из связанной
//---------------------------------------------------------------------------

void __fastcall TForm1::svBeforeDelete(TDataSet *DataSet)
{
    notSelectQ(
"DELETE FROM sv "
"WHERE id_usl="+DataSet->FieldByName("id_usl")->AsString+" "
"AND id_op="+DataSet->FieldByName("id_op")->AsString
                  );
    sqlRefrAfterPost(DataSet);
    Abort();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::mn_svBeforeDelete(TDataSet *DataSet)
{
    notSelectQ(
"DELETE FROM mn_sv WHERE nomer="+DataSet->FieldByName("mn_sv.nomer")->AsString
                  );
    sqlRefrAfterPost(DataSet);
    Abort();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::lec_svBeforeDelete(TDataSet *DataSet)
{
    notSelectQ(
"DELETE FROM lec_sv WHERE nomer="+DataSet->FieldByName("lec_sv.nomer")->AsString
                  );
    sqlRefrAfterPost(DataSet);
    Abort();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sales_svBeforeDelete(TDataSet *DataSet)
{
    notSelectQ(
"DELETE FROM sales_sv WHERE nomer="+DataSet->FieldByName("sales_sv.nomer")->AsString
                  );
    sqlRefrAfterPost(DataSet);
    Abort();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::vsvBeforeDelete(TDataSet *DataSet)
{
    notSelectQ(
"DELETE FROM vsv "
"WHERE id_usl="+DataSet->FieldByName("id_usl")->AsString+" "
"AND id_op="+DataSet->FieldByName("id_op")->AsString
                  );
    vactRAfterPost(DataSet);
    Abort();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::vmn_svBeforeDelete(TDataSet *DataSet)
{
    notSelectQ(
"DELETE FROM vmn_sv WHERE nomer="+DataSet->FieldByName("vmn_sv.nomer")->AsString
                  );
    vactRAfterPost(DataSet);
    Abort();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::vlec_svBeforeDelete(TDataSet *DataSet)
{
    notSelectQ(
"DELETE FROM vlec_sv WHERE nomer="+DataSet->FieldByName("vlec_sv.nomer")->AsString
                  );
    vactRAfterPost(DataSet);
    Abort();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::vsales_svBeforeDelete(TDataSet *DataSet)
{
    notSelectQ(
"DELETE FROM vsales_sv WHERE nomer="+DataSet->FieldByName("vsales_sv.nomer")->AsString
               );
    vactRAfterPost(DataSet);
    Abort();
}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------

void __fastcall TForm1::sqlRefrAfterPost(TDataSet *DataSet)
{
    post_s(table);

    table->AfterScroll=NULL;

    DataSet->DisableControls();
    int x=DataSet->RecNo;
    DataSet->Close();
    DataSet->Open();
    try{
    try           {DataSet->RecNo=x;}
        catch(...){DataSet->RecNo=x-1;};
    }
        catch(...){DataSet->RecNo=-1;}
    DataSet->EnableControls();

    table->DisableControls();
    x=table->RecNo;
    table->Requery();
    try{
    try           {table->RecNo=x;}
        catch(...){table->RecNo=x-1;};
    }
        catch(...){table->RecNo=-1;}
    table->EnableControls();

    table->AfterScroll=tableAfterScroll;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::grdExit(TObject *Sender)
{
    TDataSet* x=((TDBCtrlGrid*)Sender)->DataSource->DataSet;
    if (x->State==dsEdit||x->State==dsInsert)
        x->Post();
}
//---------------------------------------------------------------------------

#include "inp_table_cld.h"
//---------------------------------------------------------------------------
//Следущие 8 функций вызывают окошко с галочками для каждой вложенной таблицы
//(по 4 правых таблицы для каждого журнала - события на кнопках с ручкой)
//---------------------------------------------------------------------------

void __fastcall TForm1::stdmanfButtonClick(TObject *Sender)
{
    sv->Close();
    delete new Tinp_table(NULL,"Стандартные манипуляции",table,
        "oper","sv","oper","id","id_usl","id_op");
    sqlRefrAfterPost(mn_sv);
    sv->Open();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::mnman_namefButtonClick(TObject *Sender)
{
    mn_sv->Close();
    delete new Tinp_table(NULL,"Многократно повторяемые манипуляции",table,
        "mn_op","mn_sv","name","nomer","id","id_mn");
    mn_sv->Open();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::lecnamefButtonClick(TObject *Sender)
{
    lec_sv->Close();
    delete new Tinp_table(NULL,"Лекарственные препараты",table,
        "lec","lec_sv","name","nomer","id","id_lec");
    lec_sv->Open();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::salesnamefButtonClick(TObject *Sender)
{
    sales_sv->Close();
    delete new Tinp_table(NULL,"Продажи",table,
        "sales","sales_sv","name","nomer","id","id_sales");
    sales_sv->Open();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::vstdmanfButtonClick(TObject *Sender)
{
    vsv->Close();
    delete new Tinp_table(NULL,"Стандартные манипуляции",vact,
        "oper","vsv","oper","id","id_usl","id_op");
    vactRAfterPost(vmn_sv);
    vsv->Open();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::vmnmanfButtonClick(TObject *Sender)
{
    vmn_sv->Close();
    delete new Tinp_table(NULL,"Многократно повторяемые манипуляции",vact,
        "mn_op","vmn_sv","name","nomer","id","id_mn");
    vmn_sv->Open();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::vlecfButtonClick(TObject *Sender)
{
    vlec_sv->Close();
    delete new Tinp_table(NULL,"Лекарственные препараты",vact,
        "lec","vlec_sv","name","nomer","id","id_lec");
    vlec_sv->Open();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::vsalesnfButtonClick(TObject *Sender)
{
    vsales_sv->Close();
    delete new Tinp_table(NULL,"Продажи",vact,
        "sales","vsales_sv","name","nomer","id","id_sales");
    vsales_sv->Open();
}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------


//---------------------------------------------------------------------------
//Журнал вакцинаций
//---------------------------------------------------------------------------

void __fastcall TForm1::vactAfterInsert(TDataSet *DataSet)
{
    DataSet->FieldByName("date")->AsDateTime = Date();
    DataSet->FieldByName("prep_id")->AsInteger = 0;
    DataSet->FieldByName("die")->AsBoolean = false;

    TADOQuery* del=new TADOQuery(NULL);
    del->Connection=connect;
    del->SQL->Clear();
    del->SQL->Add("SELECT MAX(npp) AS nx FROM vac");
    del->ExecSQL();
    del->Open();
    del->First();
    DataSet->FieldByName("npp")->AsInteger=
        del->FieldByName("nx")->AsInteger+1;
    delete del;

    DataSet->Post();
    vladvac->SetFocus();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::vactBeforeDelete(TDataSet *DataSet)
{
    notSelectQ(
"UPDATE vac SET npp=npp-1 WHERE npp>"+DataSet->FieldByName("npp")->AsString
               );
    notSelectQ(
"DELETE FROM vac WHERE nomer="+DataSet->FieldByName("nomer")->AsString
               );

    vact->DisableControls();
    int x=vact->RecNo;
    vact->Requery();
    try{
    try           {vact->RecNo=x;}
        catch(...){vact->RecNo=x-1;};
    }
        catch(...){vact->RecNo=-1;}
    vact->EnableControls();

    Abort();
}
//---------------------------------------------------------------------------

#include "preload_form.h"
//---------------------------------------------------------------------------
bool ShowPreload()
{
    static Tpreload *x=new Tpreload(NULL);

    AnsiString dt=cur.GFromDate().FormatString("mm'/'dd'/'yyyy");
    x->ambni->Close();
    x->ambni->SQL->Clear();
    x->ambni->SQL->Add(
        "SELECT nomer, date, vladel, adr, zver, dz, date_next, send "
        "FROM amb "
        "WHERE (date_next<=#"+dt+"#) AND (send=0) AND (die=0)"
    );
    x->ambni->ExecSQL();
    x->ambni->Open();

    x->notinf->Close();
    x->notinf->SQL->Clear();
    x->notinf->SQL->Add(
        "SELECT nomer, date, vlad, zver, date_next, prep_id, send "
        "FROM vac "
        "WHERE (date_next<=#"+dt+"#) AND (send=0) AND (die=0)"
    );
    x->notinf->ExecSQL();
    x->notinf->Open();
    if (x->notinf->RecordCount>0 || x->ambni->RecordCount>0)
    {
        x->Show();
        x->BringToFront();
        return true;
    }
    return false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::tmrTimer(TObject *Sender)
{
    ShowPreload();
    Form1->WindowState=wsMaximized;
    tmr->Enabled=false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::FormCreate(TObject *Sender)
{
    //адреса гридов заносятся в соответственные им панели
    //чтобы потом при ресайзе изменять кол-во строк
    //в процедуре amb_panelResize
    dop_panel->Tag=(int)dop_grd;
    man_panel->Tag=(int)man_grd;
    prep_panel->Tag=(int)prep_grd;
    sales_panel->Tag=(int)sales_grd;
    std_panel->Tag=(int)std_grd;

    vdop_panel->Tag=(int)vdop_grd;
    vman_panel->Tag=(int)vman_grd;
    vprep_panel->Tag=(int)vprep_grd;
    vsales_panel->Tag=(int)vsales_grd;
    vstd_panel->Tag=(int)vstd_grd;

    tmr->Enabled=true;
    table->Last();
    table->Refresh();
    vact->Last();
    vact->Refresh();
    //предыдущий месяц
    USHORT y,m,d;
    TDate x=Date();
    x.DecodeDate(&y,&m,&d);
    x=EncodeDate(y,m,1);
    x--;
    do_date->Date=x;
    x.DecodeDate(&y,&m,&d);
    x=EncodeDate(y,m,1);
    ot_date->Date=x;

    WindowState=wsMaximized;
}
//---------------------------------------------------------------------------

bool vactupfl=false;
void __fastcall TForm1::vactdate_nextChange(TField *Sender)
{
    notSelectQ(
"UPDATE vac SET send=0 WHERE nomer="+vact->FieldByName("nomer")->AsString
               );
    vactupfl=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::grd_vacExit(TObject *Sender)
{
    post_s(vact);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::FormClose(TObject *Sender, TCloseAction &Action)
{
    post_s(table);
    post_s(vact);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::TabSheet2Enter(TObject *Sender)
{
    Form1->Caption="Журнал вакцинации";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::TabSheet1Enter(TObject *Sender)
{
    Form1->Caption="Журнал амбулаторного приема";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N3Click(TObject *Sender)
{
    if (!ShowPreload())
        MessageBox(NULL,"Неоповещенных владельцев нет","",
            MB_OK|MB_APPLMODAL|MB_ICONINFORMATION);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::MenuItem2Click(TObject *Sender)
{
    cur.EditPeriod();
    vactRAfterPost(vact);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::TabSheet2Resize(TObject *Sender)
{
    grd_vac->RowCount=grd_vac->Height/64;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N4Click(TObject *Sender)
{
    Tprep_frm* x=new Tprep_frm(NULL);
    x->ShowModal();
    delete x;
    //обновить
    prep->Close();
    prep->Open();
    vactRAfterPost(prep);
}
//---------------------------------------------------------------------------
bool flg=false;
//---------------------------------------------------------------------------
void __fastcall TForm1::editKeyDown(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
    flg=false;
    if (!Shift.Contains(ssCtrl)) return;
    if (Key!=VK_RETURN) return;
    flg=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::editKeyPress(TObject *Sender, char &Key)
{
    if (!flg) return;
    Key=0;
    TDBMemo* x=(TDBMemo*)Sender;
    x->Parent->Parent->SetFocus();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::fltpcClick(TObject *Sender)
{
    fltfp->Visible=fltpc->Checked;
    if (!fltpc->Checked) return;

    do_date->Date=StartOfTheMonth(Now())-1;
    ot_date->Date=StartOfTheMonth(StartOfTheMonth(Now())-1);

    TADOQuery* x=new TADOQuery(NULL);
    x->Connection=connect;
    x->SQL->Clear();
    x->SQL->Add("SELECT name FROM prep WHERE id<>0 ORDER BY name");
    x->ExecSQL();
    x->Open();
    prep_flt->Items->Clear();
    for(x->First();!x->Eof;x->Next())
    {
        prep_flt->Items->Add(x->FieldByName("name")->AsString);
    }
    x->Close();
    delete x;
}
//---------------------------------------------------------------------------

#include "otchet.h"
void __fastcall TForm1::otch_btnClick(TObject *Sender)
{
    if (prep_flt->Text.IsEmpty())
    {
        MessageBox(NULL,"Не указан препарат","Ошибка",
            MB_OK|MB_ICONERROR|MB_APPLMODAL);
        prep_flt->SetFocus();
        return;
    }
    delete new Totch_form(NULL);
}
//---------------------------------------------------------------------------

#include "vac_print.h"
void __fastcall TForm1::vac_schClick(TObject *Sender)
{
    delete new Tvac_prn(NULL);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::TabSheet1Show(TObject *Sender)
{
    TabSheet1Resize(Sender);
    dopanResize(Sender);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::TabSheet2Show(TObject *Sender)
{
    TabSheet2Resize(Sender);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::vacrpanelResize(TObject *Sender)
{
    int h=dopan->Height/5;
    vstd_panel->Height  =h;
    vman_panel->Height  =h;
    vprep_panel->Height =h;
    vdop_panel->Height  =h;
    vsales_panel->Height=h;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::vactAfterScroll(TDataSet *DataSet)
{
    if (vactupfl)
    {
        vact->Refresh();
        vactupfl=false;
    }

    AnsiString s;
    try{    s=DataSet->FieldByName("nomer")->AsString;}
    catch(...){ return;}
    s=s.IsEmpty()?AnsiString("0"):s;


    vsv->Close();
    vsv->SQL->Clear();
    vsv->SQL->Add(
"SELECT oper.oper, vsv.id_usl, vsv.id_op "
"FROM oper INNER JOIN (vac INNER JOIN vsv ON vac.nomer = vsv.id_usl) ON oper.id = vsv.id_op "
"WHERE vac.nomer="+s+" "
"ORDER BY oper.oper;"
                    );
    vsv->ExecSQL();
    vsv->Open();

    vmn_sv->Close();
    vmn_sv->SQL->Clear();
    vmn_sv->SQL->Add(
"SELECT vac.nomer, vmn_sv.nomer, vmn_sv.id, vmn_sv.id_mn, vmn_sv.count, mn_op.name, mn_op.nomer "
"FROM mn_op INNER JOIN (vac INNER JOIN vmn_sv ON vac.nomer = vmn_sv.id) ON mn_op.nomer = vmn_sv.id_mn "
"WHERE vac.nomer="+s+" "
"ORDER BY mn_op.name;"
                    );
    vmn_sv->ExecSQL();
    vmn_sv->Open();

    vlec_sv->Close();
    vlec_sv->SQL->Clear();
    vlec_sv->SQL->Add(
"SELECT vac.nomer, vlec_sv.nomer, vlec_sv.id, vlec_sv.id_lec, lec.name, vlec_sv.doza, vlec_sv.st, lec.nomer "
"FROM vac INNER JOIN (lec INNER JOIN vlec_sv ON lec.nomer = vlec_sv.id_lec) ON vac.nomer = vlec_sv.id "
"WHERE vac.nomer="+s+" "
"ORDER BY lec.name;"
                    );
    vlec_sv->ExecSQL();
    vlec_sv->Open();

    vsales_sv->Close();
    vsales_sv->SQL->Clear();
    vsales_sv->SQL->Add(
"SELECT vac.nomer, vsales_sv.nomer, vsales_sv.id, vsales_sv.id_sales, vsales_sv.count, vsales_sv.st, sales.name, sales.nomer "
"FROM sales INNER JOIN (vac INNER JOIN vsales_sv ON vac.nomer = vsales_sv.id) ON sales.nomer = vsales_sv.id_sales "
"WHERE vac.nomer="+s+" "
"ORDER BY sales.name; "
                    );
    vsales_sv->ExecSQL();
    vsales_sv->Open();

    vdop->Close();
    vdop->Open();

}
//---------------------------------------------------------------------------

void __fastcall TForm1::vactRAfterPost(TDataSet *DataSet)
{
    post_s(vact);

    vact->AfterScroll=NULL;

    DataSet->DisableControls();
    int x=DataSet->RecNo;
    DataSet->Close();
    DataSet->Open();
    try{
    try           {DataSet->RecNo=x;}
        catch(...){DataSet->RecNo=x-1;};
    }
        catch(...){DataSet->RecNo=-1;}
    DataSet->EnableControls();

    vact->DisableControls();
    x=vact->RecNo;
    vact->Requery();
    try{
    try           {vact->RecNo=x;}
        catch(...){vact->RecNo=x-1;};
    }
        catch(...){vact->RecNo=-1;}
    vact->EnableControls();

    vact->AfterScroll=vactAfterScroll;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::propfChange(TObject *Sender)
{
    vact->AfterScroll=NULL;
    vact->DisableControls();
    int x=vact->RecNo;
    vact->Requery();
    try{
    try           {vact->RecNo=x;}
        catch(...){vact->RecNo=x-1;};
    }
        catch(...){vact->RecNo=-1;}
    vact->EnableControls();
    vact->AfterScroll=vactAfterScroll;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::navClick(TObject *Sender, TNavigateBtn Button)
{
    TDataSet* tbl=((TDBNavigator*)Sender)->DataSource->DataSet;
    if(Button==nbRefresh)
    {
        tbl->Close();
        tbl->Open();
        tbl->Last();
        //tbl->Refresh();
    }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N7Click(TObject *Sender)
{
    if((int)ShellExecute(NULL,"open","help.chm",NULL,"",SW_SHOW)<=32)
        MessageBox(NULL,"Файл справки не найден","Ошибка",MB_OK|MB_ICONERROR);
}
//---------------------------------------------------------------------------

#include "vr_otch.h"
void __fastcall TForm1::vr_otchClick(TObject *Sender)
{
    delete new Tvrach_otch(NULL);
}
//---------------------------------------------------------------------------
// вставляет новую запись в конец журнала и копирует фио,
// адрес и данные о животном
// ЗЫ: первоначальный вариант каммента - фио адресс и собаку :)
//---------------------------------------------------------------------------
void __fastcall TForm1::cpbtnClick(TObject *Sender)
{
    if (PageControl1->ActivePageIndex==0)
    {
        AnsiString vl=table->FieldByName("vladel")->AsString;
        AnsiString ad=table->FieldByName("adr")->AsString;
        AnsiString zv=table->FieldByName("zver")->AsString;
        table->Insert();
        table->Edit();
        table->FieldByName("vladel")->AsString=vl;
        table->FieldByName("adr")->AsString=ad;
        table->FieldByName("zver")->AsString=zv;
        table->Post();
        dz->SetFocus();
    }
    else
    {
        AnsiString vl=vact->FieldByName("vlad")->AsString;
        AnsiString zv=vact->FieldByName("zver")->AsString;
        vact->Insert();
        vact->Edit();
        vact->FieldByName("vlad")->AsString=vl;
        vact->FieldByName("zver")->AsString=zv;
        vact->Post();
        propf->SetFocus();
    }
}
//---------------------------------------------------------------------------

