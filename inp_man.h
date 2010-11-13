//---------------------------------------------------------------------------

#ifndef inp_manH
#define inp_manH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "RxLookup.hpp"
#include <ExtCtrls.hpp>
#include <CheckLst.hpp>
//---------------------------------------------------------------------------
class Tinput_man : public TForm
{
__published:	// IDE-managed Components
    TPanel *Panel1;
    TButton *Button1;
    TCheckListBox *man;
    void __fastcall Panel1Resize(TObject *Sender);
    void __fastcall FormCreate(TObject *Sender);
    void __fastcall manClickCheck(TObject *Sender);
    void __fastcall FormKeyPress(TObject *Sender, char &Key);
    void __fastcall FormResize(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall Tinput_man(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE Tinput_man *input_man;
//---------------------------------------------------------------------------
#endif
