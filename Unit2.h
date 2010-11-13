//---------------------------------------------------------------------------

#ifndef Unit2H
#define Unit2H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <ADODB.hpp>
#include <DB.hpp>
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TForm2 : public TForm
{
__published:	// IDE-managed Components
    TDBGrid *tbl;
    TADOTable *oper;
    TAutoIncField *operid;
    TWideStringField *operoper;
    TIntegerField *operst;
    TDataSource *operds;
    TADOTable *mnman;
    TDataSource *mnds;
    TADOTable *lec;
    TDataSource *lecds;
    TDBGrid *man_grd;
    TDBGrid *lec_grd;
    TAutoIncField *mnmannomer;
    TWideStringField *mnmanname;
    TIntegerField *mnmancenad;
    TAutoIncField *lecnomer;
    TWideStringField *lecname;
    TPanel *Panel1;
    TDBGrid *sales_grd;
    TADOTable *sales;
    TDataSource *salesdds;
    TAutoIncField *salesnomer;
    TWideStringField *salesname;
    TDataSource *vrachids;
    TDBGrid *vrach_grd;
    TADOQuery *vrachi;
    TAutoIncField *vrachiid;
    TWideStringField *namevrach;
    void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
    void __fastcall gridKeyUp(TObject *Sender, WORD &Key,
          TShiftState Shift);
    void __fastcall FormCreate(TObject *Sender);
    void __fastcall AfterPost(TDataSet *DataSet);
    void __fastcall vrachiBeforeDelete(TDataSet *DataSet);
private:	// User declarations
public:		// User declarations
    __fastcall TForm2(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm2 *Form2;
//---------------------------------------------------------------------------
#endif
