//---------------------------------------------------------------------------

#ifndef inp_lecH
#define inp_lecH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "RxLookup.hpp"
#include <ExtCtrls.hpp>
#include <CheckLst.hpp>
//---------------------------------------------------------------------------
class Tinput_lec : public TForm
{
__published:	// IDE-managed Components
    TPanel *Panel1;
    TButton *Button1;
    TCheckListBox *lec;
    void __fastcall Panel1Resize(TObject *Sender);
    void __fastcall FormCreate(TObject *Sender);
    void __fastcall lecClickCheck(TObject *Sender);
    void __fastcall FormKeyPress(TObject *Sender, char &Key);
    void __fastcall FormResize(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall Tinput_lec(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE Tinput_lec *input_lec;
//---------------------------------------------------------------------------
#endif
