//---------------------------------------------------------------------------

#ifndef inp_salesH
#define inp_salesH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <CheckLst.hpp>
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class Tinput_sales : public TForm
{
__published:	// IDE-managed Components
    TCheckListBox *sales;
    TPanel *Panel1;
    TButton *Button1;
    void __fastcall FormKeyPress(TObject *Sender, char &Key);
    void __fastcall Panel1Resize(TObject *Sender);
    void __fastcall FormCreate(TObject *Sender);
    void __fastcall salesClickCheck(TObject *Sender);
    void __fastcall FormResize(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall Tinput_sales(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE Tinput_sales *input_sales;
//---------------------------------------------------------------------------
#endif
