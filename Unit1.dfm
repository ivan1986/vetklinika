object Form1: TForm1
  Left = 154
  Top = 136
  Width = 1030
  Height = 738
  Caption = #1046#1091#1088#1085#1072#1083#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = menu
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1022
    Height = 617
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 0
    TabStop = False
    object TabSheet1: TTabSheet
      Caption = #1040#1084#1073#1091#1083#1072#1090#1086#1088#1085#1099#1081' '#1087#1088#1080#1077#1084
      OnEnter = TabSheet1Enter
      OnResize = TabSheet1Resize
      OnShow = TabSheet1Show
      object dopanel: TPanel
        Left = 692
        Top = 0
        Width = 322
        Height = 565
        Align = alClient
        TabOrder = 1
        object top_panel: TPanel
          Left = 1
          Top = 1
          Width = 320
          Height = 42
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object main_nav: TDBNavigator
            Left = 8
            Top = 8
            Width = 100
            Height = 25
            DataSource = ambulatoru
            VisibleButtons = [nbInsert, nbDelete, nbPost, nbRefresh]
            TabOrder = 0
            OnClick = navClick
          end
          object prnBtn: TButton
            Left = 120
            Top = 8
            Width = 49
            Height = 25
            Caption = 'C'#1095#1077#1090
            TabOrder = 1
            OnClick = prnBtnClick
          end
        end
        object dopan: TPanel
          Left = 1
          Top = 43
          Width = 320
          Height = 521
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          OnResize = dopanResize
          object man_panel: TPanel
            Left = 0
            Top = 91
            Width = 320
            Height = 85
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            OnResize = amb_panelResize
            object man_grd: TDBCtrlGrid
              Left = 0
              Top = 21
              Width = 320
              Height = 64
              Align = alClient
              AllowInsert = False
              ColCount = 1
              DataSource = dsmn_sv
              PanelHeight = 32
              PanelWidth = 304
              TabOrder = 0
              RowCount = 2
              OnExit = grdExit
              OnKeyUp = CtrlGridKeyUp
              OnPaintPanel = gridPaintPanel
              object mnman_conutf: TDBEdit
                Left = 218
                Top = 3
                Width = 50
                Height = 21
                DataField = 'count'
                DataSource = dsmn_sv
                TabOrder = 0
                OnEnter = fldEnter
              end
              object mnman_namef: TRxDBComboEdit
                Left = 6
                Top = 3
                Width = 200
                Height = 22
                TabStop = False
                DataField = 'name'
                DataSource = dsmn_sv
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000000000000000000000000000000000008D49025C4225
                  2E2E2EC8D0D4C8D0D4C8D0D4F8E0E4A7A7A7A7A7A7A7A7A7A7A7A7A7A7A79696
                  96C8D0D4C8D0D4C8D0D48148157448176337025D36003B2500C8D0D4C9D1D5CD
                  D5D1E1F9FDA6A6A6A6A6A6A6A6A6A5A5A5969696C8D0D4C8D0D477502F9F5203
                  B15F039D5203763E025A3E1C3F3F3FC8D0D4CAD2D6C2DADEC2DADEC2DADEC2DA
                  DEC2DADEC8D0D4C8D0D489F2D2995108C36B09C86502B557029848056B380933
                  1F00C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4E9CDCE7A4F24
                  C78730D99B3CCC6703BC5B02A14B036D33013A1900C8D0D4C8D0D4C8D0D4C8D0
                  D4C8D0D4C8D0D4C8D0D4CCD4D0F1F4D29C6216E2AC52E2B158BF6404BC5C039D
                  4B02703001421900C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C0D5D4
                  88F6D7A3691DDAA148D29C3FC26706BB6C18AC835B716052472900C8D0D4C8D0
                  D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4E1F4CA7D5932BA701CD48C31D99647EA
                  D0ADD0C9C0A69D94845C2C3A2400C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                  C2DADEF2E2FE845C33C38847F6E6CCFCF9F4F1F1F1D8CABAB068187C43033A24
                  00C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C2DADEF0F7C6907046E3E3E0FE
                  FEFEF6ECDFD3A063AD61079652046C33013F2400C8D0D4C8D0D4C8D0D4C8D0D4
                  C8D0D4C8D0D4C2D6D4F2FBC1907755D1B28BDAAE75BE7820AA6207A35D058C4C
                  04632E013E2300C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4D1DDD47A5A38D8
                  BE9BB77928B97217B36B10AA6208A35F088D54195638102F2616C8D0D4C8D0D4
                  C8D0D4C8D0D4C8D0D4DEDDD5746047E3DCD4CBA7819B4C0EB97218B7721DC697
                  57D6BEA17A511D44361EC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C0D6D5F0FFCA93
                  8A7BCAC2BFBD947B9D631ECB985BEBDBC3E2C39CB1620F6A370EC8D0D4C8D0D4
                  C8D0D4C8D0D4C8D0D4C8D0D4C0D5D4FBFACC807867AEA9A4C9B29AE4CEB6C3A4
                  83B4732EA64D03853B04C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C1
                  D6D5EFCFC48C92EA9F917DB390726F50277D511F74461EF7CCD5}
                NumGlyphs = 1
                ReadOnly = True
                TabOrder = 1
                OnButtonClick = mnman_namefButtonClick
              end
            end
            object man_pan: TPanel
              Left = 0
              Top = 0
              Width = 320
              Height = 21
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = '   '#1052#1085#1086#1075#1086#1082#1088'. '#1087#1086#1074#1090#1086#1088#1103#1077#1084#1099#1077' '#1084#1072#1085#1080#1087#1091#1083#1103#1094#1080#1080'       '#1050#1086#1083'-'#1074#1086
              TabOrder = 1
              object man_nav: TDBNavigator
                Left = 280
                Top = 0
                Width = 40
                Height = 21
                DataSource = dsmn_sv
                VisibleButtons = [nbDelete, nbPost]
                Align = alRight
                TabOrder = 0
              end
            end
          end
          object prep_panel: TPanel
            Left = 0
            Top = 176
            Width = 320
            Height = 85
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            OnResize = amb_panelResize
            object prep_grd: TDBCtrlGrid
              Left = 0
              Top = 21
              Width = 320
              Height = 64
              Align = alClient
              AllowInsert = False
              ColCount = 1
              DataSource = dslec
              PanelHeight = 32
              PanelWidth = 304
              TabOrder = 0
              RowCount = 2
              OnExit = grdExit
              OnKeyUp = CtrlGridKeyUp
              OnPaintPanel = gridPaintPanel
              object Label29: TLabel
                Left = 294
                Top = 10
                Width = 9
                Height = 13
                Caption = #1088'.'
                Transparent = True
              end
              object lec_dozaf: TDBEdit
                Left = 209
                Top = 3
                Width = 37
                Height = 21
                DataField = 'doza'
                DataSource = dslec
                TabOrder = 0
                OnEnter = fldEnter
                OnKeyPress = decsep
              end
              object lecst: TDBEdit
                Left = 249
                Top = 3
                Width = 42
                Height = 21
                DataField = 'st'
                DataSource = dslec
                TabOrder = 1
                OnEnter = fldEnter
              end
              object lecnamef: TRxDBComboEdit
                Left = 6
                Top = 3
                Width = 200
                Height = 21
                TabStop = False
                DataField = 'name'
                DataSource = dslec
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000000000000000000000000000000000008D49025C4225
                  2E2E2EC8D0D4C8D0D4C8D0D4F8E0E4A7A7A7A7A7A7A7A7A7A7A7A7A7A7A79696
                  96C8D0D4C8D0D4C8D0D48148157448176337025D36003B2500C8D0D4C9D1D5CD
                  D5D1E1F9FDA6A6A6A6A6A6A6A6A6A5A5A5969696C8D0D4C8D0D477502F9F5203
                  B15F039D5203763E025A3E1C3F3F3FC8D0D4CAD2D6C2DADEC2DADEC2DADEC2DA
                  DEC2DADEC8D0D4C8D0D489F2D2995108C36B09C86502B557029848056B380933
                  1F00C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4E9CDCE7A4F24
                  C78730D99B3CCC6703BC5B02A14B036D33013A1900C8D0D4C8D0D4C8D0D4C8D0
                  D4C8D0D4C8D0D4C8D0D4CCD4D0F1F4D29C6216E2AC52E2B158BF6404BC5C039D
                  4B02703001421900C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C0D5D4
                  88F6D7A3691DDAA148D29C3FC26706BB6C18AC835B716052472900C8D0D4C8D0
                  D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4E1F4CA7D5932BA701CD48C31D99647EA
                  D0ADD0C9C0A69D94845C2C3A2400C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                  C2DADEF2E2FE845C33C38847F6E6CCFCF9F4F1F1F1D8CABAB068187C43033A24
                  00C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C2DADEF0F7C6907046E3E3E0FE
                  FEFEF6ECDFD3A063AD61079652046C33013F2400C8D0D4C8D0D4C8D0D4C8D0D4
                  C8D0D4C8D0D4C2D6D4F2FBC1907755D1B28BDAAE75BE7820AA6207A35D058C4C
                  04632E013E2300C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4D1DDD47A5A38D8
                  BE9BB77928B97217B36B10AA6208A35F088D54195638102F2616C8D0D4C8D0D4
                  C8D0D4C8D0D4C8D0D4DEDDD5746047E3DCD4CBA7819B4C0EB97218B7721DC697
                  57D6BEA17A511D44361EC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C0D6D5F0FFCA93
                  8A7BCAC2BFBD947B9D631ECB985BEBDBC3E2C39CB1620F6A370EC8D0D4C8D0D4
                  C8D0D4C8D0D4C8D0D4C8D0D4C0D5D4FBFACC807867AEA9A4C9B29AE4CEB6C3A4
                  83B4732EA64D03853B04C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C1
                  D6D5EFCFC48C92EA9F917DB390726F50277D511F74461EF7CCD5}
                NumGlyphs = 1
                ReadOnly = True
                TabOrder = 2
                OnButtonClick = lecnamefButtonClick
              end
            end
            object lech_pan: TPanel
              Left = 0
              Top = 0
              Width = 320
              Height = 21
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = '  '#1051#1077#1082#1072#1088#1089#1090#1074#1077#1085#1085#1099#1077' '#1087#1088#1077#1087#1072#1088#1072#1090#1099'                     '#1044#1086#1079#1072
              Constraints.MinWidth = 320
              TabOrder = 1
              object prep_nav: TDBNavigator
                Left = 280
                Top = 0
                Width = 40
                Height = 21
                DataSource = dslec
                VisibleButtons = [nbDelete, nbPost]
                Align = alRight
                TabOrder = 0
              end
            end
          end
          object dop_panel: TPanel
            Left = 0
            Top = 353
            Width = 320
            Height = 95
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 3
            OnResize = amb_panelResize
            object dop_grd: TDBCtrlGrid
              Left = 0
              Top = 21
              Width = 320
              Height = 74
              Align = alClient
              ColCount = 1
              DataSource = dopds
              PanelHeight = 37
              PanelWidth = 304
              TabOrder = 0
              RowCount = 2
              OnExit = grdExit
              OnKeyUp = CtrlGridKeyUp
              OnPaintPanel = gridPaintPanel
              object Label30: TLabel
                Left = 269
                Top = 10
                Width = 9
                Height = 13
                Caption = #1088'.'
                Transparent = True
              end
              object dop_stf: TDBEdit
                Left = 205
                Top = 3
                Width = 60
                Height = 21
                DataField = 'st'
                DataSource = dopds
                TabOrder = 1
                OnEnter = fldEnter
              end
              object dop_prepf: TDBEdit
                Left = 5
                Top = 3
                Width = 193
                Height = 21
                DataField = 'prep'
                DataSource = dopds
                TabOrder = 0
                OnEnter = fldEnter
              end
            end
            object doph_pan: TPanel
              Left = 0
              Top = 0
              Width = 320
              Height = 21
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = '   '#1053#1077#1089#1090#1072#1085#1076#1072#1088#1090#1085#1099#1077' '#1084#1072#1085#1080#1087#1091#1083#1103#1094#1080#1080'               C'#1090#1086#1080#1084#1086#1089#1090#1100
              TabOrder = 1
              object dop_nav: TDBNavigator
                Left = 260
                Top = 0
                Width = 60
                Height = 21
                DataSource = dopds
                VisibleButtons = [nbInsert, nbDelete, nbPost]
                Align = alRight
                TabOrder = 0
              end
            end
          end
          object sales_panel: TPanel
            Left = 0
            Top = 261
            Width = 320
            Height = 92
            Align = alTop
            TabOrder = 2
            OnResize = amb_panelResize
            object salespan: TPanel
              Left = 1
              Top = 1
              Width = 318
              Height = 21
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = 
                '   '#1055#1088#1086#1076#1072#1078#1080'                                                   '#1082#1086#1083 +
                '-'#1074#1086
              TabOrder = 0
              object sales_nav: TDBNavigator
                Left = 278
                Top = 0
                Width = 40
                Height = 21
                DataSource = salesds
                VisibleButtons = [nbDelete, nbPost]
                Align = alRight
                TabOrder = 0
              end
            end
            object sales_grd: TDBCtrlGrid
              Left = 1
              Top = 22
              Width = 318
              Height = 69
              Align = alClient
              AllowInsert = False
              ColCount = 1
              DataSource = salesds
              PanelHeight = 34
              PanelWidth = 302
              TabOrder = 1
              RowCount = 2
              OnExit = grdExit
              OnKeyUp = CtrlGridKeyUp
              OnPaintPanel = gridPaintPanel
              object Label31: TLabel
                Left = 293
                Top = 10
                Width = 9
                Height = 13
                Caption = #1088'.'
                Transparent = True
              end
              object salesnamef: TRxDBComboEdit
                Left = 6
                Top = 3
                Width = 200
                Height = 21
                DataField = 'name'
                DataSource = salesds
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000000000000000000000000000000000008D49025C4225
                  2E2E2EC8D0D4C8D0D4C8D0D4F8E0E4A7A7A7A7A7A7A7A7A7A7A7A7A7A7A79696
                  96C8D0D4C8D0D4C8D0D48148157448176337025D36003B2500C8D0D4C9D1D5CD
                  D5D1E1F9FDA6A6A6A6A6A6A6A6A6A5A5A5969696C8D0D4C8D0D477502F9F5203
                  B15F039D5203763E025A3E1C3F3F3FC8D0D4CAD2D6C2DADEC2DADEC2DADEC2DA
                  DEC2DADEC8D0D4C8D0D489F2D2995108C36B09C86502B557029848056B380933
                  1F00C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4E9CDCE7A4F24
                  C78730D99B3CCC6703BC5B02A14B036D33013A1900C8D0D4C8D0D4C8D0D4C8D0
                  D4C8D0D4C8D0D4C8D0D4CCD4D0F1F4D29C6216E2AC52E2B158BF6404BC5C039D
                  4B02703001421900C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C0D5D4
                  88F6D7A3691DDAA148D29C3FC26706BB6C18AC835B716052472900C8D0D4C8D0
                  D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4E1F4CA7D5932BA701CD48C31D99647EA
                  D0ADD0C9C0A69D94845C2C3A2400C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                  C2DADEF2E2FE845C33C38847F6E6CCFCF9F4F1F1F1D8CABAB068187C43033A24
                  00C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C2DADEF0F7C6907046E3E3E0FE
                  FEFEF6ECDFD3A063AD61079652046C33013F2400C8D0D4C8D0D4C8D0D4C8D0D4
                  C8D0D4C8D0D4C2D6D4F2FBC1907755D1B28BDAAE75BE7820AA6207A35D058C4C
                  04632E013E2300C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4D1DDD47A5A38D8
                  BE9BB77928B97217B36B10AA6208A35F088D54195638102F2616C8D0D4C8D0D4
                  C8D0D4C8D0D4C8D0D4DEDDD5746047E3DCD4CBA7819B4C0EB97218B7721DC697
                  57D6BEA17A511D44361EC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C0D6D5F0FFCA93
                  8A7BCAC2BFBD947B9D631ECB985BEBDBC3E2C39CB1620F6A370EC8D0D4C8D0D4
                  C8D0D4C8D0D4C8D0D4C8D0D4C0D5D4FBFACC807867AEA9A4C9B29AE4CEB6C3A4
                  83B4732EA64D03853B04C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C1
                  D6D5EFCFC48C92EA9F917DB390726F50277D511F74461EF7CCD5}
                NumGlyphs = 1
                ReadOnly = True
                TabOrder = 0
                OnButtonClick = salesnamefButtonClick
              end
              object sales_cntf: TDBEdit
                Left = 209
                Top = 3
                Width = 37
                Height = 21
                DataField = 'count'
                DataSource = salesds
                TabOrder = 1
              end
              object sales_stf: TDBEdit
                Left = 249
                Top = 3
                Width = 42
                Height = 21
                DataField = 'st'
                DataSource = salesds
                TabOrder = 2
              end
            end
          end
          object std_panel: TPanel
            Left = 0
            Top = 0
            Width = 320
            Height = 91
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 4
            OnResize = amb_panelResize
            object std_grd: TDBCtrlGrid
              Left = 0
              Top = 21
              Width = 320
              Height = 70
              Align = alClient
              AllowInsert = False
              ColCount = 1
              DataSource = dssv
              PanelHeight = 35
              PanelWidth = 304
              TabOrder = 0
              RowCount = 2
              OnExit = grdExit
              OnKeyUp = CtrlGridKeyUp
              OnPaintPanel = gridPaintPanel
              object stdmanf: TRxDBComboEdit
                Left = 6
                Top = 3
                Width = 200
                Height = 22
                TabStop = False
                DataField = 'oper'
                DataSource = dssv
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000000000000000000000000000000000008D49025C4225
                  2E2E2EC8D0D4C8D0D4C8D0D4F8E0E4A7A7A7A7A7A7A7A7A7A7A7A7A7A7A79696
                  96C8D0D4C8D0D4C8D0D48148157448176337025D36003B2500C8D0D4C9D1D5CD
                  D5D1E1F9FDA6A6A6A6A6A6A6A6A6A5A5A5969696C8D0D4C8D0D477502F9F5203
                  B15F039D5203763E025A3E1C3F3F3FC8D0D4CAD2D6C2DADEC2DADEC2DADEC2DA
                  DEC2DADEC8D0D4C8D0D489F2D2995108C36B09C86502B557029848056B380933
                  1F00C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4E9CDCE7A4F24
                  C78730D99B3CCC6703BC5B02A14B036D33013A1900C8D0D4C8D0D4C8D0D4C8D0
                  D4C8D0D4C8D0D4C8D0D4CCD4D0F1F4D29C6216E2AC52E2B158BF6404BC5C039D
                  4B02703001421900C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C0D5D4
                  88F6D7A3691DDAA148D29C3FC26706BB6C18AC835B716052472900C8D0D4C8D0
                  D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4E1F4CA7D5932BA701CD48C31D99647EA
                  D0ADD0C9C0A69D94845C2C3A2400C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                  C2DADEF2E2FE845C33C38847F6E6CCFCF9F4F1F1F1D8CABAB068187C43033A24
                  00C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C2DADEF0F7C6907046E3E3E0FE
                  FEFEF6ECDFD3A063AD61079652046C33013F2400C8D0D4C8D0D4C8D0D4C8D0D4
                  C8D0D4C8D0D4C2D6D4F2FBC1907755D1B28BDAAE75BE7820AA6207A35D058C4C
                  04632E013E2300C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4D1DDD47A5A38D8
                  BE9BB77928B97217B36B10AA6208A35F088D54195638102F2616C8D0D4C8D0D4
                  C8D0D4C8D0D4C8D0D4DEDDD5746047E3DCD4CBA7819B4C0EB97218B7721DC697
                  57D6BEA17A511D44361EC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C0D6D5F0FFCA93
                  8A7BCAC2BFBD947B9D631ECB985BEBDBC3E2C39CB1620F6A370EC8D0D4C8D0D4
                  C8D0D4C8D0D4C8D0D4C8D0D4C0D5D4FBFACC807867AEA9A4C9B29AE4CEB6C3A4
                  83B4732EA64D03853B04C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C1
                  D6D5EFCFC48C92EA9F917DB390726F50277D511F74461EF7CCD5}
                NumGlyphs = 1
                ReadOnly = True
                TabOrder = 0
                OnButtonClick = stdmanfButtonClick
              end
            end
            object stdpan: TPanel
              Left = 0
              Top = 0
              Width = 320
              Height = 21
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = '   '#1057#1090#1072#1085#1076#1072#1088#1090#1085#1099#1077' '#1084#1072#1085#1080#1087#1091#1083#1103#1094#1080#1080
              TabOrder = 1
              object std_nav: TDBNavigator
                Left = 280
                Top = 0
                Width = 40
                Height = 21
                DataSource = dssv
                VisibleButtons = [nbDelete, nbPost]
                Align = alRight
                TabOrder = 0
              end
            end
          end
        end
      end
      object grid: TDBCtrlGrid
        Left = 0
        Top = 0
        Width = 692
        Height = 565
        Align = alLeft
        AllowInsert = False
        ColCount = 1
        Constraints.MinHeight = 360
        Constraints.MinWidth = 692
        DataSource = ambulatoru
        PanelHeight = 188
        PanelWidth = 676
        TabOrder = 0
        RowCount = 3
        OnExit = gridExit
        OnKeyUp = CtrlGridKeyUp
        OnPaintPanel = gridPaintPanel
        object grid_shape: TShape
          Left = 0
          Top = 0
          Width = 676
          Height = 140
          Align = alTop
          Brush.Color = clInfoBk
          Enabled = False
          Pen.Mode = pmNop
          Pen.Style = psClear
          Pen.Width = 0
        end
        object Label3: TLabel
          Left = 200
          Top = 5
          Width = 84
          Height = 13
          Caption = #1060#1048#1054' '#1074#1083#1072#1076#1077#1083#1100#1094#1072
          Transparent = True
        end
        object Label4: TLabel
          Left = 5
          Top = 54
          Width = 104
          Height = 13
          Caption = #1044#1072#1085#1085#1099#1077' '#1086' '#1078#1080#1074#1086#1090#1085#1086#1084
          Transparent = True
        end
        object Label5: TLabel
          Left = 4
          Top = 78
          Width = 79
          Height = 13
          Caption = #1055#1088#1077#1076#1074'. '#1076#1080#1072#1075#1085#1086#1079
          Transparent = True
        end
        object Label6: TLabel
          Left = 370
          Top = 78
          Width = 80
          Height = 13
          Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
          Transparent = True
        end
        object Label7: TLabel
          Left = 460
          Top = 54
          Width = 122
          Height = 13
          Caption = #1054#1073#1097#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1091#1089#1083#1091#1075
          Transparent = True
        end
        object susl: TDBText
          Left = 591
          Top = 54
          Width = 79
          Height = 15
          DataField = 'sum'
          DataSource = ambulatoru
          Transparent = True
        end
        object Label11: TLabel
          Left = 5
          Top = 31
          Width = 86
          Height = 13
          Caption = #1040#1076#1088#1077#1089' '#1080' '#1090#1077#1083#1077#1092#1086#1085
          Transparent = True
        end
        object delim: TShape
          Left = 0
          Top = 140
          Width = 676
          Height = 48
          Align = alClient
          Brush.Color = cl3DDkShadow
          Pen.Style = psClear
          Pen.Width = 0
        end
        object nomf: TDBText
          Left = 3
          Top = 4
          Width = 105
          Height = 17
          Alignment = taRightJustify
          DataField = 'npp'
          DataSource = ambulatoru
          Transparent = True
        end
        object Label17: TLabel
          Left = 144
          Top = 120
          Width = 144
          Height = 13
          Caption = #1044#1072#1090#1072' '#1089#1083#1077#1076#1091#1097#1077#1075#1086' '#1087#1086#1089#1077#1097#1077#1085#1080#1103
          Transparent = True
        end
        object Label37: TLabel
          Left = 16
          Top = 120
          Width = 85
          Height = 13
          Caption = #1054#1089#1086#1073#1099#1077' '#1086#1090#1084#1077#1090#1082#1080
          Transparent = True
        end
        object Label39: TLabel
          Left = 370
          Top = 120
          Width = 101
          Height = 13
          Caption = #1055#1088#1080#1085#1080#1084#1072#1102#1097#1080#1081' '#1074#1088#1072#1095
          Transparent = True
        end
        object dat: TDBEdit
          Left = 120
          Top = 2
          Width = 73
          Height = 21
          DataField = 'date'
          DataSource = ambulatoru
          MaxLength = 8
          TabOrder = 0
        end
        object vld: TDBEdit
          Left = 288
          Top = 2
          Width = 385
          Height = 21
          DataField = 'vladel'
          DataSource = ambulatoru
          TabOrder = 1
        end
        object zver: TDBEdit
          Left = 120
          Top = 48
          Width = 337
          Height = 21
          DataField = 'zver'
          DataSource = ambulatoru
          TabOrder = 3
        end
        object adr: TDBEdit
          Left = 120
          Top = 24
          Width = 553
          Height = 21
          DataField = 'adr'
          DataSource = ambulatoru
          TabOrder = 2
        end
        object dz: TDBMemo
          Left = 120
          Top = 72
          Width = 247
          Height = 41
          DataField = 'dz'
          DataSource = ambulatoru
          TabOrder = 4
          OnKeyDown = editKeyDown
          OnKeyPress = editKeyPress
        end
        object dop: TDBMemo
          Left = 458
          Top = 71
          Width = 215
          Height = 42
          DataField = 'dop'
          DataSource = ambulatoru
          TabOrder = 5
          OnKeyDown = editKeyDown
          OnKeyPress = editKeyPress
        end
        object nextpf: TDBEdit
          Left = 294
          Top = 115
          Width = 73
          Height = 21
          DataField = 'date_next'
          DataSource = ambulatoru
          MaxLength = 8
          TabOrder = 6
        end
        object diecb: TDBCheckBox
          Left = 120
          Top = 120
          Width = 13
          Height = 15
          Alignment = taLeftJustify
          DataField = 'die'
          DataSource = ambulatoru
          TabOrder = 7
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object RxDBLookupCombo1: TRxDBLookupCombo
          Left = 480
          Top = 115
          Width = 193
          Height = 21
          DropDownCount = 8
          DataField = 'vrach'
          DataSource = ambulatoru
          TabOrder = 8
        end
      end
      object fcheckpanel: TPanel
        Left = 0
        Top = 565
        Width = 1014
        Height = 24
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object ambl: TLabel
          Left = 560
          Top = 6
          Width = 297
          Height = 13
          AutoSize = False
        end
        object lf_btn: TButton
          Left = 5
          Top = 3
          Width = 44
          Height = 17
          Caption = #1051'/'#1060
          TabOrder = 0
          OnClick = lf_btnClick
        end
        object am_btn: TButton
          Left = 52
          Top = 3
          Width = 61
          Height = 17
          Caption = #1040#1085'. '#1084#1086#1095#1080
          TabOrder = 1
          OnClick = am_btnClick
        end
        object bh_btn: TButton
          Left = 176
          Top = 3
          Width = 49
          Height = 17
          Caption = #1041'/'#1061
          TabOrder = 2
          OnClick = bh_btnClick
        end
        object dop_btn: TButton
          Left = 376
          Top = 3
          Width = 50
          Height = 17
          Caption = #1055#1088#1086#1095#1077#1077
          TabOrder = 3
          OnClick = dop_btnClick
        end
        object ak_btn: TButton
          Left = 118
          Top = 3
          Width = 51
          Height = 17
          Caption = #1040#1085'. '#1082#1072#1083#1072
          TabOrder = 4
          OnClick = ak_btnClick
        end
        object cg_btn: TButton
          Left = 234
          Top = 3
          Width = 39
          Height = 17
          Caption = #1062'/'#1043
          TabOrder = 5
          OnClick = cg_btnClick
        end
        object vr_otch: TButton
          Left = 912
          Top = 3
          Width = 95
          Height = 17
          Caption = #1054#1090#1095#1077#1090#1099
          TabOrder = 6
          OnClick = vr_otchClick
        end
        object ekg_btn: TButton
          Left = 280
          Top = 3
          Width = 39
          Height = 17
          Caption = #1069#1050#1043
          TabOrder = 9
          OnClick = ekg_btnClick
        end
        object uzi_btn: TButton
          Left = 328
          Top = 4
          Width = 39
          Height = 17
          Caption = #1059#1047#1048
          TabOrder = 8
          OnClick = uzi_btnClick
        end
        object files_btn: TButton
          Left = 434
          Top = 3
          Width = 54
          Height = 17
          Caption = #1060#1072#1081#1083#1099
          TabOrder = 7
          OnClick = files_btnClick
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1042#1072#1082#1094#1080#1085#1072#1094#1080#1103
      ImageIndex = 1
      Constraints.MaxWidth = 1098
      Constraints.MinWidth = 850
      OnEnter = TabSheet2Enter
      OnResize = TabSheet2Resize
      OnShow = TabSheet2Show
      object grd_vac: TDBCtrlGrid
        Left = 0
        Top = 29
        Width = 692
        Height = 500
        Align = alClient
        AllowInsert = False
        ColCount = 1
        DataSource = DS
        PanelHeight = 250
        PanelWidth = 676
        TabOrder = 0
        RowCount = 2
        OnExit = grd_vacExit
        OnKeyUp = CtrlGridKeyUp
        OnPaintPanel = gridPaintPanel
        object grd_vac_shape: TShape
          Left = 0
          Top = 0
          Width = 676
          Height = 79
          Align = alTop
          Pen.Mode = pmNop
        end
        object vacn: TDBText
          Left = 3
          Top = 7
          Width = 93
          Height = 15
          Alignment = taRightJustify
          DataField = 'npp'
          DataSource = DS
          Transparent = True
        end
        object Shape3: TShape
          Left = 0
          Top = 79
          Width = 676
          Height = 171
          Align = alClient
          Brush.Color = cl3DDkShadow
          Pen.Width = 0
        end
        object cvf: TDBText
          Left = 550
          Top = 35
          Width = 45
          Height = 17
          Alignment = taRightJustify
          DataField = 'sum'
          DataSource = DS
          Transparent = True
        end
        object Label25: TLabel
          Left = 453
          Top = 36
          Width = 92
          Height = 13
          Caption = #1054#1073#1097#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100
          Transparent = True
        end
        object Label38: TLabel
          Left = 11
          Top = 58
          Width = 65
          Height = 13
          Caption = #1054#1089#1086#1073#1099#1077' '#1086#1090#1084'.'
          Transparent = True
        end
        object Label41: TLabel
          Left = 452
          Top = 58
          Width = 24
          Height = 13
          Caption = #1042#1088#1072#1095
          Transparent = True
        end
        object Label19: TLabel
          Left = 9
          Top = 35
          Width = 26
          Height = 13
          Caption = #1044#1072#1090#1072
          Transparent = True
        end
        object datevac: TDBEdit
          Left = 40
          Top = 30
          Width = 57
          Height = 21
          DataField = 'date'
          DataSource = DS
          MaxLength = 8
          TabOrder = 0
        end
        object d_nextvac: TDBEdit
          Left = 600
          Top = 6
          Width = 64
          Height = 21
          DataField = 'date_next'
          DataSource = DS
          MaxLength = 8
          TabOrder = 4
        end
        object vladvac: TDBMemo
          Left = 105
          Top = 6
          Width = 212
          Height = 69
          DataField = 'vlad'
          DataSource = DS
          TabOrder = 1
          OnKeyDown = editKeyDown
          OnKeyPress = editKeyPress
        end
        object zvervac: TDBMemo
          Left = 319
          Top = 6
          Width = 128
          Height = 69
          DataField = 'zver'
          DataSource = DS
          TabOrder = 2
          OnKeyDown = editKeyDown
          OnKeyPress = editKeyPress
        end
        object propf: TRxDBLookupCombo
          Left = 450
          Top = 6
          Width = 145
          Height = 22
          DropDownCount = 8
          DataField = 'prep'
          DataSource = DS
          TabOrder = 3
          OnChange = propfChange
        end
        object DBCheckBox1: TDBCheckBox
          Left = 81
          Top = 57
          Width = 15
          Height = 15
          Alignment = taLeftJustify
          DataField = 'die'
          DataSource = DS
          TabOrder = 5
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object RxDBLookupCombo2: TRxDBLookupCombo
          Left = 479
          Top = 55
          Width = 190
          Height = 21
          DropDownCount = 8
          DataField = 'vrach'
          DataSource = DS
          TabOrder = 6
        end
      end
      object header: TPanel
        Left = 0
        Top = 0
        Width = 1014
        Height = 29
        Align = alTop
        TabOrder = 1
        object Label22: TLabel
          Left = 452
          Top = 15
          Width = 49
          Height = 13
          Caption = #1055#1088#1077#1087#1072#1088#1072#1090
        end
        object Label23: TLabel
          Left = 600
          Top = 15
          Width = 61
          Height = 13
          Caption = #1042#1072#1082#1094#1080#1085#1072#1094#1080#1103
        end
        object Label24: TLabel
          Left = 600
          Top = 1
          Width = 51
          Height = 13
          Caption = #1057#1083#1077#1076#1091#1097#1072#1103
        end
        object Label21: TLabel
          Left = 318
          Top = 15
          Width = 104
          Height = 13
          Caption = #1044#1072#1085#1085#1099#1077' '#1086' '#1078#1080#1074#1086#1090#1085#1086#1084
        end
        object Label20: TLabel
          Left = 104
          Top = 16
          Width = 107
          Height = 13
          Caption = #1044#1072#1085#1085#1099#1077' '#1086' '#1074#1083#1072#1076#1077#1083#1100#1094#1077
        end
        object vac_nav: TDBNavigator
          Left = 903
          Top = 1
          Width = 110
          Height = 27
          DataSource = DS
          VisibleButtons = [nbInsert, nbDelete, nbPost, nbRefresh]
          Align = alRight
          TabOrder = 1
          OnClick = navClick
        end
        object vac_sch: TButton
          Left = 843
          Top = 3
          Width = 51
          Height = 23
          Caption = #1057#1095#1077#1090
          TabOrder = 0
          OnClick = vac_schClick
        end
      end
      object fltp: TPanel
        Left = 0
        Top = 529
        Width = 1014
        Height = 60
        Align = alBottom
        TabOrder = 3
        object fltcp: TPanel
          Left = 1
          Top = 1
          Width = 1012
          Height = 22
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object vacl: TLabel
            Left = 560
            Top = 6
            Width = 441
            Height = 13
            AutoSize = False
          end
          object fltpc: TCheckBox
            Left = 3
            Top = 2
            Width = 119
            Height = 17
            Caption = #1043#1077#1085#1077#1088#1072#1094#1080#1103' '#1086#1090#1095#1077#1090#1072
            TabOrder = 0
            OnClick = fltpcClick
          end
        end
        object fltfp: TPanel
          Left = 1
          Top = 23
          Width = 1012
          Height = 36
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          Visible = False
          object Label26: TLabel
            Left = 13
            Top = 14
            Width = 11
            Height = 13
            Caption = #1086#1090
          end
          object Label27: TLabel
            Left = 157
            Top = 15
            Width = 12
            Height = 13
            Caption = #1076#1086
          end
          object Label28: TLabel
            Left = 329
            Top = 14
            Width = 47
            Height = 13
            Caption = #1087#1088#1077#1087#1072#1088#1072#1090
          end
          object prep_flt: TComboBox
            Left = 385
            Top = 7
            Width = 145
            Height = 21
            AutoDropDown = True
            Style = csDropDownList
            ItemHeight = 13
            Sorted = True
            TabOrder = 0
          end
          object otch_btn: TButton
            Left = 564
            Top = 5
            Width = 133
            Height = 25
            Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1074#1072#1082#1094#1080#1085#1072#1094#1080#1080
            TabOrder = 1
            OnClick = otch_btnClick
          end
          object ot_date: TDateEdit
            Left = 32
            Top = 8
            Width = 89
            Height = 21
            NumGlyphs = 2
            TabOrder = 2
          end
          object do_date: TDateEdit
            Left = 176
            Top = 8
            Width = 98
            Height = 21
            NumGlyphs = 2
            TabOrder = 3
          end
          object vr_otch_vac: TButton
            Left = 707
            Top = 5
            Width = 97
            Height = 25
            Caption = #1054#1090#1095#1077#1090#1099
            TabOrder = 4
            OnClick = vr_otch_vacClick
          end
        end
      end
      object vacrpanel: TPanel
        Left = 692
        Top = 29
        Width = 322
        Height = 500
        Align = alRight
        TabOrder = 2
        OnResize = vacrpanelResize
        object vsales_panel: TPanel
          Left = 1
          Top = 262
          Width = 320
          Height = 80
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          OnResize = amb_panelResize
          object vsales_pan: TPanel
            Left = 0
            Top = 0
            Width = 320
            Height = 21
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = '   '#1055#1088#1086#1076#1072#1078#1080'                                    '#1082#1086#1083'-'#1074#1086
            TabOrder = 0
            object vsales_naw: TDBNavigator
              Left = 280
              Top = 0
              Width = 40
              Height = 21
              DataSource = vsalesds
              VisibleButtons = [nbDelete, nbPost]
              Align = alRight
              TabOrder = 0
            end
          end
          object vsales_grd: TDBCtrlGrid
            Left = 0
            Top = 21
            Width = 320
            Height = 59
            Align = alClient
            AllowInsert = False
            ColCount = 1
            DataSource = vsalesds
            PanelHeight = 29
            PanelWidth = 304
            TabOrder = 1
            RowCount = 2
            OnExit = grdExit
            OnKeyUp = CtrlGridKeyUp
            OnPaintPanel = gridPaintPanel
            object Label32: TLabel
              Left = 294
              Top = 10
              Width = 9
              Height = 13
              Caption = #1088'.'
              Transparent = True
            end
            object vsalesnf: TRxDBComboEdit
              Left = 6
              Top = 3
              Width = 203
              Height = 21
              DataField = 'name'
              DataSource = vsalesds
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000000000000000000000000000000000008D49025C4225
                2E2E2EC8D0D4C8D0D4C8D0D4F8E0E4A7A7A7A7A7A7A7A7A7A7A7A7A7A7A79696
                96C8D0D4C8D0D4C8D0D48148157448176337025D36003B2500C8D0D4C9D1D5CD
                D5D1E1F9FDA6A6A6A6A6A6A6A6A6A5A5A5969696C8D0D4C8D0D477502F9F5203
                B15F039D5203763E025A3E1C3F3F3FC8D0D4CAD2D6C2DADEC2DADEC2DADEC2DA
                DEC2DADEC8D0D4C8D0D489F2D2995108C36B09C86502B557029848056B380933
                1F00C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4E9CDCE7A4F24
                C78730D99B3CCC6703BC5B02A14B036D33013A1900C8D0D4C8D0D4C8D0D4C8D0
                D4C8D0D4C8D0D4C8D0D4CCD4D0F1F4D29C6216E2AC52E2B158BF6404BC5C039D
                4B02703001421900C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C0D5D4
                88F6D7A3691DDAA148D29C3FC26706BB6C18AC835B716052472900C8D0D4C8D0
                D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4E1F4CA7D5932BA701CD48C31D99647EA
                D0ADD0C9C0A69D94845C2C3A2400C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                C2DADEF2E2FE845C33C38847F6E6CCFCF9F4F1F1F1D8CABAB068187C43033A24
                00C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C2DADEF0F7C6907046E3E3E0FE
                FEFEF6ECDFD3A063AD61079652046C33013F2400C8D0D4C8D0D4C8D0D4C8D0D4
                C8D0D4C8D0D4C2D6D4F2FBC1907755D1B28BDAAE75BE7820AA6207A35D058C4C
                04632E013E2300C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4D1DDD47A5A38D8
                BE9BB77928B97217B36B10AA6208A35F088D54195638102F2616C8D0D4C8D0D4
                C8D0D4C8D0D4C8D0D4DEDDD5746047E3DCD4CBA7819B4C0EB97218B7721DC697
                57D6BEA17A511D44361EC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C0D6D5F0FFCA93
                8A7BCAC2BFBD947B9D631ECB985BEBDBC3E2C39CB1620F6A370EC8D0D4C8D0D4
                C8D0D4C8D0D4C8D0D4C8D0D4C0D5D4FBFACC807867AEA9A4C9B29AE4CEB6C3A4
                83B4732EA64D03853B04C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C1
                D6D5EFCFC48C92EA9F917DB390726F50277D511F74461EF7CCD5}
              NumGlyphs = 1
              ReadOnly = True
              TabOrder = 0
              OnButtonClick = vsalesnfButtonClick
            end
            object DBEdit3: TDBEdit
              Left = 209
              Top = 3
              Width = 37
              Height = 21
              DataField = 'count'
              DataSource = vsalesds
              TabOrder = 1
            end
            object DBEdit4: TDBEdit
              Left = 249
              Top = 3
              Width = 42
              Height = 21
              DataField = 'st'
              DataSource = vsalesds
              TabOrder = 2
            end
          end
        end
        object vdop_panel: TPanel
          Left = 1
          Top = 342
          Width = 320
          Height = 157
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          OnResize = amb_panelResize
          object vdop_grd: TDBCtrlGrid
            Left = 0
            Top = 21
            Width = 320
            Height = 136
            Align = alClient
            AllowInsert = False
            ColCount = 1
            DataSource = vdopds
            PanelHeight = 68
            PanelWidth = 304
            TabOrder = 0
            RowCount = 2
            OnExit = grdExit
            OnKeyUp = CtrlGridKeyUp
            OnPaintPanel = gridPaintPanel
            object Label33: TLabel
              Left = 294
              Top = 10
              Width = 9
              Height = 13
              Caption = #1088'.'
              Transparent = True
            end
            object DBEdit5: TDBEdit
              Left = 209
              Top = 2
              Width = 37
              Height = 21
              DataField = 'count'
              DataSource = vdopds
              TabOrder = 0
              OnEnter = fldEnter
            end
            object DBEdit6: TDBEdit
              Left = 249
              Top = 2
              Width = 42
              Height = 21
              DataField = 'st'
              DataSource = vdopds
              TabOrder = 1
              OnEnter = fldEnter
            end
            object DBEdit1: TDBEdit
              Left = 6
              Top = 2
              Width = 203
              Height = 21
              DataField = 'dop'
              DataSource = vdopds
              TabOrder = 2
            end
          end
          object vdop_pan: TPanel
            Left = 0
            Top = 0
            Width = 320
            Height = 21
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = '   '#1053#1077#1089#1090#1072#1085#1076#1072#1088#1090#1085#1099#1077' '#1084#1072#1085#1080#1087#1091#1083#1103#1094#1080#1080'  '#1082#1086#1083'-'#1074#1086
            TabOrder = 1
            object vdop_nav: TDBNavigator
              Left = 260
              Top = 0
              Width = 60
              Height = 21
              DataSource = vdopds
              VisibleButtons = [nbInsert, nbDelete, nbPost]
              Align = alRight
              TabOrder = 0
            end
          end
        end
        object vstd_panel: TPanel
          Left = 1
          Top = 1
          Width = 320
          Height = 91
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          OnResize = amb_panelResize
          object vstd_grd: TDBCtrlGrid
            Left = 0
            Top = 21
            Width = 320
            Height = 70
            Align = alClient
            AllowInsert = False
            ColCount = 1
            DataSource = dsvsv
            PanelHeight = 35
            PanelWidth = 304
            TabOrder = 0
            RowCount = 2
            OnExit = grdExit
            OnKeyUp = CtrlGridKeyUp
            OnPaintPanel = gridPaintPanel
            object vstdmanf: TRxDBComboEdit
              Left = 6
              Top = 3
              Width = 200
              Height = 22
              TabStop = False
              DataField = 'oper'
              DataSource = dsvsv
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000000000000000000000000000000000008D49025C4225
                2E2E2EC8D0D4C8D0D4C8D0D4F8E0E4A7A7A7A7A7A7A7A7A7A7A7A7A7A7A79696
                96C8D0D4C8D0D4C8D0D48148157448176337025D36003B2500C8D0D4C9D1D5CD
                D5D1E1F9FDA6A6A6A6A6A6A6A6A6A5A5A5969696C8D0D4C8D0D477502F9F5203
                B15F039D5203763E025A3E1C3F3F3FC8D0D4CAD2D6C2DADEC2DADEC2DADEC2DA
                DEC2DADEC8D0D4C8D0D489F2D2995108C36B09C86502B557029848056B380933
                1F00C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4E9CDCE7A4F24
                C78730D99B3CCC6703BC5B02A14B036D33013A1900C8D0D4C8D0D4C8D0D4C8D0
                D4C8D0D4C8D0D4C8D0D4CCD4D0F1F4D29C6216E2AC52E2B158BF6404BC5C039D
                4B02703001421900C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C0D5D4
                88F6D7A3691DDAA148D29C3FC26706BB6C18AC835B716052472900C8D0D4C8D0
                D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4E1F4CA7D5932BA701CD48C31D99647EA
                D0ADD0C9C0A69D94845C2C3A2400C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                C2DADEF2E2FE845C33C38847F6E6CCFCF9F4F1F1F1D8CABAB068187C43033A24
                00C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C2DADEF0F7C6907046E3E3E0FE
                FEFEF6ECDFD3A063AD61079652046C33013F2400C8D0D4C8D0D4C8D0D4C8D0D4
                C8D0D4C8D0D4C2D6D4F2FBC1907755D1B28BDAAE75BE7820AA6207A35D058C4C
                04632E013E2300C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4D1DDD47A5A38D8
                BE9BB77928B97217B36B10AA6208A35F088D54195638102F2616C8D0D4C8D0D4
                C8D0D4C8D0D4C8D0D4DEDDD5746047E3DCD4CBA7819B4C0EB97218B7721DC697
                57D6BEA17A511D44361EC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C0D6D5F0FFCA93
                8A7BCAC2BFBD947B9D631ECB985BEBDBC3E2C39CB1620F6A370EC8D0D4C8D0D4
                C8D0D4C8D0D4C8D0D4C8D0D4C0D5D4FBFACC807867AEA9A4C9B29AE4CEB6C3A4
                83B4732EA64D03853B04C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C1
                D6D5EFCFC48C92EA9F917DB390726F50277D511F74461EF7CCD5}
              NumGlyphs = 1
              ReadOnly = True
              TabOrder = 0
              OnButtonClick = vstdmanfButtonClick
            end
          end
          object vstd_pan: TPanel
            Left = 0
            Top = 0
            Width = 320
            Height = 21
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = '   '#1057#1090#1072#1085#1076#1072#1088#1090#1085#1099#1077' '#1084#1072#1085#1080#1087#1091#1083#1103#1094#1080#1080
            TabOrder = 1
            object vstd_nav: TDBNavigator
              Left = 280
              Top = 0
              Width = 40
              Height = 21
              DataSource = dsvsv
              VisibleButtons = [nbDelete, nbPost]
              Align = alRight
              TabOrder = 0
            end
          end
        end
        object vprep_panel: TPanel
          Left = 1
          Top = 177
          Width = 320
          Height = 85
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          OnResize = amb_panelResize
          object vprep_grd: TDBCtrlGrid
            Left = 0
            Top = 21
            Width = 320
            Height = 64
            Align = alClient
            AllowInsert = False
            ColCount = 1
            DataSource = dsvlec_sv
            PanelHeight = 32
            PanelWidth = 304
            TabOrder = 0
            RowCount = 2
            OnExit = grdExit
            OnKeyUp = CtrlGridKeyUp
            OnPaintPanel = gridPaintPanel
            object Label40: TLabel
              Left = 294
              Top = 10
              Width = 9
              Height = 13
              Caption = #1088'.'
              Transparent = True
            end
            object DBEdit2: TDBEdit
              Left = 209
              Top = 3
              Width = 37
              Height = 21
              DataField = 'doza'
              DataSource = dsvlec_sv
              TabOrder = 0
              OnEnter = fldEnter
              OnKeyPress = decsep
            end
            object DBEdit7: TDBEdit
              Left = 249
              Top = 3
              Width = 42
              Height = 21
              DataField = 'st'
              DataSource = dsvlec_sv
              TabOrder = 1
              OnEnter = fldEnter
            end
            object vlecf: TRxDBComboEdit
              Left = 6
              Top = 3
              Width = 200
              Height = 21
              TabStop = False
              DataField = 'name'
              DataSource = dsvlec_sv
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000000000000000000000000000000000008D49025C4225
                2E2E2EC8D0D4C8D0D4C8D0D4F8E0E4A7A7A7A7A7A7A7A7A7A7A7A7A7A7A79696
                96C8D0D4C8D0D4C8D0D48148157448176337025D36003B2500C8D0D4C9D1D5CD
                D5D1E1F9FDA6A6A6A6A6A6A6A6A6A5A5A5969696C8D0D4C8D0D477502F9F5203
                B15F039D5203763E025A3E1C3F3F3FC8D0D4CAD2D6C2DADEC2DADEC2DADEC2DA
                DEC2DADEC8D0D4C8D0D489F2D2995108C36B09C86502B557029848056B380933
                1F00C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4E9CDCE7A4F24
                C78730D99B3CCC6703BC5B02A14B036D33013A1900C8D0D4C8D0D4C8D0D4C8D0
                D4C8D0D4C8D0D4C8D0D4CCD4D0F1F4D29C6216E2AC52E2B158BF6404BC5C039D
                4B02703001421900C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C0D5D4
                88F6D7A3691DDAA148D29C3FC26706BB6C18AC835B716052472900C8D0D4C8D0
                D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4E1F4CA7D5932BA701CD48C31D99647EA
                D0ADD0C9C0A69D94845C2C3A2400C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                C2DADEF2E2FE845C33C38847F6E6CCFCF9F4F1F1F1D8CABAB068187C43033A24
                00C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C2DADEF0F7C6907046E3E3E0FE
                FEFEF6ECDFD3A063AD61079652046C33013F2400C8D0D4C8D0D4C8D0D4C8D0D4
                C8D0D4C8D0D4C2D6D4F2FBC1907755D1B28BDAAE75BE7820AA6207A35D058C4C
                04632E013E2300C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4D1DDD47A5A38D8
                BE9BB77928B97217B36B10AA6208A35F088D54195638102F2616C8D0D4C8D0D4
                C8D0D4C8D0D4C8D0D4DEDDD5746047E3DCD4CBA7819B4C0EB97218B7721DC697
                57D6BEA17A511D44361EC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C0D6D5F0FFCA93
                8A7BCAC2BFBD947B9D631ECB985BEBDBC3E2C39CB1620F6A370EC8D0D4C8D0D4
                C8D0D4C8D0D4C8D0D4C8D0D4C0D5D4FBFACC807867AEA9A4C9B29AE4CEB6C3A4
                83B4732EA64D03853B04C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C1
                D6D5EFCFC48C92EA9F917DB390726F50277D511F74461EF7CCD5}
              NumGlyphs = 1
              ReadOnly = True
              TabOrder = 2
              OnButtonClick = vlecfButtonClick
            end
          end
          object vlech_pan: TPanel
            Left = 0
            Top = 0
            Width = 320
            Height = 21
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = '  '#1051#1077#1082#1072#1088#1089#1090#1074#1077#1085#1085#1099#1077' '#1087#1088#1077#1087#1072#1088#1072#1090#1099'                     '#1044#1086#1079#1072
            Constraints.MinWidth = 320
            TabOrder = 1
            object vprep_nav: TDBNavigator
              Left = 280
              Top = 0
              Width = 40
              Height = 21
              DataSource = dsvlec_sv
              VisibleButtons = [nbDelete, nbPost]
              Align = alRight
              TabOrder = 0
            end
          end
        end
        object vman_panel: TPanel
          Left = 1
          Top = 92
          Width = 320
          Height = 85
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 4
          OnResize = amb_panelResize
          object vman_grd: TDBCtrlGrid
            Left = 0
            Top = 21
            Width = 320
            Height = 64
            Align = alClient
            AllowInsert = False
            ColCount = 1
            DataSource = dsvmn_sv
            PanelHeight = 32
            PanelWidth = 304
            TabOrder = 0
            RowCount = 2
            OnExit = grdExit
            OnKeyUp = CtrlGridKeyUp
            OnPaintPanel = gridPaintPanel
            object DBEdit8: TDBEdit
              Left = 218
              Top = 3
              Width = 50
              Height = 21
              DataField = 'count'
              DataSource = dsvmn_sv
              TabOrder = 0
              OnEnter = fldEnter
            end
            object vmnmanf: TRxDBComboEdit
              Left = 6
              Top = 3
              Width = 200
              Height = 22
              TabStop = False
              DataField = 'name'
              DataSource = dsvmn_sv
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000000000000000000000000000000000008D49025C4225
                2E2E2EC8D0D4C8D0D4C8D0D4F8E0E4A7A7A7A7A7A7A7A7A7A7A7A7A7A7A79696
                96C8D0D4C8D0D4C8D0D48148157448176337025D36003B2500C8D0D4C9D1D5CD
                D5D1E1F9FDA6A6A6A6A6A6A6A6A6A5A5A5969696C8D0D4C8D0D477502F9F5203
                B15F039D5203763E025A3E1C3F3F3FC8D0D4CAD2D6C2DADEC2DADEC2DADEC2DA
                DEC2DADEC8D0D4C8D0D489F2D2995108C36B09C86502B557029848056B380933
                1F00C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4E9CDCE7A4F24
                C78730D99B3CCC6703BC5B02A14B036D33013A1900C8D0D4C8D0D4C8D0D4C8D0
                D4C8D0D4C8D0D4C8D0D4CCD4D0F1F4D29C6216E2AC52E2B158BF6404BC5C039D
                4B02703001421900C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C0D5D4
                88F6D7A3691DDAA148D29C3FC26706BB6C18AC835B716052472900C8D0D4C8D0
                D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4E1F4CA7D5932BA701CD48C31D99647EA
                D0ADD0C9C0A69D94845C2C3A2400C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                C2DADEF2E2FE845C33C38847F6E6CCFCF9F4F1F1F1D8CABAB068187C43033A24
                00C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C2DADEF0F7C6907046E3E3E0FE
                FEFEF6ECDFD3A063AD61079652046C33013F2400C8D0D4C8D0D4C8D0D4C8D0D4
                C8D0D4C8D0D4C2D6D4F2FBC1907755D1B28BDAAE75BE7820AA6207A35D058C4C
                04632E013E2300C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4D1DDD47A5A38D8
                BE9BB77928B97217B36B10AA6208A35F088D54195638102F2616C8D0D4C8D0D4
                C8D0D4C8D0D4C8D0D4DEDDD5746047E3DCD4CBA7819B4C0EB97218B7721DC697
                57D6BEA17A511D44361EC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C0D6D5F0FFCA93
                8A7BCAC2BFBD947B9D631ECB985BEBDBC3E2C39CB1620F6A370EC8D0D4C8D0D4
                C8D0D4C8D0D4C8D0D4C8D0D4C0D5D4FBFACC807867AEA9A4C9B29AE4CEB6C3A4
                83B4732EA64D03853B04C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C1
                D6D5EFCFC48C92EA9F917DB390726F50277D511F74461EF7CCD5}
              NumGlyphs = 1
              ReadOnly = True
              TabOrder = 1
              OnButtonClick = vmnmanfButtonClick
            end
          end
          object vman_pan: TPanel
            Left = 0
            Top = 0
            Width = 320
            Height = 21
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = '   '#1052#1085#1086#1075#1086#1082#1088'. '#1055#1086#1074#1090#1086#1088#1103#1077#1084#1099#1077' '#1084#1072#1085#1080#1087#1091#1083#1103#1094#1080#1080'      '#1050#1086#1083'-'#1074#1086
            TabOrder = 1
            object vman_nav: TDBNavigator
              Left = 280
              Top = 0
              Width = 40
              Height = 21
              DataSource = dsvmn_sv
              VisibleButtons = [nbDelete, nbPost]
              Align = alRight
              TabOrder = 0
            end
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1087#1072#1088#1072#1084#1077#1090#1088#1099' '#1092#1080#1088#1084#1099
      ImageIndex = 2
      TabVisible = False
      object logo_b: TImage
        Left = 18
        Top = 15
        Width = 515
        Height = 140
      end
      object logo_s: TImage
        Left = 17
        Top = 227
        Width = 440
        Height = 140
        AutoSize = True
      end
    end
  end
  object flt: TCheckBox
    Left = 203
    Top = 2
    Width = 58
    Height = 17
    Caption = #1055#1086#1080#1089#1082
    TabOrder = 1
    OnClick = fltClick
    OnExit = fltExit
  end
  object fpan: TPanel
    Left = 0
    Top = 617
    Width = 1022
    Height = 75
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    Visible = False
    object Label8: TLabel
      Left = 8
      Top = 8
      Width = 84
      Height = 13
      Caption = #1060#1048#1054' '#1074#1083#1072#1076#1077#1083#1100#1094#1072
    end
    object Label9: TLabel
      Left = 8
      Top = 56
      Width = 104
      Height = 13
      Caption = #1044#1072#1085#1085#1099#1077' '#1086' '#1078#1080#1074#1086#1090#1085#1086#1084
    end
    object Label10: TLabel
      Left = 432
      Top = 8
      Width = 44
      Height = 13
      Caption = #1044#1080#1072#1075#1085#1086#1079
    end
    object Label12: TLabel
      Left = 432
      Top = 56
      Width = 85
      Height = 13
      Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1091#1089#1083#1091#1075
    end
    object Label13: TLabel
      Left = 432
      Top = 32
      Width = 80
      Height = 13
      Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
    end
    object Label14: TLabel
      Left = 520
      Top = 56
      Width = 11
      Height = 13
      Caption = #1086#1090
    end
    object Label15: TLabel
      Left = 584
      Top = 56
      Width = 12
      Height = 13
      Caption = #1076#1086
    end
    object Label16: TLabel
      Left = 8
      Top = 32
      Width = 86
      Height = 13
      Caption = #1040#1076#1088#1077#1089' '#1080' '#1090#1077#1083#1077#1092#1086#1085
    end
    object Label34: TLabel
      Left = 848
      Top = 34
      Width = 12
      Height = 13
      Caption = #1076#1086
    end
    object Label35: TLabel
      Left = 848
      Top = 7
      Width = 11
      Height = 13
      Caption = #1086#1090
    end
    object Label36: TLabel
      Left = 656
      Top = 56
      Width = 23
      Height = 13
      Caption = #1074#1088#1072#1095
    end
    object vladf: TEdit
      Left = 120
      Top = 2
      Width = 305
      Height = 21
      TabOrder = 0
      OnChange = fltClick
    end
    object zverf: TEdit
      Left = 120
      Top = 50
      Width = 305
      Height = 21
      TabOrder = 2
      OnChange = fltClick
    end
    object sub: TMaskEdit
      Left = 536
      Top = 50
      Width = 43
      Height = 21
      EditMask = '!999999;0;_'
      MaxLength = 6
      TabOrder = 5
      OnExit = fltClick
    end
    object sue: TMaskEdit
      Left = 600
      Top = 50
      Width = 47
      Height = 21
      EditMask = '!999999;0;_'
      MaxLength = 6
      TabOrder = 6
      OnExit = fltClick
    end
    object dzf: TEdit
      Left = 520
      Top = 2
      Width = 305
      Height = 21
      TabOrder = 3
      OnChange = fltClick
    end
    object dopf: TEdit
      Left = 520
      Top = 26
      Width = 305
      Height = 21
      TabOrder = 4
      OnChange = fltClick
    end
    object adrf: TEdit
      Left = 120
      Top = 26
      Width = 305
      Height = 21
      TabOrder = 1
      OnChange = fltClick
    end
    object fnd_btn: TButton
      Left = 871
      Top = 50
      Width = 75
      Height = 21
      Caption = #1053#1072#1081#1090#1080
      TabOrder = 10
      OnClick = fnd_btnClick
    end
    object fot: TDateEdit
      Left = 868
      Top = 2
      Width = 90
      Height = 21
      DialogTitle = #1042#1074#1077#1076#1080#1090#1077' '#1076#1072#1090#1091
      NumGlyphs = 2
      TabOrder = 8
      OnChange = fltClick
    end
    object fdo: TDateEdit
      Left = 868
      Top = 25
      Width = 90
      Height = 21
      DialogTitle = #1042#1074#1077#1076#1080#1090#1077' '#1076#1072#1090#1091
      NumGlyphs = 2
      TabOrder = 9
      OnChange = fltClick
    end
    object vrachf: TComboBox
      Left = 688
      Top = 50
      Width = 137
      Height = 21
      AutoDropDown = True
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 7
    end
  end
  object cpbtn: TButton
    Left = 264
    Top = 2
    Width = 89
    Height = 17
    Caption = #1050#1086#1087#1080#1103' '#1079#1072#1087#1080#1089#1080
    TabOrder = 3
    OnClick = cpbtnClick
  end
  object ambulatoru: TDataSource
    DataSet = table
    Left = 585
    Top = 5
  end
  object connect: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=base.' +
      'mdb;Mode=ReadWrite;Extended Properties="";Persist Security Info=' +
      'False;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Je' +
      't OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:D' +
      'atabase Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet O' +
      'LEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password=' +
      '"";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Data' +
      'base=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLED' +
      'B:Compact Without Replica Repair=False;Jet OLEDB:SFP=False'
    ConnectOptions = coAsyncConnect
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    OnConnectComplete = connectConnectComplete
    Left = 961
    Top = 5
  end
  object dopds: TDataSource
    DataSet = dopt
    Left = 893
    Top = 475
  end
  object dopt: TADOTable
    Active = True
    Connection = connect
    CursorType = ctStatic
    AfterPost = sqlRefrAfterPost
    AfterDelete = sqlRefrAfterPost
    IndexFieldNames = 'id'
    MasterFields = 'nomer'
    MasterSource = ambulatoru
    TableName = 'dop'
    Left = 855
    Top = 475
    object doptid: TIntegerField
      FieldName = 'id'
      Visible = False
    end
    object doptprep: TWideStringField
      DisplayLabel = #1053#1077#1089#1090#1072#1085#1076#1072#1088#1090#1085#1099#1077' '#1084#1072#1085#1080#1087#1091#1083#1103#1094#1080#1080
      DisplayWidth = 32
      FieldName = 'prep'
      Size = 50
    end
    object doptst: TIntegerField
      DisplayLabel = #1057#1090#1086#1080#1084#1086#1089#1090#1100
      DisplayWidth = 9
      FieldName = 'st'
    end
    object doptnomer: TAutoIncField
      FieldName = 'nomer'
      ReadOnly = True
      Visible = False
    end
  end
  object DS: TDataSource
    DataSet = vact
    Left = 450
    Top = 6
  end
  object menu: TMainMenu
    Left = 418
    Top = 6
    object MenuItem1: TMenuItem
      Caption = #1054#1087#1077#1088#1072#1094#1080#1080
      object N5: TMenuItem
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1087#1080#1089#1082#1086#1074
        OnClick = N2Click
      end
      object N4: TMenuItem
        Caption = #1057#1087#1080#1089#1086#1082' '#1087#1088#1077#1087#1072#1088#1072#1090#1086#1074' '#1074#1072#1082#1094#1080#1085#1072#1094#1080#1080
        OnClick = N4Click
      end
      object MenuItem2: TMenuItem
        Caption = #1048#1085#1090#1077#1088#1074#1072#1083' '#1086#1087#1086#1074#1077#1097#1077#1085#1080#1103
        OnClick = MenuItem2Click
      end
    end
    object N3: TMenuItem
      Caption = #1053#1077#1087#1088#1086#1080#1085#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1085#1099#1077
      OnClick = N3Click
    end
    object N8: TMenuItem
      Caption = '?'
      object N9: TMenuItem
        Caption = #1057#1087#1088#1072#1074#1082#1072
        OnClick = N7Click
      end
    end
  end
  object tmr: TTimer
    Enabled = False
    Interval = 1
    OnTimer = tmrTimer
    Left = 386
    Top = 6
  end
  object dslec: TDataSource
    DataSet = lec_sv
    Left = 885
    Top = 305
  end
  object dsmn_sv: TDataSource
    DataSet = mn_sv
    Left = 883
    Top = 213
  end
  object prep: TADOTable
    Active = True
    Connection = connect
    CursorType = ctStatic
    TableName = 'prep'
    Left = 515
    Top = 16
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
      ReadOnly = True
    end
  end
  object prepds: TDataSource
    DataSet = prep
    Left = 515
    Top = 48
  end
  object mn_sv: TADOQuery
    Active = True
    Connection = connect
    CursorType = ctStatic
    AfterPost = sqlRefrAfterPost
    BeforeDelete = mn_svBeforeDelete
    Parameters = <>
    SQL.Strings = (
      
        'SELECT amb.nomer, mn_sv.nomer, mn_sv.id, mn_sv.id_mn, mn_sv.coun' +
        't, mn_op.name, mn_op.nomer'
      
        'FROM mn_op INNER JOIN (amb INNER JOIN mn_sv ON amb.nomer = mn_sv' +
        '.id) ON mn_op.nomer = mn_sv.id_mn'
      'WHERE amb.nomer=300 '
      'ORDER BY mn_op.name;')
    Left = 851
    Top = 213
    object mn_svmn_svnomer: TAutoIncField
      FieldName = 'mn_sv.nomer'
      ReadOnly = True
    end
    object mn_svambnomer: TAutoIncField
      FieldName = 'amb.nomer'
      ReadOnly = True
    end
    object mn_svid: TIntegerField
      FieldName = 'id'
    end
    object mn_svid_mn: TIntegerField
      FieldName = 'id_mn'
    end
    object mn_svcount: TIntegerField
      FieldName = 'count'
    end
    object mn_svname: TWideStringField
      FieldName = 'name'
      Size = 50
    end
    object mn_svmn_opnomer: TAutoIncField
      FieldName = 'mn_op.nomer'
      ReadOnly = True
    end
  end
  object lec_sv: TADOQuery
    Active = True
    Connection = connect
    CursorType = ctStatic
    AfterPost = sqlRefrAfterPost
    BeforeDelete = lec_svBeforeDelete
    Parameters = <>
    SQL.Strings = (
      
        'SELECT amb.nomer, lec_sv.nomer, lec_sv.id, lec_sv.id_lec, lec.na' +
        'me, lec_sv.doza, lec_sv.st'
      
        'FROM amb INNER JOIN (lec INNER JOIN lec_sv ON lec.nomer = lec_sv' +
        '.id_lec) ON amb.nomer = lec_sv.id'
      'WHERE amb.nomer=300'
      'ORDER BY lec.name;')
    Left = 853
    Top = 305
    object lec_svambnomer: TAutoIncField
      FieldName = 'amb.nomer'
      ReadOnly = True
    end
    object lec_svlec_svnomer: TAutoIncField
      FieldName = 'lec_sv.nomer'
      ReadOnly = True
    end
    object lec_svid: TIntegerField
      FieldName = 'id'
    end
    object lec_svid_lec: TIntegerField
      FieldName = 'id_lec'
    end
    object lec_svname: TWideStringField
      FieldName = 'name'
      Size = 50
    end
    object lec_svdoza: TFloatField
      FieldName = 'doza'
      DisplayFormat = '0.0###'
      Precision = 2
    end
    object lec_svst: TIntegerField
      FieldName = 'st'
    end
  end
  object sales_sv: TADOQuery
    Active = True
    Connection = connect
    CursorType = ctStatic
    AfterPost = sqlRefrAfterPost
    BeforeDelete = sales_svBeforeDelete
    Parameters = <>
    SQL.Strings = (
      
        'SELECT amb.nomer, sales_sv.nomer, sales_sv.id, sales_sv.id_sales' +
        ', sales.name, sales_sv.count, sales_sv.st'
      
        'FROM amb INNER JOIN (sales INNER JOIN sales_sv ON sales.nomer = ' +
        'sales_sv.id_sales) ON amb.nomer = sales_sv.id'
      'WHERE amb.nomer=300'
      'ORDER BY sales.name;')
    Left = 855
    Top = 358
    object sales_svambnomer: TAutoIncField
      FieldName = 'amb.nomer'
      ReadOnly = True
    end
    object sales_svsales_svnomer: TAutoIncField
      FieldName = 'sales_sv.nomer'
      ReadOnly = True
    end
    object sales_svid: TIntegerField
      FieldName = 'id'
    end
    object sales_svid_sales: TIntegerField
      FieldName = 'id_sales'
    end
    object sales_svname: TWideStringField
      FieldName = 'name'
      Size = 50
    end
    object sales_svcount: TIntegerField
      FieldName = 'count'
    end
    object sales_svst: TIntegerField
      FieldName = 'st'
    end
  end
  object salesds: TDataSource
    DataSet = sales_sv
    Left = 891
    Top = 358
  end
  object vsales_sv: TADOQuery
    Active = True
    Connection = connect
    CursorType = ctStatic
    AfterPost = vactRAfterPost
    BeforeDelete = vsales_svBeforeDelete
    Parameters = <>
    SQL.Strings = (
      
        'SELECT vac.nomer, vsales_sv.nomer, vsales_sv.id, vsales_sv.id_sa' +
        'les, vsales_sv.count, vsales_sv.st, sales.name'
      
        'FROM sales INNER JOIN (vac INNER JOIN vsales_sv ON vac.nomer = v' +
        'sales_sv.id) ON sales.nomer = vsales_sv.id_sales'
      'WHERE vac.nomer=10'
      'ORDER BY sales.name;')
    Left = 758
    Top = 363
    object vsales_svvacnomer: TAutoIncField
      FieldName = 'vac.nomer'
      ReadOnly = True
    end
    object vsales_svvsales_svnomer: TAutoIncField
      FieldName = 'vsales_sv.nomer'
      ReadOnly = True
    end
    object vsales_svid: TIntegerField
      FieldName = 'id'
    end
    object vsales_svid_sales: TIntegerField
      FieldName = 'id_sales'
    end
    object vsales_svcount: TIntegerField
      FieldName = 'count'
    end
    object vsales_svst: TIntegerField
      FieldName = 'st'
    end
    object vsales_svname: TWideStringField
      FieldName = 'name'
      Size = 50
    end
  end
  object vsalesds: TDataSource
    DataSet = vsales_sv
    Left = 789
    Top = 364
  end
  object vdopds: TDataSource
    DataSet = vdop
    Left = 786
    Top = 472
  end
  object vdop: TADOTable
    Active = True
    Connection = connect
    CursorType = ctStatic
    AfterPost = vactRAfterPost
    AfterDelete = vactRAfterPost
    IndexFieldNames = 'id'
    MasterFields = 'nomer'
    MasterSource = DS
    TableName = 'vdop'
    Left = 756
    Top = 472
    object vdopnomer: TAutoIncField
      FieldName = 'nomer'
      ReadOnly = True
    end
    object vdopid: TIntegerField
      FieldName = 'id'
    end
    object vdopdop: TWideStringField
      FieldName = 'dop'
      Size = 50
    end
    object vdopcount: TIntegerField
      FieldName = 'count'
    end
    object vdopst: TIntegerField
      FieldName = 'st'
    end
  end
  object table: TADOQuery
    Active = True
    Connection = connect
    CursorType = ctStatic
    AfterOpen = tableAfterScroll
    AfterInsert = tableAfterInsert
    BeforeDelete = tableBeforeDelete
    AfterScroll = tableAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from'
      '(SELECT top 100 * FROM view1 WHERE 1 order by date desc)'
      'order by date, nomer')
    Left = 617
    Top = 5
    object tablenomer: TAutoIncField
      FieldName = 'nomer'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tablenpp: TIntegerField
      FieldName = 'npp'
    end
    object tabledate: TDateTimeField
      FieldName = 'date'
      DisplayFormat = 'dd.mm.yy'
      EditMask = '!00/00/00;1;_'
    end
    object tablevladel: TWideStringField
      FieldName = 'vladel'
      Size = 100
    end
    object tableadr: TWideStringField
      FieldName = 'adr'
      Size = 150
    end
    object tablezver: TWideStringField
      FieldName = 'zver'
      Size = 100
    end
    object tabledop: TWideStringField
      DisplayWidth = 200
      FieldName = 'dop'
      Size = 200
    end
    object tabledz: TWideStringField
      FieldName = 'dz'
      Size = 100
    end
    object tablesum: TFloatField
      FieldName = 'sum'
      ReadOnly = True
    end
    object tablevrach_id: TIntegerField
      FieldName = 'vrach_id'
    end
    object tabledie: TBooleanField
      FieldName = 'die'
    end
    object tabledate_next: TDateTimeField
      FieldName = 'date_next'
      OnChange = tabledate_nextChange
      DisplayFormat = 'dd.mm.yy'
      EditMask = '!00/00/00;1;_'
    end
    object tablesend: TBooleanField
      FieldName = 'send'
    end
    object tablevrach: TStringField
      FieldKind = fkLookup
      FieldName = 'vrach'
      LookupDataSet = vrachi
      LookupKeyFields = 'id'
      LookupResultField = 'name'
      KeyFields = 'vrach_id'
      Size = 50
      Lookup = True
    end
  end
  object sv: TADOQuery
    Active = True
    Connection = connect
    CursorType = ctStatic
    AfterPost = sqlRefrAfterPost
    BeforeDelete = svBeforeDelete
    Parameters = <>
    SQL.Strings = (
      'SELECT oper.oper, sv.id_usl, sv.id_op '
      
        'FROM oper INNER JOIN (amb INNER JOIN sv ON amb.nomer = sv.id_usl' +
        ') ON oper.id = sv.id_op '
      'WHERE amb.nomer=300'
      'ORDER BY oper.oper')
    Left = 851
    Top = 128
    object svoper: TWideStringField
      FieldName = 'oper'
      Size = 50
    end
    object svid_usl: TIntegerField
      FieldName = 'id_usl'
    end
    object svid_op: TIntegerField
      FieldName = 'id_op'
    end
  end
  object dssv: TDataSource
    DataSet = sv
    Left = 884
    Top = 129
  end
  object vact: TADOQuery
    Active = True
    Connection = connect
    CursorType = ctStatic
    AfterOpen = vactAfterScroll
    AfterInsert = vactAfterInsert
    BeforeDelete = vactBeforeDelete
    AfterScroll = vactAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from ('
      'SELECT top 100 * FROM view2 WHERE 1 order by date desc)'
      'order by date, nomer')
    Left = 480
    Top = 6
    object vactnomer: TAutoIncField
      FieldName = 'nomer'
      ReadOnly = True
    end
    object vactnpp: TIntegerField
      FieldName = 'npp'
    end
    object vactdate: TDateTimeField
      FieldName = 'date'
      DisplayFormat = 'dd.mm.yy'
      EditMask = '!00/00/00;1;_'
    end
    object vactvlad: TWideStringField
      FieldName = 'vlad'
      Size = 255
    end
    object vactzver: TWideStringField
      FieldName = 'zver'
      Size = 255
    end
    object vactprep_id: TIntegerField
      FieldName = 'prep_id'
    end
    object vactdate_next: TDateTimeField
      FieldName = 'date_next'
      OnChange = vactdate_nextChange
      DisplayFormat = 'dd.mm.yy'
      EditMask = '!00/00/00;1;_'
    end
    object vactsend: TBooleanField
      FieldName = 'send'
    end
    object vactsum: TFloatField
      FieldName = 'sum'
      ReadOnly = True
    end
    object vactprep: TStringField
      FieldKind = fkLookup
      FieldName = 'prep'
      LookupDataSet = prep
      LookupKeyFields = 'id'
      LookupResultField = 'name'
      KeyFields = 'prep_id'
      Size = 50
      Lookup = True
    end
    object vactprep_st: TIntegerField
      FieldKind = fkLookup
      FieldName = 'prep_st'
      LookupDataSet = prep
      LookupKeyFields = 'id'
      LookupResultField = 'st'
      KeyFields = 'prep_id'
      Lookup = True
    end
    object vactdie: TBooleanField
      FieldName = 'die'
    end
    object vactvrach_id: TIntegerField
      FieldName = 'vrach_id'
    end
    object vactvrach: TStringField
      FieldKind = fkLookup
      FieldName = 'vrach'
      LookupDataSet = vrachi
      LookupKeyFields = 'id'
      LookupResultField = 'name'
      KeyFields = 'vrach_id'
      Lookup = True
    end
  end
  object vrachi: TADOTable
    Active = True
    Connection = connect
    CursorType = ctStatic
    TableName = 'vrachi'
    Left = 656
    Top = 16
    object vrachiid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object vrachiname: TWideStringField
      FieldName = 'name'
      Size = 50
    end
  end
  object vrachids: TDataSource
    DataSet = vrachi
    Left = 656
    Top = 48
  end
  object vmn_sv: TADOQuery
    Active = True
    Connection = connect
    CursorType = ctStatic
    AfterPost = vactRAfterPost
    BeforeDelete = vmn_svBeforeDelete
    Parameters = <>
    SQL.Strings = (
      
        'SELECT vac.nomer, vmn_sv.nomer, vmn_sv.id, vmn_sv.id_mn, vmn_sv.' +
        'count, mn_op.name, mn_op.nomer'
      
        'FROM mn_op INNER JOIN (vac INNER JOIN vmn_sv ON vac.nomer = vmn_' +
        'sv.id) ON mn_op.nomer = vmn_sv.id_mn'
      'WHERE vac.nomer=300 '
      'ORDER BY mn_op.name;')
    Left = 747
    Top = 213
    object IntegerField1: TIntegerField
      FieldName = 'id'
    end
    object IntegerField2: TIntegerField
      FieldName = 'id_mn'
    end
    object IntegerField3: TIntegerField
      FieldName = 'count'
    end
    object WideStringField1: TWideStringField
      FieldName = 'name'
      Size = 50
    end
    object vmn_svvacnomer: TAutoIncField
      FieldName = 'vac.nomer'
      ReadOnly = True
    end
    object vmn_svvmn_svnomer: TAutoIncField
      FieldName = 'vmn_sv.nomer'
      ReadOnly = True
    end
    object vmn_svmn_opnomer: TAutoIncField
      FieldName = 'mn_op.nomer'
      ReadOnly = True
    end
  end
  object dsvmn_sv: TDataSource
    DataSet = vmn_sv
    Left = 779
    Top = 213
  end
  object dsvsv: TDataSource
    DataSet = vsv
    Left = 780
    Top = 129
  end
  object vsv: TADOQuery
    Active = True
    Connection = connect
    CursorType = ctStatic
    AfterPost = vactRAfterPost
    BeforeDelete = vsvBeforeDelete
    Parameters = <>
    SQL.Strings = (
      'SELECT oper.oper, vsv.id_usl, vsv.id_op '
      
        'FROM oper INNER JOIN (vac INNER JOIN vsv ON vac.nomer = vsv.id_u' +
        'sl) ON oper.id = vsv.id_op '
      'WHERE vac.nomer=300'
      'ORDER BY oper.oper')
    Left = 747
    Top = 128
    object WideStringField2: TWideStringField
      FieldName = 'oper'
      Size = 50
    end
    object IntegerField4: TIntegerField
      FieldName = 'id_usl'
    end
    object IntegerField5: TIntegerField
      FieldName = 'id_op'
    end
  end
  object vlec_sv: TADOQuery
    Active = True
    Connection = connect
    CursorType = ctStatic
    AfterPost = vactRAfterPost
    BeforeDelete = vlec_svBeforeDelete
    Parameters = <>
    SQL.Strings = (
      
        'SELECT vac.nomer, vlec_sv.nomer, vlec_sv.id, vlec_sv.id_lec, lec' +
        '.name, vlec_sv.doza, vlec_sv.st'
      
        'FROM vac INNER JOIN (lec INNER JOIN vlec_sv ON lec.nomer = vlec_' +
        'sv.id_lec) ON vac.nomer = vlec_sv.id'
      'WHERE vac.nomer=300'
      'ORDER BY lec.name;')
    Left = 749
    Top = 305
    object IntegerField6: TIntegerField
      FieldName = 'id'
    end
    object IntegerField7: TIntegerField
      FieldName = 'id_lec'
    end
    object WideStringField3: TWideStringField
      FieldName = 'name'
      Size = 50
    end
    object IntegerField8: TIntegerField
      FieldName = 'st'
    end
    object vlec_svdoza: TFloatField
      FieldName = 'doza'
      DisplayFormat = '0.0###'
      Precision = 2
    end
    object vlec_svvacnomer: TAutoIncField
      FieldName = 'vac.nomer'
      ReadOnly = True
    end
    object vlec_svvlec_svnomer: TAutoIncField
      FieldName = 'vlec_sv.nomer'
      ReadOnly = True
    end
  end
  object dsvlec_sv: TDataSource
    DataSet = vlec_sv
    Left = 781
    Top = 305
  end
end
