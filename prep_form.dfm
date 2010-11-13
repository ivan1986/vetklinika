object prep_frm: Tprep_frm
  Left = 360
  Top = 243
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1057#1087#1080#1089#1086#1082' '#1087#1088#1077#1087#1072#1088#1072#1090#1086#1074' '#1076#1083#1103' '#1074#1072#1082#1094#1080#1085#1072#1094#1080#1080
  ClientHeight = 522
  ClientWidth = 630
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 630
    Height = 46
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 19
      Top = 27
      Width = 49
      Height = 13
      Caption = #1055#1088#1077#1087#1072#1088#1072#1090
    end
    object Label2: TLabel
      Left = 146
      Top = 27
      Width = 92
      Height = 13
      Caption = #1044#1077#1081#1089#1090#1074#1091#1077#1090' '#1087#1088#1086#1090#1080#1074
    end
    object DBNavigator1: TDBNavigator
      Left = 544
      Top = 16
      Width = 81
      Height = 25
      DataSource = prepds
      VisibleButtons = [nbInsert, nbDelete, nbPost]
      TabOrder = 0
    end
  end
  object grd: TDBCtrlGrid
    Left = 0
    Top = 46
    Width = 630
    Height = 476
    Align = alClient
    ColCount = 1
    DataSource = prepds
    PanelHeight = 158
    PanelWidth = 614
    TabOrder = 1
    RowCount = 3
    OnKeyUp = grdKeyUp
    OnPaintPanel = grdPaintPanel
    object Shape1: TShape
      Left = 0
      Top = 0
      Width = 614
      Height = 66
      Align = alTop
      Pen.Mode = pmNop
    end
    object Shape2: TShape
      Left = 0
      Top = 66
      Width = 614
      Height = 92
      Align = alClient
      Brush.Color = cl3DDkShadow
      Pen.Width = 0
    end
    object Label3: TLabel
      Left = 8
      Top = 42
      Width = 55
      Height = 13
      Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
      Transparent = True
    end
    object namef: TDBEdit
      Left = 6
      Top = 8
      Width = 121
      Height = 21
      DataField = 'name'
      DataSource = prepds
      TabOrder = 0
    end
    object pprotivf: TDBMemo
      Left = 133
      Top = 7
      Width = 475
      Height = 51
      DataField = 'protiv'
      DataSource = prepds
      TabOrder = 1
      OnKeyDown = pprotivfKeyDown
      OnKeyPress = pprotivfKeyPress
    end
    object DBEdit1: TDBEdit
      Left = 67
      Top = 36
      Width = 61
      Height = 21
      DataField = 'st'
      DataSource = prepds
      TabOrder = 2
    end
  end
  object prepds: TDataSource
    DataSet = prep
    Left = 223
    Top = 128
  end
  object prep: TADOQuery
    Active = True
    Connection = Form1.connect
    CursorType = ctStatic
    AfterInsert = prepAfterInsert
    BeforeDelete = prepBeforeDelete
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM prep WHERE id<>0 ORDER BY name')
    Left = 191
    Top = 128
    object prepid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object prepname: TWideStringField
      FieldName = 'name'
      Size = 50
    end
    object prepprotiv: TMemoField
      FieldName = 'protiv'
      BlobType = ftMemo
    end
    object prepst: TIntegerField
      FieldName = 'st'
    end
  end
end
