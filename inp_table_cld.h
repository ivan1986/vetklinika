//---------------------------------------------------------------------------

#ifndef inp_table_cldH
#define inp_table_cldH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <CheckLst.hpp>
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class Tinp_table : public TForm
{
__published:	// IDE-managed Components
    TCheckListBox *pole;
    TPanel *Panel1;
    TButton *Button1;
    void __fastcall FormKeyPress(TObject *Sender, char &Key);
    void __fastcall FormResize(TObject *Sender);
    void __fastcall Panel1Resize(TObject *Sender);
    void __fastcall FormCreate(TObject *Sender);
    void __fastcall poleClickCheck(TObject *Sender);
private:	// User declarations
    AnsiString table;
    AnsiString sv_table;
    AnsiString field_name;
    AnsiString field_id;
    AnsiString field_sv_id;
    AnsiString field_sv_sub_id;
    TADOQuery* parent;
public:		// User declarations
    __fastcall Tinp_table(TComponent* Owner,
        AnsiString capt,       TADOQuery* parent,
        AnsiString table,      AnsiString sv_table,
        AnsiString field_name, AnsiString field_id,
        AnsiString field_sv_id,AnsiString field_sv_sub_id);
};
//---------------------------------------------------------------------------
extern PACKAGE Tinp_table *inp_table;
//---------------------------------------------------------------------------
#endif
