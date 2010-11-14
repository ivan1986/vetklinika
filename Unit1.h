//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ADODB.hpp>
#include <DB.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <DBCtrls.hpp>
#include <Mask.hpp>
#include <ExtCtrls.hpp>
#include <ComCtrls.hpp>
#include <dbcgrids.hpp>
#include <CheckLst.hpp>
#include <Menus.hpp>
#include <jpeg.hpp>
#include "RxLookup.hpp"
#include "RXDBCtrl.hpp"
#include "ToolEdit.hpp"
#include "DBIndex.hpp"
#include "RxDBComb.hpp"
#include "CurrEdit.hpp"
#include <dateutils.hpp>
#include <Buttons.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
    TDataSource *ambulatoru;
    TDBCtrlGrid *grid;
    TLabel *Label1;
    TDBEdit *dat;
    TLabel *Label2;
    TPanel *dopanel;
    TLabel *Label3;
    TDBEdit *vld;
    TLabel *Label4;
    TDBEdit *zver;
    TLabel *Label5;
    TLabel *Label6;
    TLabel *Label7;
    TDBText *susl;
    TADOConnection *connect;
    TPanel *fcheckpanel;
    TCheckBox *flt;
    TPanel *fpan;
    TLabel *Label8;
    TLabel *Label9;
    TLabel *Label10;
    TLabel *Label12;
    TLabel *Label13;
    TEdit *vladf;
    TEdit *zverf;
    TLabel *Label14;
    TMaskEdit *sub;
    TMaskEdit *sue;
    TLabel *Label15;
    TEdit *dzf;
    TEdit *dopf;
    TLabel *Label11;
    TDBEdit *adr;
    TEdit *adrf;
    TLabel *Label16;
    TShape *delim;
    TShape *Shape1;
    TButton *lf_btn;
    TButton *am_btn;
    TPanel *top_panel;
    TDBNavigator *main_nav;
    TButton *prnBtn;
    TDataSource *dopds;
    TADOTable *dopt;
    TPageControl *PageControl1;
    TTabSheet *TabSheet1;
    TTabSheet *TabSheet2;
    TLabel *Label18;
    TLabel *Label19;
    TLabel *Label20;
    TLabel *Label21;
    TLabel *Label22;
    TLabel *Label23;
    TLabel *Label24;
    TDBCtrlGrid *grd_vac;
    TDBText *vacn;
    TDBEdit *datevac;
    TDBEdit *d_nextvac;
    TDBMemo *vladvac;
    TDBMemo *zvervac;
    TDataSource *DS;
    TMainMenu *menu;
    TMenuItem *MenuItem1;
    TMenuItem *MenuItem2;
    TMenuItem *N3;
    TTimer *tmr;
    TShape *Shape2;
    TShape *Shape3;
    TPanel *header;
    TTabSheet *TabSheet3;
    TImage *logo_b;
    TImage *logo_s;
    TIntegerField *doptid;
    TWideStringField *doptprep;
    TIntegerField *doptst;
    TAutoIncField *doptnomer;
    TDataSource *dslec;
    TPanel *dopan;
    TDataSource *dsmn_sv;
    TDBNavigator *vac_nav;
    TButton *bh_btn;
    TMenuItem *N4;
    TADOTable *prep;
    TAutoIncField *prepid;
    TWideStringField *prepname;
    TMemoField *prepprotiv;
    TDataSource *prepds;
    TRxDBLookupCombo *propf;
    TDBCtrlGrid *man_grd;
    TDBEdit *mnman_conutf;
    TPanel *man_panel;
    TPanel *man_pan;
    TPanel *prep_panel;
    TDBCtrlGrid *prep_grd;
    TPanel *lech_pan;
    TDBEdit *lec_dozaf;
    TDBNavigator *man_nav;
    TDBNavigator *prep_nav;
    TDBText *nomf;
    TPanel *dop_panel;
    TDBCtrlGrid *dop_grd;
    TPanel *doph_pan;
    TDBEdit *dop_stf;
    TDBEdit *dop_prepf;
    TDBNavigator *dop_nav;
    TIntegerField *prepst;
    TDBText *cvf;
    TLabel *Label25;
    TPanel *fltp;
    TPanel *fltcp;
    TPanel *fltfp;
    TCheckBox *fltpc;
    TComboBox *prep_flt;
    TADOQuery *mn_sv;
    TAutoIncField *mn_svmn_svnomer;
    TIntegerField *mn_svid;
    TIntegerField *mn_svid_mn;
    TIntegerField *mn_svcount;
    TWideStringField *mn_svname;
    TAutoIncField *mn_svmn_opnomer;
    TAutoIncField *mn_svambnomer;
    TADOQuery *lec_sv;
    TAutoIncField *lec_svambnomer;
    TAutoIncField *lec_svlec_svnomer;
    TIntegerField *lec_svid;
    TIntegerField *lec_svid_lec;
    TWideStringField *lec_svname;
    TLabel *Label26;
    TLabel *Label27;
    TLabel *Label28;
    TButton *otch_btn;
    TDBEdit *lecst;
    TLabel *Label29;
    TLabel *Label30;
    TIntegerField *lec_svst;
    TButton *fnd_btn;
    TRxDBComboEdit *mnman_namef;
    TRxDBComboEdit *lecnamef;
    TButton *vac_sch;
    TDBMemo *dz;
    TDBMemo *dop;
    TButton *dop_btn;
    TPanel *sales_panel;
    TPanel *salespan;
    TDBCtrlGrid *sales_grd;
    TADOQuery *sales_sv;
    TDataSource *salesds;
    TRxDBComboEdit *salesnamef;
    TLabel *Label31;
    TDBEdit *sales_cntf;
    TDBEdit *sales_stf;
    TDBNavigator *sales_nav;
    TPanel *vacrpanel;
    TPanel *vsales_panel;
    TPanel *vsales_pan;
    TDBNavigator *vsales_naw;
    TDBCtrlGrid *vsales_grd;
    TLabel *Label32;
    TRxDBComboEdit *vsalesnf;
    TDBEdit *DBEdit3;
    TDBEdit *DBEdit4;
    TPanel *vdop_panel;
    TDBCtrlGrid *vdop_grd;
    TLabel *Label33;
    TDBEdit *DBEdit5;
    TDBEdit *DBEdit6;
    TPanel *vdop_pan;
    TDBNavigator *vdop_nav;
    TADOQuery *vsales_sv;
    TDataSource *vsalesds;
    TDataSource *vdopds;
    TAutoIncField *vsales_svvacnomer;
    TAutoIncField *vsales_svvsales_svnomer;
    TIntegerField *vsales_svid;
    TIntegerField *vsales_svid_sales;
    TIntegerField *vsales_svcount;
    TIntegerField *vsales_svst;
    TWideStringField *vsales_svname;
    TAutoIncField *sales_svambnomer;
    TAutoIncField *sales_svsales_svnomer;
    TIntegerField *sales_svid;
    TIntegerField *sales_svid_sales;
    TWideStringField *sales_svname;
    TIntegerField *sales_svcount;
    TIntegerField *sales_svst;
    TMenuItem *N5;
    TDBEdit *DBEdit1;
    TADOTable *vdop;
    TAutoIncField *vdopnomer;
    TIntegerField *vdopid;
    TWideStringField *vdopdop;
    TIntegerField *vdopcount;
    TIntegerField *vdopst;
    TMenuItem *N8;
    TMenuItem *N9;
    TADOQuery *table;
    TAutoIncField *tablenomer;
    TDateTimeField *tabledate;
    TWideStringField *tablevladel;
    TWideStringField *tableadr;
    TWideStringField *tablezver;
    TWideStringField *tabledop;
    TLabel *Label34;
    TLabel *Label35;
    TDateEdit *fot;
    TDateEdit *fdo;
    TDateEdit *ot_date;
    TDateEdit *do_date;
    TPanel *std_panel;
    TDBCtrlGrid *std_grd;
    TRxDBComboEdit *stdmanf;
    TPanel *stdpan;
    TDBNavigator *std_nav;
    TADOQuery *sv;
    TDataSource *dssv;
    TWideStringField *svoper;
    TIntegerField *svid_usl;
    TIntegerField *svid_op;
    TIntegerField *tablenpp;
    TFloatField *tablesum;
    TLabel *ambl;
    TLabel *vacl;
    TADOQuery *vact;
    TAutoIncField *vactnomer;
    TIntegerField *vactnpp;
    TDateTimeField *vactdate;
    TWideStringField *vactvlad;
    TWideStringField *vactzver;
    TIntegerField *vactprep_id;
    TDateTimeField *vactdate_next;
    TBooleanField *vactsend;
    TFloatField *vactsum;
    TStringField *vactprep;
    TIntegerField *vactprep_st;
    TDBEdit *nextpf;
    TDBCheckBox *diecb;
    TLabel *Label17;
    TBooleanField *vactdie;
    TDBCheckBox *DBCheckBox1;
    TBooleanField *tabledie;
    TLabel *Label37;
    TDateTimeField *tabledate_next;
    TBooleanField *tablesend;
    TLabel *Label38;
    TButton *ak_btn;
    TButton *cg_btn;
    TLabel *Label36;
    TComboBox *vrachf;
    TIntegerField *tablevrach_id;
    TADOTable *vrachi;
    TDataSource *vrachids;
    TStringField *tablevrach;
    TRxDBLookupCombo *RxDBLookupCombo1;
    TLabel *Label39;
    TAutoIncField *vrachiid;
    TWideStringField *vrachiname;
    TPanel *vstd_panel;
    TDBCtrlGrid *vstd_grd;
    TRxDBComboEdit *vstdmanf;
    TPanel *vstd_pan;
    TDBNavigator *vstd_nav;
    TPanel *vprep_panel;
    TDBCtrlGrid *vprep_grd;
    TLabel *Label40;
    TDBEdit *DBEdit2;
    TDBEdit *DBEdit7;
    TRxDBComboEdit *vlecf;
    TPanel *vlech_pan;
    TDBNavigator *vprep_nav;
    TPanel *vman_panel;
    TDBCtrlGrid *vman_grd;
    TDBEdit *DBEdit8;
    TRxDBComboEdit *vmnmanf;
    TPanel *vman_pan;
    TDBNavigator *vman_nav;
    TADOQuery *vmn_sv;
    TIntegerField *IntegerField1;
    TIntegerField *IntegerField2;
    TIntegerField *IntegerField3;
    TWideStringField *WideStringField1;
    TDataSource *dsvmn_sv;
    TDataSource *dsvsv;
    TADOQuery *vsv;
    TWideStringField *WideStringField2;
    TIntegerField *IntegerField4;
    TIntegerField *IntegerField5;
    TADOQuery *vlec_sv;
    TIntegerField *IntegerField6;
    TIntegerField *IntegerField7;
    TWideStringField *WideStringField3;
    TIntegerField *IntegerField8;
    TDataSource *dsvlec_sv;
    TAutoIncField *vmn_svvacnomer;
    TAutoIncField *vmn_svvmn_svnomer;
    TAutoIncField *vmn_svmn_opnomer;
    TAutoIncField *vlec_svvacnomer;
    TAutoIncField *vlec_svvlec_svnomer;
    TButton *vr_otch;
        TWideStringField *tabledz;
    TButton *cpbtn;
    TButton *ekg_btn;
    TButton *uzi_btn;
        TButton *files_btn;
    TFloatField *lec_svdoza;
    TFloatField *vlec_svdoza;
    void __fastcall tableAfterScroll(TDataSet *DataSet);
    void __fastcall N2Click(TObject *Sender);
    void __fastcall tableAfterInsert(TDataSet *DataSet);
    void __fastcall prnBtnClick(TObject *Sender);
    void __fastcall fltClick(TObject *Sender);
    void __fastcall CtrlGridKeyUp(TObject *Sender, WORD &Key,
          TShiftState Shift);
    void __fastcall am_btnClick(TObject *Sender);
    void __fastcall lf_btnClick(TObject *Sender);
    void __fastcall gridPaintPanel(TDBCtrlGrid *DBCtrlGrid, int Index);
    void __fastcall fltExit(TObject *Sender);
    void __fastcall TabSheet1Resize(TObject *Sender);
    void __fastcall vactAfterInsert(TDataSet *DataSet);
    void __fastcall tmrTimer(TObject *Sender);
    void __fastcall FormCreate(TObject *Sender);
    void __fastcall vactdate_nextChange(TField *Sender);
    void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
    void __fastcall TabSheet2Enter(TObject *Sender);
    void __fastcall TabSheet1Enter(TObject *Sender);
    void __fastcall N3Click(TObject *Sender);
    void __fastcall MenuItem2Click(TObject *Sender);
    void __fastcall TabSheet2Resize(TObject *Sender);
    void __fastcall TableKeyUp(TObject *Sender, WORD &Key,
          TShiftState Shift);
    void __fastcall dopanResize(TObject *Sender);
    void __fastcall bh_btnClick(TObject *Sender);
    void __fastcall N4Click(TObject *Sender);
    void __fastcall editKeyDown(TObject *Sender, WORD &Key,
          TShiftState Shift);
    void __fastcall editKeyPress(TObject *Sender, char &Key);
    void __fastcall fldEnter(TObject *Sender);
    void __fastcall fltpcClick(TObject *Sender);
    void __fastcall mn_svBeforeDelete(TDataSet *DataSet);
    void __fastcall sqlRefrAfterPost(TDataSet *DataSet);
    void __fastcall lec_svBeforeDelete(TDataSet *DataSet);
    void __fastcall grdExit(TObject *Sender);
    void __fastcall otch_btnClick(TObject *Sender);
    void __fastcall fnd_btnClick(TObject *Sender);
    void __fastcall mnman_namefButtonClick(TObject *Sender);
    void __fastcall lecnamefButtonClick(TObject *Sender);
    void __fastcall vac_schClick(TObject *Sender);
    void __fastcall connectConnectComplete(TADOConnection *Connection,
          const Error *Error, TEventStatus &EventStatus);
    void __fastcall dop_btnClick(TObject *Sender);
    void __fastcall TabSheet1Show(TObject *Sender);
    void __fastcall TabSheet2Show(TObject *Sender);
    void __fastcall sales_svBeforeDelete(TDataSet *DataSet);
    void __fastcall salesnamefButtonClick(TObject *Sender);
    void __fastcall vacrpanelResize(TObject *Sender);
    void __fastcall vsales_svBeforeDelete(TDataSet *DataSet);
    void __fastcall vactAfterScroll(TDataSet *DataSet);
    void __fastcall vsalesnfButtonClick(TObject *Sender);
    void __fastcall vactRAfterPost(TDataSet *DataSet);
    void __fastcall grd_vacExit(TObject *Sender);
    void __fastcall gridExit(TObject *Sender);
    void __fastcall navClick(TObject *Sender, TNavigateBtn Button);
    void __fastcall N7Click(TObject *Sender);
    void __fastcall amb_panelResize(TObject *Sender);
    void __fastcall stdmanfButtonClick(TObject *Sender);
    void __fastcall svBeforeDelete(TDataSet *DataSet);
    void __fastcall tableBeforeDelete(TDataSet *DataSet);
    void __fastcall vactBeforeDelete(TDataSet *DataSet);
    void __fastcall table_controls(bool enable);
    void __fastcall notSelectQ(AnsiString Q);
    void __fastcall propfChange(TObject *Sender);
    void __fastcall tabledate_nextChange(TField *Sender);
    void __fastcall ak_btnClick(TObject *Sender);
    void __fastcall cg_btnClick(TObject *Sender);
    void __fastcall vsvBeforeDelete(TDataSet *DataSet);
    void __fastcall vmn_svBeforeDelete(TDataSet *DataSet);
    void __fastcall vlec_svBeforeDelete(TDataSet *DataSet);
    void __fastcall vstdmanfButtonClick(TObject *Sender);
    void __fastcall vmnmanfButtonClick(TObject *Sender);
    void __fastcall vlecfButtonClick(TObject *Sender);
    void __fastcall vr_otchClick(TObject *Sender);
    void __fastcall cpbtnClick(TObject *Sender);
    void __fastcall ekg_btnClick(TObject *Sender);
    void __fastcall uzi_btnClick(TObject *Sender);
    void __fastcall files_btnClick(TObject *Sender);
    bool __fastcall createDir(AnsiString dir);
    void __fastcall decsep(TObject *Sender, char &Key);
private:	// User declarations
    int deleted_npp;
public:		// User declarations
    __fastcall TForm1(TComponent* Owner);
};

void post_s(TCustomADODataSet* x);

//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
