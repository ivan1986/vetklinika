//---------------------------------------------------------------------------

#ifndef aboutH
#define aboutH
//---------------------------------------------------------------------------
#include <Classes.hpp>
//---------------------------------------------------------------------------
class about : public TThread
{            
private:
protected:
    void __fastcall Execute();
public:
    __fastcall about(bool CreateSuspended);
};
//---------------------------------------------------------------------------
#endif
