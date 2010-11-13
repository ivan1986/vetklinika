//---------------------------------------------------------------------------

#ifndef otchetH
#define otchetH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <QRCtrls.hpp>
#include <QuickRpt.hpp>
#include <ADODB.hpp>
#include <DB.hpp>
#include <DBCtrls.hpp>
#include <inifiles.hpp>
//---------------------------------------------------------------------------
class Totch_form : public TForm
{
__published:	// IDE-managed Components
    TQuickRep *QuickRep1;
    TQRImage *QRImage1;
    TImage *Image1;
    TLabel *Label10;
    TEdit *d;
    TLabel *Label11;
    TEdit *m;
    TLabel *Label12;
    TEdit *y;
    TLabel *Label13;
    TLabel *Label1;
    TQRLabel *QRLabel1;
    TQRLabel *ot_l;
    TQRBand *TitleBand1;
    TButton *Button1;
    TADOQuery *zapros;
    TLabel *Label2;
    TLabel *dates;
    TLabel *countl;
    TMemo *protiv;
    TLabel *vac;
    TLabel *Label3;
    TEdit *vr1;
    TEdit *vr2;
    TEdit *vr3;
    TEdit *vr4;
    TEdit *proizv;
    TLabel *Label4;
    TEdit *ser;
    TLabel *Label5;
    TEdit *contr;
    TLabel *Label6;
    TEdit *data_izg;
    TLabel *Label7;
    TEdit *godn;
    TLabel *Label8;
    TLabel *Label9;
    TEdit *doz;
    TLabel *Label14;
    TLabel *Label15;
    TLabel *Label16;
    TLabel *Label17;
    TLabel *Label18;
    TShape *Shape1;
    TQRLabel *vrachi;
    TLabel *Label19;
    TQRLabel *date_count_prot;
    TQRLabel *vactsina;
    TQRLabel *proizvod;
    TQRLabel *izg;
    TQRLabel *rash;
    TQRLabel *QRLabel2;
    TQRLabel *QRLabel3;
    TQRLabel *QRLabel4;
    TQRLabel *QRLabel5;
    TQRLabel *v1;
    TQRLabel *v2;
    TQRLabel *v4;
    TQRLabel *v3;
    TQRShape *QRShape1;
    TQRShape *QRShape3;
    TQRShape *QRShape2;
    TQRShape *QRShape4;
    TLabel *Label20;
    TLabel *Label21;
    TEdit *jiv;
    TQRLabel *QRLabel6;
    TQRLabel *QRLabel7;
    void __fastcall Button1Click(TObject *Sender);
    void __fastcall vrExit(TObject *Sender);
private:	// User declarations
    bool zero;
public:		// User declarations
    __fastcall Totch_form(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE Totch_form *otch_form;
//---------------------------------------------------------------------------
#endif
