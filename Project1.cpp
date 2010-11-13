//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
//---------------------------------------------------------------------------
USEFORM("Unit1.cpp", Form1);
USEFORM("Unit2.cpp", Form2);
USEFORM("print.cpp", print_form);
USEFORM("am.cpp", am_form);
USEFORM("lf.cpp", lf_form);
USEFORM("cut_date.cpp", op_form);
USEFORM("preload_form.cpp", preload);
USEFORM("ab_firm.cpp", AboutBox);
USEFORM("biohim_form.cpp", biohim);
USEFORM("prep_form.cpp", prep_frm);
USEFORM("otchet.cpp", otch_form);
USEFORM("vac_print.cpp", vac_prn);
USEFORM("dop.cpp", dop_form);
USEFORM("inp_table_cld.cpp", inp_table);
USEFORM("ak.cpp", ak_form);
USEFORM("cg.cpp", cg_form);
USEFORM("vr_otch.cpp", vrach_otch);
USEFORM("uzi.cpp", uz_form);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
    try
    {
         Application->Initialize();
         Application->Title = "ВетКлиника";
         Application->CreateForm(__classid(TForm1), &Form1);
         Application->Run();
    }
    catch (Exception &exception)
    {
         Application->ShowException(&exception);
    }
    catch (...)
    {
         try
         {
             throw Exception("");
         }
         catch (Exception &exception)
         {
             Application->ShowException(&exception);
         }
    }
    return 0;
}
//---------------------------------------------------------------------------
