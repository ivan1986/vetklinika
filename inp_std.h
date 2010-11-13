//---------------------------------------------------------------------------

#ifndef inp_stdH
#define inp_stdH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <CheckLst.hpp>
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class Tinput_std : public TForm
{
__published:	// IDE-managed Components
    TPanel *Panel1;
    TButton *Button1;
    TCheckListBox *std;
    void __fastcall Panel1Resize(TObject *Sender);
    void __fastcall FormCreate(TObject *Sender);
    void __fastcall stdClickCheck(TObject *Sender);
    void __fastcall FormKeyPress(TObject *Sender, char &Key);
    void __fastcall FormResize(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall Tinput_std(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE Tinput_std *input_std;
//---------------------------------------------------------------------------
#endif
