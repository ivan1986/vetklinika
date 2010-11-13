//---------------------------------------------------------------------------

#ifndef prep_formH
#define prep_formH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ADODB.hpp>
#include <DB.hpp>
#include <dbcgrids.hpp>
#include <DBCtrls.hpp>
#include <ExtCtrls.hpp>
#include <Mask.hpp>
//---------------------------------------------------------------------------
class Tprep_frm : public TForm
{
__published:	// IDE-managed Components
    TDataSource *prepds;
    TDBCtrlGrid *grd;
    TDBEdit *namef;
    TDBMemo *pprotivf;
    TShape *Shape1;
    TShape *Shape2;
    TPanel *Panel1;
    TLabel *Label1;
    TLabel *Label2;
    TDBNavigator *DBNavigator1;
    TDBEdit *DBEdit1;
    TLabel *Label3;
    TADOQuery *prep;
    TAutoIncField *prepid;
    TWideStringField *prepname;
    TMemoField *prepprotiv;
    TIntegerField *prepst;
    void __fastcall FormResize(TObject *Sender);
    void __fastcall prepAfterInsert(TDataSet *DataSet);
    void __fastcall pprotivfKeyDown(TObject *Sender, WORD &Key,
          TShiftState Shift);
    void __fastcall pprotivfKeyPress(TObject *Sender, char &Key);
    void __fastcall grdPaintPanel(TDBCtrlGrid *DBCtrlGrid, int Index);
    void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
    void __fastcall prepBeforeDelete(TDataSet *DataSet);
    void __fastcall grdKeyUp(TObject *Sender, WORD &Key,
          TShiftState Shift);
private:	// User declarations
public:		// User declarations
    __fastcall Tprep_frm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE Tprep_frm *prep_frm;
//---------------------------------------------------------------------------
#endif
