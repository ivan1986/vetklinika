object preload: Tpreload
  Left = 253
  Top = 240
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1053#1077#1086#1087#1086#1074#1077#1097#1077#1085#1085#1099#1077' '#1074#1083#1072#1076#1077#1083#1100#1094#1099
  ClientHeight = 422
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 240
    Width = 107
    Height = 13
    Caption = #1044#1072#1085#1085#1099#1077' '#1086' '#1074#1083#1072#1076#1077#1083#1100#1094#1077
  end
  object Label2: TLabel
    Left = 296
    Top = 240
    Width = 104
    Height = 13
    Caption = #1044#1072#1085#1085#1099#1077' '#1086' '#1078#1080#1074#1086#1090#1085#1086#1084
  end
  object Label3: TLabel
    Left = 640
    Top = 224
    Width = 59
    Height = 13
    Caption = 'C'#1083#1077#1076#1091#1102#1097#1072#1103
  end
  object Label4: TLabel
    Left = 720
    Top = 224
    Width = 49
    Height = 13
    Caption = #1042#1083#1072#1076#1077#1083#1077#1094
  end
  object Label5: TLabel
    Left = 8
    Top = 240
    Width = 26
    Height = 13
    Caption = #1044#1072#1090#1072
  end
  object Label6: TLabel
    Left = 520
    Top = 240
    Width = 49
    Height = 13
    Caption = #1055#1088#1077#1087#1072#1088#1072#1090
  end
  object Label7: TLabel
    Left = 720
    Top = 240
    Width = 51
    Height = 13
    Caption = #1086#1087#1086#1074#1077#1097#1077#1085
  end
  object Label8: TLabel
    Left = 640
    Top = 240
    Width = 60
    Height = 13
    Caption = #1074#1072#1082#1094#1080#1085#1072#1094#1080#1103
  end
  object Label9: TLabel
    Left = 9
    Top = 24
    Width = 26
    Height = 13
    Caption = #1044#1072#1090#1072
  end
  object Label10: TLabel
    Left = 65
    Top = 24
    Width = 107
    Height = 13
    Caption = #1044#1072#1085#1085#1099#1077' '#1086' '#1074#1083#1072#1076#1077#1083#1100#1094#1077
  end
  object Label11: TLabel
    Left = 305
    Top = 24
    Width = 104
    Height = 13
    Caption = #1044#1072#1085#1085#1099#1077' '#1086' '#1078#1080#1074#1086#1090#1085#1086#1084
  end
  object Label12: TLabel
    Left = 497
    Top = 24
    Width = 44
    Height = 13
    Caption = #1044#1080#1072#1075#1085#1086#1079
  end
  object Label13: TLabel
    Left = 649
    Top = 24
    Width = 32
    Height = 13
    Caption = #1087#1088#1080#1077#1084
  end
  object Label14: TLabel
    Left = 721
    Top = 24
    Width = 51
    Height = 13
    Caption = #1086#1087#1086#1074#1077#1097#1077#1085
  end
  object Label15: TLabel
    Left = 721
    Top = 8
    Width = 49
    Height = 13
    Caption = #1042#1083#1072#1076#1077#1083#1077#1094
  end
  object Label16: TLabel
    Left = 641
    Top = 8
    Width = 59
    Height = 13
    Caption = 'C'#1083#1077#1076#1091#1102#1097#1080#1081
  end
  object grd: TDBCtrlGrid
    Left = 0
    Top = 256
    Width = 777
    Height = 161
    AllowInsert = False
    ColCount = 1
    DataSource = DataSource1
    PanelHeight = 53
    PanelWidth = 761
    TabOrder = 0
    RowCount = 3
    OnClick = grdDblClick
    object DBText1: TDBText
      Left = 64
      Top = 8
      Width = 217
      Height = 40
      DataField = 'vlad'
      DataSource = DataSource1
      WordWrap = True
      OnClick = grdDblClick
    end
    object zver: TDBText
      Left = 288
      Top = 8
      Width = 217
      Height = 39
      DataField = 'zver'
      DataSource = DataSource1
      WordWrap = True
      OnClick = grdDblClick
    end
    object DBText2: TDBText
      Left = 8
      Top = 8
      Width = 57
      Height = 17
      DataField = 'date'
      DataSource = DataSource1
      OnClick = grdDblClick
    end
    object DBText3: TDBText
      Left = 520
      Top = 8
      Width = 113
      Height = 35
      DataField = 'prep'
      DataSource = DataSource1
      OnClick = grdDblClick
    end
    object DBEdit1: TDBEdit
      Left = 640
      Top = 8
      Width = 65
      Height = 21
      DataField = 'date_next'
      DataSource = DataSource1
      MaxLength = 8
      TabOrder = 0
    end
    object snd: TDBCheckBox
      Left = 736
      Top = 8
      Width = 17
      Height = 17
      DataField = 'send'
      DataSource = DataSource1
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object ambgrd: TDBCtrlGrid
    Left = 0
    Top = 40
    Width = 777
    Height = 177
    AllowInsert = False
    ColCount = 1
    DataSource = DataSource2
    PanelHeight = 59
    PanelWidth = 761
    TabOrder = 1
    RowCount = 3
    OnClick = ambgrdClick
    object DBText4: TDBText
      Left = 496
      Top = 8
      Width = 137
      Height = 49
      DataField = 'dz'
      DataSource = DataSource2
      Transparent = True
      WordWrap = True
      OnClick = ambgrdClick
    end
    object DBText5: TDBText
      Left = 304
      Top = 8
      Width = 185
      Height = 49
      DataField = 'zver'
      DataSource = DataSource2
      Transparent = True
      WordWrap = True
      OnClick = ambgrdClick
    end
    object DBText6: TDBText
      Left = 64
      Top = 8
      Width = 233
      Height = 17
      DataField = 'vladel'
      DataSource = DataSource2
      Transparent = True
      WordWrap = True
      OnClick = ambgrdClick
    end
    object DBText7: TDBText
      Left = 64
      Top = 24
      Width = 233
      Height = 33
      DataField = 'adr'
      DataSource = DataSource2
      Transparent = True
      WordWrap = True
      OnClick = ambgrdClick
    end
    object DBText8: TDBText
      Left = 8
      Top = 8
      Width = 49
      Height = 17
      DataField = 'date'
      DataSource = DataSource2
      Transparent = True
      WordWrap = True
      OnClick = ambgrdClick
    end
    object DBCheckBox1: TDBCheckBox
      Left = 736
      Top = 8
      Width = 17
      Height = 17
      DataField = 'send'
      DataSource = DataSource2
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBEdit2: TDBEdit
      Left = 640
      Top = 8
      Width = 65
      Height = 21
      DataField = 'date_next'
      DataSource = DataSource2
      MaxLength = 8
      TabOrder = 1
    end
  end
  object notinf: TADOQuery
    Active = True
    Connection = Form1.connect
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT nomer, date, vlad, zver, prep_id, date_next, send FROM va' +
        'c WHERE (date_next<#10/21/2008#) AND (send=0)')
    Left = 192
    Top = 226
    object notinfvlad: TWideStringField
      DisplayWidth = 30
      FieldName = 'vlad'
      Size = 100
    end
    object notinfzver: TWideStringField
      DisplayWidth = 30
      FieldName = 'zver'
      Size = 50
    end
    object notinfdate_next: TDateTimeField
      DisplayWidth = 8
      FieldName = 'date_next'
      DisplayFormat = 'dd.mm.yy'
      EditMask = '!00/00/00;1;_'
    end
    object notinfsend: TBooleanField
      DisplayLabel = #1054#1087#1086#1074#1077#1097#1077#1085
      FieldName = 'send'
    end
    object notinfnomer: TAutoIncField
      FieldName = 'nomer'
      ReadOnly = True
    end
    object notinfdate: TDateTimeField
      FieldName = 'date'
      DisplayFormat = 'dd.mm.yy'
    end
    object notinfprep_id: TIntegerField
      FieldName = 'prep_id'
    end
    object notinfprep: TStringField
      FieldKind = fkLookup
      FieldName = 'prep'
      LookupDataSet = Form1.prep
      LookupKeyFields = 'id'
      LookupResultField = 'name'
      KeyFields = 'prep_id'
      Size = 50
      Lookup = True
    end
  end
  object DataSource1: TDataSource
    DataSet = notinf
    Left = 225
    Top = 228
  end
  object ambni: TADOQuery
    Active = True
    Connection = Form1.connect
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select nomer, date,vladel, adr, zver,dz,date_next,send from amb ' +
        'WHERE (date_next<#10/21/2008#) AND (send=0)')
    Left = 184
    object ambninomer: TAutoIncField
      FieldName = 'nomer'
      ReadOnly = True
    end
    object ambnidate: TDateTimeField
      FieldName = 'date'
      DisplayFormat = 'dd.mm.yy'
    end
    object ambnivladel: TWideStringField
      FieldName = 'vladel'
      Size = 100
    end
    object ambniadr: TWideStringField
      FieldName = 'adr'
      Size = 150
    end
    object ambnizver: TWideStringField
      FieldName = 'zver'
      Size = 100
    end
    object ambnidz: TWideStringField
      FieldName = 'dz'
      Size = 50
    end
    object ambnidate_next: TDateTimeField
      FieldName = 'date_next'
      DisplayFormat = 'dd.mm.yy'
      EditMask = '!00/00/00;1;_'
    end
    object ambnisend: TBooleanField
      FieldName = 'send'
    end
  end
  object DataSource2: TDataSource
    DataSet = ambni
    Left = 216
  end
end
