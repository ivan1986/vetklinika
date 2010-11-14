//---------------------------------------------------------------------------

#ifndef lfH
#define lfH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <jpeg.hpp>
#include <QRCtrls.hpp>
#include <QuickRpt.hpp>
#include <ADODB.hpp>
#include <DB.hpp>
#include <DBCtrls.hpp>
#include <Mask.hpp>
//---------------------------------------------------------------------------
class Tlf_form : public TForm
{
__published:	// IDE-managed Components
    TQuickRep *QuickRep1;
    TQRBand *TitleBand1;
    TQRLabel *QRLabel6;
    TQRLabel *QRLabel1;
    TQRDBText *QRDBText1;
    TQRShape *QRShape1;
    TQRLabel *QRLabel7;
    TQRShape *QRShape2;
    TQRDBText *QRDBText2;
    TButton *Button1;
    TQRLabel *vrach;
    TQRShape *QRShape3;
    TQRLabel *QRLabel13;
    TQRImage *QRImage3;
    TQRImage *QRImage4;
    TQRLabel *QRLabel14;
    TQRShape *QRShape4;
    TQRShape *QRShape6;
    TDBText *DBText1;
    TDBText *DBText2;
    TEdit *vr;
    TADOQuery *lft;
    TEdit *Edit1;
    TEdit *Edit2;
    TEdit *Edit3;
    TEdit *Edit4;
    TEdit *Edit5;
    TEdit *Edit6;
    TEdit *Edit7;
    TQRLabel *l1;
    TQRLabel *l2;
    TQRLabel *l3;
    TQRLabel *l4;
    TQRLabel *l5;
    TQRLabel *l6;
    TQRLabel *l7;
    TShape *Shape1;
    TLabel *Label1;
    TLabel *Label2;
    TLabel *Label3;
    TLabel *Label4;
    TLabel *Label5;
    TLabel *Label10;
    TLabel *Label11;
    TEdit *d;
    TEdit *m;
    TEdit *y;
    TLabel *Label12;
    TQRLabel *ot_l;
    TLabel *Label13;
    TDBText *DBText3;
    TDBText *DBText4;
    TMemo *memo;
    TQRLabel *text;
    TQRImage *head;
    void __fastcall Button1Click(TObject *Sender);
    void __fastcall FormActivate(TObject *Sender);
    void __fastcall FormDeactivate(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall Tlf_form(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE Tlf_form *lf_form;
//---------------------------------------------------------------------------
#endif
