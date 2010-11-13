//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "inp_table_cld.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
//---------------------------------------------------------------------------
__fastcall Tinp_table::Tinp_table(TComponent* Owner,
        AnsiString capt,       TADOQuery* parent,
        AnsiString table,      AnsiString sv_table,
        AnsiString field_name, AnsiString field_id,
        AnsiString field_sv_id,AnsiString field_sv_sub_id)
    : TForm(Owner),
    table(table),sv_table(sv_table),field_name(field_name),
    field_id(field_id),field_sv_id(field_sv_id),
    field_sv_sub_id(field_sv_sub_id),parent(parent)
{
    this->Caption=capt;
}
//---------------------------------------------------------------------------
void __fastcall Tinp_table::FormKeyPress(TObject *Sender, char &Key)
{
    if (Key==27) this->Close();
}
//---------------------------------------------------------------------------
void __fastcall Tinp_table::FormResize(TObject *Sender)
{
    this->Top=20;
    this->Height=Screen->Height-50;
}
//---------------------------------------------------------------------------
void __fastcall Tinp_table::Panel1Resize(TObject *Sender)
{
    Button1->Left=Panel1->Width/2-Button1->Width/2;
}
//---------------------------------------------------------------------------
void __fastcall Tinp_table::FormCreate(TObject *Sender)
{
    //заполняем список операций из базы сразу после подключения
    TADOQuery* query=new TADOQuery(NULL);
    query->Connection=Form1->connect;
    query->SQL->Clear();
    query->SQL->Add("SELECT "+field_id+", "+field_name+" "
        "FROM "+table+" ORDER BY "+field_name);
    query->ExecSQL();
    query->Open();
    pole->Clear();
    for(query->First();!query->Eof;query->Next())
    {
        //в указателе сохраняем номер операции, чтобы было просто извлекать
        pole->Items->AddObject(
            query->FieldByName(field_name)->AsString,
            (TObject*)query->FieldByName(field_id)->AsInteger
                              );
    }
    query->Close();
    delete query;

    TADOQuery* lst=new TADOQuery(NULL);
    lst->Connection=Form1->connect;
    lst->SQL->Clear();
    lst->SQL->Add("SELECT "+field_sv_id+", "+field_sv_sub_id+" "
    "FROM "+sv_table+" WHERE "+field_sv_id+"="+
        parent->FieldByName("nomer")->AsString);

    lst->ExecSQL();
    lst->Open();
    //загрузим список
    if (lst->RecordCount!=0)
        for(lst->First();!lst->Eof;lst->Next())
            for(int i=0;i<pole->Items->Count;i++)
                if ((int)pole->Items->Objects[i]
                ==lst->FieldByName(field_sv_sub_id)->AsInteger)
                {
                    pole->Checked[i]=true;
                }

    this->ShowModal();
}
//---------------------------------------------------------------------------
void __fastcall Tinp_table::poleClickCheck(TObject *Sender)
{
    TADOQuery* del=new TADOQuery(NULL);
    del->Connection=Form1->connect;
    del->SQL->Clear();
    if (pole->Checked[pole->ItemIndex])
    {
    del->SQL->Add(
        "INSERT INTO "+sv_table+"("+field_sv_id+", "+field_sv_sub_id+") "
        "VALUES ("+parent->FieldByName("nomer")->AsString+","+
        IntToStr((int)pole->Items->Objects[pole->ItemIndex])+");"
                  );
    }
    else
    {
    del->SQL->Add(
        "DELETE FROM "+sv_table+" "
        "WHERE (("+field_sv_id+"="+parent->FieldByName("nomer")->AsString+") "
        "AND ("+field_sv_sub_id+"="+IntToStr((int)pole->Items->Objects[pole->ItemIndex])+"))"
                  );
    }
    del->ExecSQL();
    delete del;
}
//---------------------------------------------------------------------------
