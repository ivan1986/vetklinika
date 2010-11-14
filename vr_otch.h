//---------------------------------------------------------------------------

#ifndef vr_otchH
#define vr_otchH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "ToolEdit.hpp"
#include <Mask.hpp>
#include <ADODB.hpp>
#include <DB.hpp>
#include <ExtCtrls.hpp>
#include <QuickRpt.hpp>
#include <QRCtrls.hpp>
//---------------------------------------------------------------------------
class Tvrach_otch : public TForm
{
__published:	// IDE-managed Components
    TLabel *Label35;
    TDateEdit *fot;
    TDateEdit *fdo;
    TLabel *Label34;
    TButton *Button1;
    TADOQuery *zap;
    TDataSource *zapds;
    TQuickRep *rep;
    TQRBand *TitleBand1;
    TQRBand *DetailBand1;
    TQRBand *SummaryBand1;
    TQRLabel *QRLabel1;
    TQRLabel *title;
    TQRLabel *pr;
    TQRLabel *name;
    TQRLabel *count;
    TQRLabel *QRLabel5;
    TQRLabel *QRLabel6;
    TQRLabel *QRLabel7;
    TQRLabel *QRLabel8;
    TQRLabel *QRLabel9;
    TQRLabel *pr_sc;
    TQRLabel *pr_ss;
    TQRShape *QRShape1;
    TQRDBText *QRDBText1;
    TQRDBText *QRDBText2;
    TQRLabel *prc;
    TQRDBText *QRDBText3;
    TQRLabel *prs;
    TComboBox *type;
    TWideStringField *zapname;
    TFloatField *zapcnt;
    TFloatField *zapsumma;
    void __fastcall FormKeyPress(TObject *Sender, char &Key);
    void __fastcall FormCreate(TObject *Sender);
    void __fastcall Button1Click(TObject *Sender);
    void __fastcall prcPrint(TObject *sender, AnsiString &Value);
    void __fastcall prsPrint(TObject *sender, AnsiString &Value);
    void __fastcall QRDBText2Print(TObject *sender, AnsiString &Value);
private:	// User declarations
    int sum,c;
public:		// User declarations
    __fastcall Tvrach_otch(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE Tvrach_otch *vrach_otch;
//---------------------------------------------------------------------------
#endif
