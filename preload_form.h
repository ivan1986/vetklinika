//---------------------------------------------------------------------------

#ifndef preload_formH
#define preload_formH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ADODB.hpp>
#include <DB.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <dbcgrids.hpp>
#include <DBCtrls.hpp>
#include <Mask.hpp>
//---------------------------------------------------------------------------
class Tpreload : public TForm
{
__published:	// IDE-managed Components
    TADOQuery *notinf;
    TDataSource *DataSource1;
    TWideStringField *notinfvlad;
    TWideStringField *notinfzver;
    TDateTimeField *notinfdate_next;
    TBooleanField *notinfsend;
    TDBCtrlGrid *grd;
    TLabel *Label1;
    TLabel *Label2;
    TDBText *DBText1;
    TDBText *zver;
    TLabel *Label3;
    TDBEdit *DBEdit1;
    TLabel *Label4;
    TDBCheckBox *snd;
    TDBText *DBText2;
    TLabel *Label5;
    TAutoIncField *notinfnomer;
    TDateTimeField *notinfdate;
    TIntegerField *notinfprep_id;
    TStringField *notinfprep;
    TLabel *Label6;
    TDBText *DBText3;
    TLabel *Label7;
    TLabel *Label8;
    TADOQuery *ambni;
    TAutoIncField *ambninomer;
    TDateTimeField *ambnidate;
    TWideStringField *ambnivladel;
    TWideStringField *ambniadr;
    TWideStringField *ambnizver;
    TWideStringField *ambnidz;
    TDateTimeField *ambnidate_next;
    TBooleanField *ambnisend;
    TDataSource *DataSource2;
    TDBCtrlGrid *ambgrd;
    TLabel *Label9;
    TLabel *Label10;
    TLabel *Label11;
    TLabel *Label12;
    TLabel *Label13;
    TLabel *Label14;
    TLabel *Label15;
    TLabel *Label16;
    TDBCheckBox *DBCheckBox1;
    TDBEdit *DBEdit2;
    TDBText *DBText4;
    TDBText *DBText5;
    TDBText *DBText6;
    TDBText *DBText7;
    TDBText *DBText8;
    void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
    void __fastcall grdDblClick(TObject *Sender);
    void __fastcall ambgrdClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall Tpreload(TComponent* Owner);
};
//---------------------------------------------------------------------------
/*extern PACKAGE Tpreload *preload;*/
//---------------------------------------------------------------------------
#endif
