//---------------------------------------------------------------------------

#ifndef amH
#define amH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <jpeg.hpp>
#include <QRCtrls.hpp>
#include <QuickRpt.hpp>
#include <DBCtrls.hpp>
#include <Grids.hpp>
#include <ADODB.hpp>
#include <DB.hpp>
//---------------------------------------------------------------------------
class Tam_form : public TForm
{
__published:	// IDE-managed Components
    TQuickRep *QuickRep1;
    TQRBand *TitleBand1;
    TQRLabel *QRLabel3;
    TQRLabel *QRLabel2;
    TQRLabel *QRLabel4;
    TQRLabel *QRLabel5;
    TQRLabel *QRLabel6;
    TQRImage *QRImage1;
    TQRLabel *QRLabel1;
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
    TLabel *Label13;
    TEdit *y;
    TLabel *Label12;
    TEdit *m;
    TLabel *Label11;
    TEdit *d;
    TLabel *Label10;
    TDBText *DBText3;
    TLabel *Label4;
    TLabel *Label3;
    TDBText *DBText4;
    TEdit *vr;
    TLabel *Label2;
    TLabel *Label5;
    TLabel *Label6;
    TLabel *Label7;
    TLabel *Label8;
    TLabel *Label9;
    TImage *Image1;
    TLabel *Label1;
    TStringGrid *grid;
    TImage *Image2;
    TLabel *Label14;
    TShape *Shape1;
    TADOQuery *am;
    TButton *Button1;
    TShape *Shape2;
    TQRShape *QRShape5;
    TQRShape *QRShape6;
    TShape *Shape3;
    TShape *Shape4;
    TMemo *memo;
    TQRLabel *text;
    void __fastcall FormActivate(TObject *Sender);
    void __fastcall FormDeactivate(TObject *Sender);
    void __fastcall Button1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall Tam_form(TComponent* Owner);
    TQRLabel* dat[22];
};
//---------------------------------------------------------------------------
extern PACKAGE Tam_form *am_form;
//---------------------------------------------------------------------------
#endif
