object Form2: TForm2
  Left = 366
  Top = 115
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1087#1080#1089#1082#1086#1074
  ClientHeight = 470
  ClientWidth = 525
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object tbl: TDBGrid
    Left = 0
    Top = 0
    Width = 525
    Height = 168
    Align = alTop
    DataSource = operds
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyUp = gridKeyUp
  end
  object man_grd: TDBGrid
    Left = 0
    Top = 168
    Width = 525
    Height = 161
    Align = alTop
    DataSource = mnds
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyUp = gridKeyUp
  end
  object Panel1: TPanel
    Left = 0
    Top = 329
    Width = 525
    Height = 141
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 2
    object lec_grd: TDBGrid
      Left = 0
      Top = 0
      Width = 185
      Height = 141
      Align = alLeft
      DataSource = lecds
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyUp = gridKeyUp
    end
    object sales_grd: TDBGrid
      Left = 344
      Top = 0
      Width = 181
      Height = 141
      Align = alRight
      DataSource = salesdds
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyUp = gridKeyUp
    end
    object vrach_grd: TDBGrid
      Left = 185
      Top = 0
      Width = 159
      Height = 141
      Align = alClient
      DataSource = vrachids
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyUp = gridKeyUp
    end
  end
  object oper: TADOTable
    Active = True
    Connection = Form1.connect
    CursorType = ctStatic
    AfterPost = AfterPost
    TableName = 'oper'
    Left = 46
    Top = 116
    object operid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
      Visible = False
    end
    object operoper: TWideStringField
      DisplayLabel = #1057#1090#1072#1085#1076#1072#1088#1090#1085#1099#1077' '#1084#1072#1085#1080#1087#1091#1083#1103#1094#1080#1080
      DisplayWidth = 54
      FieldName = 'oper'
      Size = 50
    end
    object operst: TIntegerField
      DisplayLabel = #1057#1090#1086#1080#1084#1086#1089#1090#1100
      DisplayWidth = 26
      FieldName = 'st'
    end
  end
  object operds: TDataSource
    DataSet = oper
    Left = 78
    Top = 117
  end
  object mnman: TADOTable
    Active = True
    Connection = Form1.connect
    CursorType = ctStatic
    AfterPost = AfterPost
    TableName = 'mn_op'
    Left = 48
    Top = 250
    object mnmannomer: TAutoIncField
      FieldName = 'nomer'
      ReadOnly = True
      Visible = False
    end
    object mnmanname: TWideStringField
      DisplayLabel = #1052#1085#1086#1075#1086#1082#1088#1072#1090#1085#1086' '#1087#1086#1074#1090#1086#1088#1103#1077#1084#1099#1077' '#1084#1072#1085#1080#1087#1091#1083#1103#1094#1080#1080
      DisplayWidth = 54
      FieldName = 'name'
      Size = 50
    end
    object mnmancenad: TIntegerField
      DisplayLabel = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1091
      DisplayWidth = 26
      FieldName = 'cenad'
    end
  end
  object mnds: TDataSource
    DataSet = mnman
    Left = 79
    Top = 250
  end
  object lec: TADOTable
    Active = True
    Connection = Form1.connect
    CursorType = ctStatic
    AfterPost = AfterPost
    TableName = 'lec'
    Left = 49
    Top = 407
    object lecnomer: TAutoIncField
      FieldName = 'nomer'
      ReadOnly = True
      Visible = False
    end
    object lecname: TWideStringField
      DisplayLabel = #1051#1077#1082#1072#1088#1089#1090#1074#1077#1085#1085#1099#1077' '#1087#1088#1077#1087#1072#1088#1072#1090#1099
      DisplayWidth = 44
      FieldName = 'name'
      Size = 50
    end
  end
  object lecds: TDataSource
    DataSet = lec
    Left = 82
    Top = 407
  end
  object sales: TADOTable
    Active = True
    Connection = Form1.connect
    CursorType = ctStatic
    AfterPost = AfterPost
    TableName = 'sales'
    Left = 404
    Top = 400
    object salesnomer: TAutoIncField
      FieldName = 'nomer'
      ReadOnly = True
      Visible = False
    end
    object salesname: TWideStringField
      DisplayLabel = #1055#1088#1086#1076#1072#1078#1080
      DisplayWidth = 40
      FieldName = 'name'
      Size = 50
    end
  end
  object salesdds: TDataSource
    DataSet = sales
    Left = 434
    Top = 400
  end
  object vrachids: TDataSource
    DataSet = vrachi
    Left = 248
    Top = 400
  end
  object vrachi: TADOQuery
    Active = True
    Connection = Form1.connect
    CursorType = ctStatic
    BeforeDelete = vrachiBeforeDelete
    Parameters = <
      item
        Name = 'name'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select id, name from vrachi where id<>0 ORDER BY name')
    Left = 216
    Top = 400
    object vrachiid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
      Visible = False
    end
    object namevrach: TWideStringField
      DisplayLabel = #1042#1088#1072#1095#1080
      DisplayWidth = 23
      FieldName = 'name'
      Size = 50
    end
  end
end
