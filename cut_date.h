//---------------------------------------------------------------------------

#ifndef cut_dateH
#define cut_dateH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>

#include <inifiles.hpp>
#include <ExtCtrls.hpp>
#include <Mask.hpp>
//---------------------------------------------------------------------------
class current
{
public:


    current();
    ~current();
    void EditPeriod();
    void OnCreate();
    TDate GFromDate() {return FromDay;}

private:
    TDate FromDay;
    int days;
    TIniFile* inifile;
};
//---------------------------------------------------------------------------
class Top_form : public TForm
{
__published:	// IDE-managed Components
    TLabel *Label1;
    TLabel *Label3;
    TButton *Button1;
    TLabel *Label2;
    TMaskEdit *days;
    void __fastcall Button1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall Top_form(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern current cur;
//---------------------------------------------------------------------------
#endif
 