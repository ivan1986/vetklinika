object inp_table: Tinp_table
  Left = 324
  Top = 91
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'inp_table'
  ClientHeight = 552
  ClientWidth = 643
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object pole: TCheckListBox
    Left = 0
    Top = 0
    Width = 643
    Height = 511
    OnClickCheck = poleClickCheck
    Align = alClient
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ItemHeight = 22
    Items.Strings = (
      '1'
      '2'
      '3'
      '4')
    ParentFont = False
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 511
    Width = 643
    Height = 41
    Align = alBottom
    TabOrder = 1
    OnResize = Panel1Resize
    object Button1: TButton
      Left = 289
      Top = 7
      Width = 75
      Height = 25
      Caption = #1054#1050
      ModalResult = 1
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
  end
end
