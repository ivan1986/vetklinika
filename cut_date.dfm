object op_form: Top_form
  Left = 450
  Top = 393
  BorderStyle = bsDialog
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1086#1087#1086#1074#1077#1097#1077#1085#1080#1103
  ClientHeight = 101
  ClientWidth = 281
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 200
    Top = 24
    Width = 24
    Height = 13
    Caption = #1076#1085#1077#1081
  end
  object Label3: TLabel
    Left = 88
    Top = 40
    Width = 136
    Height = 13
    Caption = #1076#1086' '#1089#1083#1077#1076#1091#1102#1097#1077#1081' '#1074#1072#1082#1094#1080#1085#1072#1094#1080#1080
  end
  object Label2: TLabel
    Left = 24
    Top = 24
    Width = 87
    Height = 13
    Caption = #1053#1072#1087#1086#1084#1080#1085#1072#1090#1100' '#1079#1072'...'
  end
  object Button1: TButton
    Left = 96
    Top = 64
    Width = 75
    Height = 25
    Caption = #1054#1082
    Default = True
    TabOrder = 0
    OnClick = Button1Click
  end
  object days: TMaskEdit
    Left = 120
    Top = 16
    Width = 68
    Height = 21
    EditMask = '!99;0;_'
    MaxLength = 2
    TabOrder = 1
  end
end
