//---------------------------------------------------------------------------

#ifndef vac_printH
#define vac_printH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <QuickRpt.hpp>
#include <QRCtrls.hpp>
#include <ADODB.hpp>
#include <DB.hpp>
//---------------------------------------------------------------------------
class Tvac_prn : public TForm
{
__published:	// IDE-managed Components
    TQuickRep *rep;
    TQRBand *TitleBand1;
    TQRShape *QRShape5;
    TQRShape *QRShape1;
    TQRLabel *QRLabel6;
    TQRLabel *QRLabel13;
    TQRLabel *QRLabel12;
    TQRDBText *QRDBText12;
    TQRDBText *QRDBText10;
    TQRShape *QRShape2;
    TQRShape *QRShape3;
    TQRLabel *QRLabel1;
    TQRDBText *QRDBText1;
    TQRLabel *QRLabel7;
    TQRDBText *QRDBText2;
    TQRLabel *QRLabel8;
    TQRDBText *QRDBText3;
    TADOTable *prepr;
    TAutoIncField *preprid;
    TWideStringField *preprname;
    TMemoField *preprprotiv;
    TIntegerField *preprst;
    TQRCompositeReport *reps;
    TQuickRep *itogo;
    TQRBand *SummaryBand2;
    TQRLabel *QRLabel15;
    TQRShape *QRShape7;
    TQRDBText *QRDBText9;
    TADOQuery *Qsales;
    TADOTable *Tdop;
    TQRLabel *ot_l;
    TQRLabel *QRLabel18;
    TWideStringField *Qsalesname;
    TIntegerField *Qsalescount;
    TIntegerField *Qsalesst;
    TADOQuery *Qprep;
    TWideStringField *Qprepname;
    TIntegerField *Qprepst;
    TADOQuery *Qmnman;
    TWideStringField *Qmnmanname;
    TIntegerField *Qmnmancenad;
    TIntegerField *Qmnmancount;
    TADOQuery *Qman;
    TWideStringField *Qmanoper;
    TIntegerField *Qmanst;
    TQuickRep *sales;
    TQRBand *DetailBand1;
    TQRDBText *QRDBText4;
    TQRLabel *QRLabel14;
    TQRDBText *QRDBText5;
    TQRDBText *QRDBText15;
    TQRLabel *QRLabel20;
    TQRBand *TitleBand2;
    TQRShape *QRShape6;
    TQRLabel *QRLabel9;
    TQuickRep *prep;
    TQRBand *TitleBand3;
    TQRLabel *QRLabel10;
    TQRShape *QRShape4;
    TQRBand *DetailBand2;
    TQRDBText *QRDBText6;
    TQRLabel *QRLabel11;
    TQRDBText *QRDBText7;
    TQRDBText *QRDBText8;
    TQRLabel *QRLabel17;
    TQuickRep *not_std;
    TQRBand *QRBand2;
    TQRLabel *QRLabel16;
    TQRShape *QRShape8;
    TQRBand *QRBand3;
    TQRDBText *QRDBText11;
    TQRDBText *QRDBText13;
    TQRLabel *QRLabel19;
    TQuickRep *mn_man;
    TQRBand *DetailBand3;
    TQRDBText *QRDBText14;
    TQRDBText *QRDBText16;
    TQRExpr *QRExpr1;
    TQRLabel *QRLabel21;
    TQRLabel *QRLabel22;
    TQuickRep *manip;
    TQRBand *QRBand1;
    TQRDBText *QRDBText17;
    TQRDBText *QRDBText18;
    TQRLabel *QRLabel23;
    TDataSource *tbl;
    TQRLabel *QRLabel25;
    TFloatField *Qprepdoza;
    TQRImage *head;
    TQRImage *QRImage1;
    void __fastcall FormCreate(TObject *Sender);
    void __fastcall repsAddReports(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall Tvac_prn(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE Tvac_prn *vac_prn;
//---------------------------------------------------------------------------
#endif
