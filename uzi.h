//---------------------------------------------------------------------------

#ifndef uziH
#define uziH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ADODB.hpp>
#include <DB.hpp>
#include <ExtCtrls.hpp>
#include <jpeg.hpp>
#include <DBCtrls.hpp>
#include <QRCtrls.hpp>
#include <QuickRpt.hpp>
#include <Mask.hpp>
//---------------------------------------------------------------------------
class Tuz_form : public TForm
{
__published:	// IDE-managed Components
    TShape *Shape2;
    TADOQuery *uz;
    TLabel *Label5;
    TLabel *Label4;
    TLabel *Label3;
    TLabel *Label2;
    TLabel *Label14;
    TShape *Shape1;
    TEdit *vr;
    TDBText *DBText3;
    TDBText *DBText4;
    TButton *Button1;
    TQuickRep *QuickRep1;
    TQRBand *TitleBand1;
    TQRLabel *QRLabel6;
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
    TQRLabel *text;
    TEdit *tmpedit;
    TDBEdit *f1;
    TLabel *Label10;
    TDataSource *uzds;
    TIntegerField *uzid;
    TWideStringField *uzf1;
    TWideStringField *uzf2;
    TWideStringField *uzf3;
    TWideStringField *uzf4;
    TWideStringField *uzf5;
    TWideStringField *uzf6;
    TWideStringField *uzf7;
    TWideStringField *uzf8;
    TWideStringField *uzf9;
    TWideStringField *uzf10;
    TWideStringField *uzf11;
    TWideStringField *uzf12;
    TWideStringField *uzf13;
    TWideStringField *uzf14;
    TWideStringField *uzf15;
    TWideStringField *uzf16;
    TWideStringField *uzf17;
    TWideStringField *uzf18;
    TWideStringField *uzf19;
    TWideStringField *uzf20;
    TWideStringField *uzf21;
    TWideStringField *uzf22;
    TWideStringField *uzf23;
    TWideStringField *uzf24;
    TWideStringField *uzf25;
    TWideStringField *uzf26;
    TWideStringField *uzf27;
    TWideStringField *uzf28;
    TWideStringField *uzf29;
    TWideStringField *uzf30;
    TWideStringField *uzf31;
    TWideStringField *uzf32;
    TWideStringField *uztext;
    TDBMemo *memo;
    TLabel *Label11;
    TDBEdit *f2;
    TLabel *Label12;
    TDBEdit *f3;
    TLabel *Label13;
    TDBEdit *f4;
    TLabel *Label15;
    TDBEdit *f5;
    TLabel *Label17;
    TDBEdit *f10;
    TLabel *Label18;
    TLabel *Label19;
    TLabel *Label20;
    TDBEdit *f9;
    TDBEdit *f8;
    TLabel *Label22;
    TLabel *Label23;
    TDBEdit *f7;
    TDBEdit *f6;
    TDBEdit *f18;
    TLabel *Label24;
    TLabel *Label25;
    TLabel *Label26;
    TDBEdit *f16;
    TDBEdit *f14;
    TDBEdit *f12;
    TLabel *Label27;
    TLabel *Label29;
    TDBEdit *f11;
    TLabel *Label32;
    TDBEdit *f22;
    TDBEdit *f21;
    TLabel *Label33;
    TLabel *Label35;
    TDBEdit *f20;
    TLabel *Label16;
    TLabel *Label21;
    TLabel *Label28;
    TLabel *Label36;
    TLabel *Label37;
    TDBEdit *f19;
    TDBEdit *f17;
    TDBEdit *f15;
    TDBEdit *f13;
    TLabel *Label34;
    TDBEdit *f24;
    TLabel *Label30;
    TLabel *Label31;
    TDBEdit *f25;
    TLabel *Label38;
    TDBEdit *f26;
    TLabel *Label41;
    TDBEdit *f23;
    TLabel *Label42;
    TDBEdit *f27;
    TLabel *Label39;
    TLabel *Label40;
    TDBEdit *f29;
    TLabel *Label43;
    TDBEdit *f30;
    TLabel *Label44;
    TDBEdit *f28;
    TLabel *Label45;
    TLabel *Label46;
    TDBEdit *f31;
    TLabel *Label47;
    TDBEdit *f32;
    TQRLabel *QRLabel9;
    TQRMemo *pmemo;
    TQRLabel *QRLabel10;
    TQRMemo *jmemo;
    TQRMemo *smemo;
    TQRLabel *QRLabel11;
    TQRMemo *pjmemo;
    TQRLabel *QRLabel12;
    TQRLabel *QRLabel15;
    TQRMemo *mtmemo;
    TQRLabel *QRLabel16;
    TQRLabel *QRLabel17;
    TQRDBText *QRDBText3;
    TQRDBText *QRDBText4;
    TQRLabel *QRLabel18;
    TQRLabel *QRLabel19;
    TQRLabel *QRLabel20;
    TQRMemo *QRMemo1;
    TQRMemo *pp;
    TQRMemo *lp;
    TQRLabel *QRLabel21;
    TQRDBText *QRDBText5;
    TQRLabel *QRLabel22;
    TQRMemo *mpmemo;
    TQRImage *head;
    void __fastcall FormActivate(TObject *Sender);
    void __fastcall FormDeactivate(TObject *Sender);
    void __fastcall Button1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall Tuz_form(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE Tuz_form *uz_form;
//---------------------------------------------------------------------------
#endif
