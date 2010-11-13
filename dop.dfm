object dop_form: Tdop_form
  Left = 305
  Top = 163
  Width = 648
  Height = 429
  Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dop_text: TDBMemo
    Left = 0
    Top = 19
    Width = 640
    Height = 342
    Align = alClient
    DataField = 'text'
    DataSource = dopds
    TabOrder = 0
    OnExit = dop_textExit
    OnKeyDown = dop_textKeyDown
    OnKeyPress = dop_textKeyPress
  end
  object Panel3: TPanel
    Left = 0
    Top = 361
    Width = 640
    Height = 41
    Align = alBottom
    TabOrder = 1
    OnResize = Panel3Resize
    object prnb: TButton
      Left = 540
      Top = 8
      Width = 75
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100
      TabOrder = 0
      OnClick = prnbClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 640
    Height = 19
    Align = alTop
    BevelOuter = bvNone
    Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 820
    Top = 76
    Width = 811
    Height = 1142
    Caption = 'Panel1'
    TabOrder = 3
    Visible = False
    object rep: TQuickRep
      Left = 10
      Top = 7
      Width = 794
      Height = 1123
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
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
        100
        2970
        100
        2100
        100
        100
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
        Left = 38
        Top = 38
        Width = 718
        Height = 176
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
          465.666666666667
          1899.70833333333)
        BandType = rbTitle
        object QRImage1: TQRImage
          Left = 50
          Top = 11
          Width = 153
          Height = 153
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            404.8125
            132.291666666667
            29.1041666666667
            404.8125)
        end
        object QRLabel2: TQRLabel
          Left = 330
          Top = 19
          Width = 265
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            60.8541666666667
            873.125
            50.2708333333333
            701.145833333333)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #1085#1072#1079#1074#1072#1085#1080#1077' '#1082#1083#1080#1085#1080#1082#1080' 1'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 14
        end
        object QRLabel3: TQRLabel
          Left = 331
          Top = 47
          Width = 263
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            60.8541666666667
            875.770833333333
            124.354166666667
            695.854166666667)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #1085#1072#1079#1074#1072#1085#1080#1077' '#1082#1083#1080#1085#1080#1082#1080' 2'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 12
        end
        object QRLabel4: TQRLabel
          Left = 500
          Top = 92
          Width = 163
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            1322.91666666667
            243.416666666667
            431.270833333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'amtel1'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 12
        end
        object QRLabel5: TQRLabel
          Left = 500
          Top = 112
          Width = 163
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            1322.91666666667
            296.333333333333
            431.270833333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'amtel2'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 12
        end
        object QRLabel1: TQRLabel
          Left = 500
          Top = 132
          Width = 163
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            1322.91666666667
            349.25
            431.270833333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'amtel3'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 12
        end
        object capt: TQRLabel
          Left = 312
          Top = 112
          Width = 62
          Height = 38
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            100.541666666667
            825.5
            296.333333333333
            164.041666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #1069#1050#1043
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 24
        end
      end
      object DetailBand1: TQRBand
        Left = 38
        Top = 214
        Width = 718
        Height = 843
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
          2230.4375
          1899.70833333333)
        BandType = rbDetail
        object text: TQRMemo
          Left = 25
          Top = 0
          Width = 647
          Height = 837
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2214.5625
            66.1458333333333
            0
            1711.85416666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Lines.Strings = (
            '1'
            '2'
            '3')
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
      end
    end
  end
  object dopds: TDataSource
    DataSet = dop
    Left = 59
    Top = 49
  end
  object dop: TADOQuery
    Active = True
    Connection = Form1.connect
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT dopolnit.* '
      'FROM dopolnit '
      'WHERE dopolnit.id=1')
    Left = 24
    Top = 48
    object dopid: TIntegerField
      FieldName = 'id'
    end
    object doptext: TMemoField
      FieldName = 'text'
      BlobType = ftMemo
    end
    object dopekg: TMemoField
      FieldName = 'ekg'
      BlobType = ftMemo
    end
  end
end
