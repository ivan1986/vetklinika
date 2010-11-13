//---------------------------------------------------------------------------

#ifndef dopH
#define dopH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ADODB.hpp>
#include <DB.hpp>
#include <DBCtrls.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <Dialogs.hpp>
#include <ExtDlgs.hpp>
#include <OleCtnrs.hpp>
#include <ExtCtrls.hpp>
#include <dbcgrids.hpp>
#include <Mask.hpp>
#include <QuickRpt.hpp>
#include <QRCtrls.hpp>
//---------------------------------------------------------------------------
class Tdop_form : public TForm
{
__published:	// IDE-managed Components
    TDataSource *dopds;
    TDBMemo *dop_text;
    TPanel *Panel3;
    TPanel *Panel2;
    TButton *prnb;
    TQuickRep *rep;
    TQRBand *TitleBand1;
    TQRBand *DetailBand1;
    TQRImage *QRImage1;
    TQRLabel *QRLabel2;
    TQRLabel *QRLabel3;
    TQRLabel *QRLabel4;
    TQRLabel *QRLabel5;
    TQRLabel *QRLabel1;
    TQRMemo *text;
    TPanel *Panel1;
    TQRLabel *capt;
    TADOQuery *dop;
    TIntegerField *dopid;
    TMemoField *doptext;
    TMemoField *dopekg;
    void __fastcall dop_textKeyDown(TObject *Sender, WORD &Key,
          TShiftState Shift);
    void __fastcall dop_textKeyPress(TObject *Sender, char &Key);
    void __fastcall dop_textExit(TObject *Sender);
    void __fastcall prnbClick(TObject *Sender);
    void __fastcall Panel3Resize(TObject *Sender);
    void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
    void __fastcall FormActivate(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall Tdop_form(TComponent* Owner, bool ekg);
};
//---------------------------------------------------------------------------
extern PACKAGE Tdop_form *dop_form;
//---------------------------------------------------------------------------
#endif
