//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "prep_form.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
Tprep_frm *prep_frm;
//---------------------------------------------------------------------------
__fastcall Tprep_frm::Tprep_frm(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall Tprep_frm::FormResize(TObject *Sender)
{
    grd->RowCount=grd->Height/68;    
}
//---------------------------------------------------------------------------
void __fastcall Tprep_frm::prepAfterInsert(TDataSet *DataSet)
{
    DataSet->FieldByName("st")->AsInteger=0;
    DataSet->Post();
    namef->SetFocus();
}
//---------------------------------------------------------------------------
bool flag=false;
//---------------------------------------------------------------------------
void __fastcall Tprep_frm::pprotivfKeyDown(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
    flag=false;
    if (!Shift.Contains(ssCtrl)) return;
    if (Key!=VK_RETURN) return;
    flag=true;
}
//---------------------------------------------------------------------------
void __fastcall Tprep_frm::pprotivfKeyPress(TObject *Sender, char &Key)
{
    if (!flag) return;
    Key=0;
    grd->SetFocus();
}
//---------------------------------------------------------------------------
void __fastcall Tprep_frm::grdPaintPanel(TDBCtrlGrid *DBCtrlGrid,
      int Index)
{
    if (DBCtrlGrid->PanelIndex==Index)
    {
        DBCtrlGrid->Canvas->Brush->Color=TColor(0xc97632);
        int x=DBCtrlGrid->Height; x/=DBCtrlGrid->RowCount;
        DBCtrlGrid->Canvas->FillRect(TRect(1,1,DBCtrlGrid->Width-2,x-2));
    }
}
//---------------------------------------------------------------------------
void __fastcall Tprep_frm::FormClose(TObject *Sender, TCloseAction &Action)
{
    post_s(prep);
}
//---------------------------------------------------------------------------

void __fastcall Tprep_frm::prepBeforeDelete(TDataSet *DataSet)
{
    TADOQuery* del=new TADOQuery(NULL);
    del->Connection=Form1->connect;
    del->Close();
    del->SQL->Clear();
    del->SQL->Add("UPDATE vac SET prep_id=0 "
    "WHERE prep_id="+prep->FieldByName("id")->AsString);
    del->ExecSQL();
    delete del;
}
//---------------------------------------------------------------------------

void __fastcall Tprep_frm::grdKeyUp(TObject *Sender, WORD &Key,
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

