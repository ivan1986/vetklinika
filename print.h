//---------------------------------------------------------------------------

#ifndef printH
#define printH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <QuickRpt.hpp>
#include <ADODB.hpp>
#include <DB.hpp>
#include <jpeg.hpp>
#include <QRCtrls.hpp>
//---------------------------------------------------------------------------
class Tprint_form : public TForm
{
__published:	// IDE-managed Components
    TQuickRep *title;
    TQRBand *TitleBand1;
    TQRImage *QRImage1;
    TQRLabel *QRLabel2;
    TQRLabel *QRLabel3;
    TQRLabel *QRLabel4;
    TQRLabel *QRLabel5;
    TQRLabel *QRLabel6;
    TQRCompositeReport *cr;
    TDataSource *tbl;
    TADOTable *dop;
    TQRShape *QRShape1;
    TQRShape *QRShape5;
    TQRDBText *QRDBText10;
    TQRDBText *QRDBText12;
    TQRLabel *QRLabel12;
    TQRLabel *QRLabel13;
    TQuickRep *itogo;
    TQRBand *SummaryBand2;
    TQRLabel *QRLabel7;
    TQRShape *QRShape2;
    TQRDBText *QRDBText4;
    TQuickRep *prep;
    TQRBand *TitleBand3;
    TQRLabel *QRLabel9;
    TQRShape *QRShape3;
    TQRBand *DetailBand2;
    TQRDBText *QRDBText5;
    TQRLabel *QRLabel1;
    TQRDBText *QRDBText3;
    TQRDBText *QRDBText6;
    TQuickRep *mn_man;
    TQRBand *DetailBand3;
    TQRDBText *QRDBText7;
    TQRDBText *QRDBText9;
    TQRExpr *QRExpr1;
    TQRLabel *QRLabel10;
    TQuickRep *not_std;
    TQRBand *QRBand2;
    TQRLabel *QRLabel11;
    TQRShape *QRShape4;
    TQRBand *QRBand3;
    TQRDBText *QRDBText8;
    TQRDBText *QRDBText11;
    TQuickRep *manip;
    TQRBand *QRBand1;
    TQRDBText *QRDBText13;
    TQRDBText *QRDBText14;
    TADOQuery *Qman;
    TWideStringField *Qmanoper;
    TIntegerField *Qmanst;
    TADOQuery *Qmnman;
    TWideStringField *Qmnmanname;
    TIntegerField *Qmnmancenad;
    TIntegerField *Qmnmancount;
    TADOQuery *Qprep;
    TWideStringField *Qprepname;
    TWideStringField *Qprepdoza;
    TIntegerField *Qprepst;
    TQuickRep *sales;
    TQRBand *DetailBand1;
    TQRBand *TitleBand2;
    TQRShape *QRShape6;
    TQRLabel *QRLabel8;
    TQRDBText *QRDBText1;
    TQRLabel *QRLabel14;
    TQRDBText *QRDBText2;
    TQRDBText *QRDBText15;
    TADOQuery *Qsales;
    TQRLabel *ot_l;
    TWideStringField *Qsalesname;
    TIntegerField *Qsalescount;
    TIntegerField *Qsalesst;
    TQRLabel *QRLabel15;
    TQRLabel *QRLabel16;
    TQRLabel *QRLabel17;
    TQRLabel *QRLabel18;
    TQRLabel *QRLabel20;
    TQRLabel *QRLabel21;
    void __fastcall FormCreate(TObject *Sender);
    void __fastcall crAddReports(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall Tprint_form(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE Tprint_form *print_form;
//---------------------------------------------------------------------------
#endif
