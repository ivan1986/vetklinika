//---------------------------------------------------------------------------

#ifndef biohim_formH
#define biohim_formH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ADODB.hpp>
#include <DB.hpp>
#include <DBCtrls.hpp>
#include <ExtCtrls.hpp>
#include <Grids.hpp>
#include <jpeg.hpp>
#include <QRCtrls.hpp>
#include <QuickRpt.hpp>
//---------------------------------------------------------------------------
class Tbiohim : public TForm
{
__published:	// IDE-managed Components
    TQuickRep *QuickRep1;
    TQRBand *TitleBand1;
    TQRLabel *QRLabel6;
    TQRLabel *ot_l;
    TQRLabel *QRLabel7;
    TQRDBText *QRDBText1;
    TQRShape *QRShape1;
    TQRDBText *QRDBText2;
    TQRLabel *QRLabel8;
    TQRLabel *QRLabel13;
    TQRLabel *vrach;
    TQRShape *QRShape3;
    TQRShape *QRShape2;
    TQRLabel *QRLabel14;
    TQRShape *QRShape4;
    TQRImage *QRImage2;
    TShape *Shape2;
    TLabel *Label13;
    TLabel *Label12;
    TLabel *Label11;
    TLabel *Label10;
    TDBText *DBText3;
    TLabel *Label4;
    TLabel *Label3;
    TDBText *DBText4;
    TLabel *Label2;
    TLabel *Label5;
    TImage *Image2;
    TLabel *Label14;
    TShape *Shape1;
    TEdit *y;
    TEdit *m;
    TEdit *d;
    TEdit *vr;
    TStringGrid *grid;
    TButton *Button1;
    TADOQuery *am;
    TEdit *h;
    TLabel *Label15;
    TLabel *Label16;
    TEdit *min;
    TEdit *tmpedit;
    TQRLabel *text;
    TMemo *memo;
    TQRImage *head;
    void __fastcall FormActivate(TObject *Sender);
    void __fastcall Button1Click(TObject *Sender);
    void __fastcall FormDeactivate(TObject *Sender);
    void __fastcall ededitExit(TObject *Sender);
    void __fastcall dogeditExit(TObject *Sender);
    void __fastcall cateditExit(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall Tbiohim(TComponent* Owner);
    TQRLabel* dat[4][16];
    TEdit* edits[3][16];
};
//---------------------------------------------------------------------------
extern PACKAGE Tbiohim *biohim;
//---------------------------------------------------------------------------
#endif
