//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit2.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm2 *Form2;
//---------------------------------------------------------------------------
__fastcall TForm2::TForm2(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm2::FormClose(TObject *Sender, TCloseAction &Action)
{
    post_s(oper);
    post_s(mnman);
    post_s(lec);
    post_s(sales);
    post_s(vrachi);
}
//---------------------------------------------------------------------------
void __fastcall TForm2::gridKeyUp(TObject *Sender, WORD &Key,
      TShiftState Shift)
{        
    if (Key!=VK_DELETE) return;
    if (MessageBox(NULL,"Удалить запись?","Удаление записи",
        MB_OKCANCEL|MB_APPLMODAL|MB_DEFBUTTON2|MB_ICONWARNING)
        !=ID_OK) return;
    ((TDBGrid*)Sender)->DataSource->DataSet->Delete();
}
//---------------------------------------------------------------------------


void __fastcall TForm2::FormCreate(TObject *Sender)
{
    oper->Sort  ="oper ASC";
    mnman->Sort ="name ASC";
    lec->Sort   ="name ASC";
    sales->Sort ="name ASC";
    this->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TForm2::AfterPost(TDataSet *DataSet)
{
    DataSet->Refresh();
}
//---------------------------------------------------------------------------

void __fastcall TForm2::vrachiBeforeDelete(TDataSet *DataSet)
{
    TADOQuery* del=new TADOQuery(NULL);
    del->Connection=Form1->connect;
    del->Close();
    del->SQL->Clear();
    del->SQL->Add("UPDATE amb SET vrach_id=0 "
    "WHERE vrach_id="+vrachi->FieldByName("id")->AsString);
    del->ExecSQL();
    delete del;
}
//---------------------------------------------------------------------------

