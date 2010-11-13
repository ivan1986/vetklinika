object recept_form: Trecept_form
  Left = 217
  Top = 470
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1056#1077#1094#1077#1087#1090
  ClientHeight = 449
  ClientWidth = 523
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Scaled = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 408
    Width = 523
    Height = 41
    Align = alBottom
    TabOrder = 0
    object Button1: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object grd: TDBGrid
    Left = 0
    Top = 0
    Width = 523
    Height = 408
    Align = alClient
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyUp = grdKeyUp
  end
  object Panel1: TPanel
    Left = 548
    Top = 8
    Width = 786
    Height = 223
    Caption = 'Panel1'
    TabOrder = 2
    Visible = False
    object rep: TQuickRep
      Left = 24
      Top = 21
      Width = 794
      Height = 1123
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = prn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Functions.Strings = (
        'PAGENUMBER'
        'COLUMNNUMBER'
        'REPORTTITLE')
      Functions.DATA = (
        '0'
        '0'
        #39#39)
      Options = [FirstPageHeader, LastPageFooter]
      Page.Columns = 1
      Page.Orientation = poPortrait
      Page.PaperSize = A4
      Page.Values = (
        0
        2970
        0
        2100
        0
        0
        0)
      PrinterSettings.Copies = 1
      PrinterSettings.Duplex = False
      PrinterSettings.FirstPage = 0
      PrinterSettings.LastPage = 0
      PrinterSettings.OutputBin = Auto
      PrintIfEmpty = True
      SnapToGrid = True
      Units = MM
      Zoom = 100
      object TitleBand1: TQRBand
        Left = 0
        Top = 0
        Width = 794
        Height = 108
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          285.75
          2100.79166666667)
        BandType = rbTitle
        object QRLabel6: TQRLabel
          Left = 177
          Top = 76
          Width = 59
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.2708333333333
            468.3125
            201.083333333333
            156.104166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #1056#1077#1094#1077#1087#1090
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 11
        end
        object QRLabel5: TQRLabel
          Left = 105
          Top = 60
          Width = 214
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            277.8125
            158.75
            566.208333333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'podp2'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 9
        end
        object QRLabel4: TQRLabel
          Left = 108
          Top = 46
          Width = 211
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            285.75
            121.708333333333
            558.270833333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'podp1'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 9
        end
        object QRLabel3: TQRLabel
          Left = 109
          Top = 28
          Width = 211
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.2708333333333
            288.395833333333
            74.0833333333333
            558.270833333333)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #1085#1072#1079#1074#1072#1085#1080#1077' '#1082#1083#1080#1085#1080#1082#1080' 2'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 11
        end
        object QRLabel2: TQRLabel
          Left = 111
          Top = 8
          Width = 208
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            293.6875
            21.1666666666667
            550.333333333333)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #1085#1072#1079#1074#1072#1085#1080#1077' '#1082#1083#1080#1085#1080#1082#1080' 1'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 12
        end
        object QRImage1: TQRImage
          Left = 1
          Top = 1
          Width = 105
          Height = 105
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            277.8125
            2.64583333333333
            2.64583333333333
            277.8125)
        end
      end
      object DetailBand1: TQRBand
        Left = 0
        Top = 108
        Width = 794
        Height = 47
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          124.354166666667
          2100.79166666667)
        BandType = rbDetail
        object QRDBText1: TQRDBText
          Left = 24
          Top = 23
          Width = 278
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            63.5
            60.8541666666667
            735.541666666667)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = prn
          DataField = 'prim'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText2: TQRDBText
          Left = 11
          Top = 6
          Width = 242
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            29.1041666666667
            15.875
            640.291666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = prn
          DataField = 'prep'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
      end
    end
  end
  object zap: TADOQuery
    Active = True
    Connection = Form1.connect
    CursorType = ctStatic
    AfterInsert = zapAfterInsert
    AfterPost = zapAfterPost
    Parameters = <>
    SQL.Strings = (
      'select nomer,id,prep,prim From recept')
    Left = 25
    Top = 205
    object zapnomer: TAutoIncField
      FieldName = 'nomer'
      ReadOnly = True
      Visible = False
    end
    object zapid: TIntegerField
      FieldName = 'id'
      Visible = False
    end
    object zapprep: TWideStringField
      DisplayLabel = #1055#1088#1077#1087#1072#1088#1072#1090
      DisplayWidth = 30
      FieldName = 'prep'
      Size = 50
    end
    object zapprim: TWideStringField
      DisplayLabel = #1055#1086#1088#1103#1076#1086#1082' '#1087#1088#1080#1084#1077#1085#1077#1085#1080#1103
      DisplayWidth = 50
      FieldName = 'prim'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = zap
    Left = 66
    Top = 205
  end
  object prn: TADOQuery
    Active = True
    Connection = Form1.connect
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select nomer,id,prep,prim From recept')
    Left = 105
    Top = 205
  end
end
