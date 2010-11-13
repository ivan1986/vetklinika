//---------------------------------------------------------------------------

#ifndef receptH
#define receptH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ADODB.hpp>
#include <DB.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <ExtCtrls.hpp>
#include <QuickRpt.hpp>
#include <jpeg.hpp>
#include <QRCtrls.hpp>
//---------------------------------------------------------------------------
class Trecept_form : public TForm
{
__published:	// IDE-managed Components
    TADOQuery *zap;
    TDataSource *DataSource1;
    TDBGrid *grd;
    TPanel *Panel1;
    TPanel *Panel3;
    TQuickRep *rep;
    TButton *Button1;
    TQRBand *TitleBand1;
    TQRBand *DetailBand1;
    TQRLabel *QRLabel6;
    TQRLabel *QRLabel5;
    TQRLabel *QRLabel4;
    TQRLabel *QRLabel3;
    TQRLabel *QRLabel2;
    TQRImage *QRImage1;
    TQRDBText *QRDBText1;
    TQRDBText *QRDBText2;
    TADOQuery *prn;
    TAutoIncField *zapnomer;
    TIntegerField *zapid;
    TWideStringField *zapprep;
    TWideStringField *zapprim;
    void __fastcall zapAfterInsert(TDataSet *DataSet);
    void __fastcall FormActivate(TObject *Sender);
    void __fastcall zapAfterPost(TDataSet *DataSet);
    void __fastcall grdKeyUp(TObject *Sender, WORD &Key,
          TShiftState Shift);
    void __fastcall Button1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall Trecept_form(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE Trecept_form *recept_form;
//---------------------------------------------------------------------------
#endif
