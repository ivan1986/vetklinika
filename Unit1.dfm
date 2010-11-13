object Form1: TForm1
  Left = 108
  Top = 71
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
              Caption = '   '#1052#1085#1086#1075#1086#1082#1088'. '#1055#1086#1074#1090#1086#1088#1103#1077#1084#1099#1077' '#1084#1072#1085#1080#1087#1091#1083#1103#1094#1080#1080'      '#1050#1086#1083'-'#1074#1086
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
        object Shape1: TShape
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
        object Label1: TLabel
          Left = 5
          Top = 5
          Width = 11
          Height = 13
          Caption = #8470
          Transparent = True
        end
        object Label2: TLabel
          Left = 70
          Top = 5
          Width = 48
          Height = 13
          Caption = #1055#1086#1089#1090#1091#1087#1080#1083
          Transparent = True
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
          Left = 24
          Top = 5
          Width = 41
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
          Left = 496
          Top = 3
          Width = 55
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
          Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1074#1088#1072#1095#1072#1084
          TabOrder = 6
          OnClick = vr_otchClick
        end
        object ekg_btn: TButton
          Left = 280
          Top = 3
          Width = 39
          Height = 17
          Caption = #1069#1050#1043
          TabOrder = 7
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
        PanelHeight = 71
        PanelWidth = 676
        TabOrder = 0
        RowCount = 7
        OnExit = grd_vacExit
        OnKeyUp = CtrlGridKeyUp
        OnPaintPanel = gridPaintPanel
        object Shape2: TShape
          Left = 0
          Top = 0
          Width = 676
          Height = 60
          Align = alTop
          Pen.Mode = pmNop
        end
        object vacn: TDBText
          Left = 0
          Top = 10
          Width = 28
          Height = 15
          Alignment = taRightJustify
          DataField = 'npp'
          DataSource = DS
          Transparent = True
        end
        object Shape3: TShape
          Left = 0
          Top = 60
          Width = 676
          Height = 11
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
          Left = 24
          Top = 32
          Width = 35
          Height = 13
          Caption = #1054#1089#1054#1090#1084
          Transparent = True
        end
        object datevac: TDBEdit
          Left = 32
          Top = 6
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
          Left = 93
          Top = 6
          Width = 212
          Height = 48
          DataField = 'vlad'
          DataSource = DS
          TabOrder = 1
          OnKeyDown = editKeyDown
          OnKeyPress = editKeyPress
        end
        object zvervac: TDBMemo
          Left = 307
          Top = 6
          Width = 140
          Height = 48
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
          Left = 72
          Top = 32
          Width = 15
          Height = 15
          Alignment = taLeftJustify
          DataField = 'die'
          DataSource = DS
          TabOrder = 5
          ValueChecked = 'True'
          ValueUnchecked = 'False'
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
          Left = 307
          Top = 15
          Width = 104
          Height = 13
          Caption = #1044#1072#1085#1085#1099#1077' '#1086' '#1078#1080#1074#1086#1090#1085#1086#1084
        end
        object Label18: TLabel
          Left = 16
          Top = 15
          Width = 11
          Height = 13
          Caption = #8470
        end
        object Label19: TLabel
          Left = 40
          Top = 15
          Width = 26
          Height = 13
          Caption = #1044#1072#1090#1072
        end
        object Label20: TLabel
          Left = 104
          Top = 15
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
            ItemHeight = 0
            Sorted = True
            TabOrder = 0
          end
          object otch_btn: TButton
            Left = 564
            Top = 5
            Width = 75
            Height = 25
            Caption = #1054#1090#1095#1077#1090
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
        Left = 11
        Top = 56
        Width = 120
        Height = 119
        AutoSize = True
        Picture.Data = {
          0A544A504547496D616765B54E0000FFD8FFE000104A46494600010201019001
          900000FFE110244578696600004D4D002A000000080007011200030000000100
          010000011A00050000000100000062011B0005000000010000006A0128000300
          00000100020000013100020000001B0000007201320002000000140000008D87
          69000400000001000000A4000000D00000019000000001000001900000000141
          646F62652050686F746F73686F702043532057696E646F777300323030363A30
          353A30332031333A34333A3134000000000003A001000300000001FFFF0000A0
          0200040000000100000078A00300040000000100000077000000000000000601
          0300030000000100060000011A0005000000010000011E011B00050000000100
          00012601280003000000010002000002010004000000010000012E0202000400
          00000100000EEE0000000000000048000000010000004800000001FFD8FFE000
          104A46494600010201004800480000FFED000C41646F62655F434D0003FFEE00
          0E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B
          11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E
          0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080077007803012200
          021101031101FFDD00040008FFC4013F00000105010101010101000000000000
          00030001020405060708090A0B01000105010101010101000000000000000100
          02030405060708090A0B1000010401030204020507060805030C330100021103
          04211231054151611322718132061491A1B14223241552C16233347282D14307
          259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3
          D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
          37475767778797A7B7C7D7E7F711000202010204040304050607070605350100
          021103213112044151617122130532819114A1B14223C152D1F0332462E17282
          92435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2
          B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6
          E6F62737475767778797A7B7C7FFDA000C03010002110311003F00F5363195B1
          B5D6D0C63006B5AD10001A35AD6852492494A41CBB8D18D6DC06E3531CFDBC4E
          D1BBCD1941EC0F6969E1C083F3D1253E7AFF00AC3D7FA8F526E6E131CD157B59
          437DCC0D744EFF00A3BF7A2E653F5D72F21D7BD97570496D75BC06B7FA837F92
          A5D5B3ECE9FD56FA3A55DE96331E1A3681131EFE67F3F72957F5AFAE63B8837B
          320B4EA5D0F69F86DDA9291750EA5F58C9A7ED3EB5471B4ADC010678DCEB00F7
          58BB3FAA39B9799D35CFCDB0D97D761616B8439A001B77B7F79601FAE156562F
          A1D429692ED5AF66A1AE07D9BAB3FCA1BBE9AEA7EAFB9B674BA3225AEB2D64D9
          600017104EAE8494E9A49827494A4934A521252E924924A524924929FFD0F554
          9249252C99033B32AC3ABD4B039D3F458C12E240980B94EA1F5D339F9AFC3E9B
          4803E8B5D6349B01FCF7EC9F6B6BFE524A79FF00AD1D3CE0759C8ADA3F4761F5
          6B933A3B571FF3F7AA2C6621C7797D8E17CFB6B6B65A7FB6AD7591D42DCF7BB3
          AE17DFB752D2080D1DBD9EC6B550735848DB3112E3F0494C056E2E0D1A93A01C
          195E93F556F7370E9C3656ED94B3F4963C6D9713FE0FDCF6BABFCD5C0F4DA996
          6506D8DDF506BB779023DA7FCE5671FAAF55E8D926AA6F70141FE65C77308FA5
          B363BFAC929F43EA3D4AFC1B98F151BF1CB4FA8D6FD3691F9CDFDFFEA2CCCCFA
          ED875D6EFB3D163ED8F6EF1027CF577D154BEB175AFB574CC1BF19C1832C3BD6
          00FB9BB2373777F5CB9730F63B23DF556F738407B9A0903FAFA7B7DA929DBCBF
          AEFD52EAC32B0CC6EEE7D60B9C63F35BBF7B5AB53EAF757EA9985955CF2F6B2C
          2E7DC769739A47B6ADACFA2DDDFE1173193D36EC57DC58D7B9949D9EA01CE9EE
          3DD6B7D4FB29675214584343839F583A3BD410DFA5FF0016E7FB1253DD8E13A6
          4E9294924924A7FFD1F554924925381F5BDF4330E836989B76B7B492D77B4F1F
          9AB8EEAB8AE1FAFD166D70680F224177F83DEC77BBFA96B1741FE312DAFEC98B
          4CFE90D85E1BFC900B57319595934E263D6C7814E453EF60883A9DC5C3F7BDAC
          49493A297E675378C99B0D94BC3C01121ADDA3F77F35A9BAB74DAB1195E554F0
          1B6B8B3D213A06FE76E77E6394BEAA927AC57B849DAF07EEEEBA0FACF846CE98
          F7306B53C3AA03B071FD28494D5E9B86D1D3B14C346E1EA5AE201DCD25B69DDC
          6EFD1B3E8AC6FAC353064B2F6BC39D683EAC1DD0E07F787B7E81AD753F657D34
          BABAF6B9A6B6D60387315BAAEFF9BB9EB3BAEF4E6D5D2434BC6F696D95D2C6B4
          01A6DB1CDDB1EDFA3EF7A4A79FA9EFB2AAEA79D1A08AC1F0264C47F2DCBABC0E
          8B6B3A637F4A3249879C50F0CAC127DDEA39BBDD6BAB7FD058BD1198D935B713
          2B7EE0FF00521AC91B1A06EDCF6FE91ABA9AE9C9AB148C17D76D235158686BDC
          27DDEF7ED6FF00D04948723A564E7635CE75A30EBB24C34821C3F94D7167A5FC
          BF7AE42A9665B29689B4581AC0D20CBB73766D7EE5D9FACFB287BB77A18A5BA3
          2D6CD81A7DBB8CEEFF00B6DD5ACACF1774663723A7D35B71C3803EA343B71703
          B490EF7ECB27F9CDDFE0D253D5B3A88AD8C1975D955B0DDE3617093F49DBA9DE
          CDAAEB1CD7B43D8439AE00870D4107BAE5E8FACD86EC116598D7D4E7821EFA0C
          EBF409ACB8FD2FE4BD5DE9FF005930EC7578D60B584E8DB6D6B5A3530C6B831C
          EF77F2F6A4A77524D2924A7FFFD2F554C9D31494F05FE30ECDD9D8B503F42B24
          8ED2E3E7EDECB0729C0F4FC070D4B7D461078D0EE8FF00A6B5FF00C6007FED86
          13F44D4DDBE1DE563D9511D271EC7031EABC4F3A43125377EAC6364FED265F4D
          4FB6A66E12DF6EA47EFCAEBB2AD73FD2C7B2A7B0D8E1ACB4E8D97D8D7EA7E935
          72FF0054F34E2F5234DC4B69BDA5DB4CC0312D7FFE64BA9AFF004D936E612763
          81AEA0260807DCFDBFBCE724A6DB2A686C34491C1F2F92C4EACC1EA385F58DB6
          69B8C6A34F631EDFA2EFEBAD97BDAC6C8747C5617D61CDA6EA995556B5CF36B0
          BD835F603CFF009C9296FAA943313AA5CD69710F633420CFBDCF1EF23FABED5D
          232BA72B3B2996D401A4561B601B5D0E6EFF00E707BFFE92E77EA6B9E7AAF508
          6FB0B8B67B08739F1FF4975D9377A15EFDA5F2E6B6073EE3B65252038F8386CF
          59B48DCD8FD2402F249DBAD8EF739646763BFACBABAAFF00D1D2F978C7DA776E
          669EADD607B7757FE8D8CF7ADDC86B6EA2D6087482D8F3F35CFD391936F5BA30
          A97FA21B8C6C3EAB03DC35D9B7E9B7E96D494E6E774F3D3EE6D06C237406400E
          FA7F9E59ECFCE63BFD22AF7D2035F4561E6D65C030BDB0F35CFE6ECF53D4DDF9
          EBB07749A6E739D94F7DFBE03D84C321A416B5AC6FD1F72B956363D2D0DAAB6B
          00E2024A4780CB59874B2F936B58D0F24C998D75495949253FFFD3F554924925
          3CA7D7BE8F7E663559B435D63B1A43EB689F63BDDBFF007BDAB8EC7A3D6E9D6D
          75B4BEF16B218353077357AD158D8BD1706AEB1765D158ADAC680437469B0EE7
          D9B9BF4BE8B98929E5717A17D66C56875545721B0D2F0C71008DCE6B49FA3CAC
          CBBACF596D8E6597BEB78F6B9BF463FB2BD5A0442F3BFAF18CC67531752D30E6
          03611C483B5253857E766646975F65ADEE1EE2E1A7C52C3FE900833107890751
          C84005B104F0A74BB658D7F30E047C8CA4A7B6FA9EEB7F69E754D76D68B1D63D
          BC4832D6FF009AF5D81D5727F56ACA7F6DE510D731D7D6D2244027F9E3FF0041
          CBA9BB77A4ED9A3E0ED3E7D92521CEB6BA68758F2195306FB4F881F9A3F97FBA
          B23EAD5F5E664E7676DDB658E6B5ACFCD6D606DAB6BBF97F9EB3FEB96458CB71
          71DD6004B0BED330091F40398EDDEDFEC29FD4BBC9C8CAAF5DAE6B0864C86913
          FD5FA5B9253D7264C4C0989D380B171FEB5F4DBAF6D2FDD517BB6B5CE1A03D9B
          77FA2724A77124C12494FF00FFD4F5442BF22BC7ACD969DAD1E4493FD5637739
          C8BD966754B5F8B7D7961A088F483C9FA249DDEE9F6ED7FF0037FE9125247F54
          730CBB12FF004624DC034B40FDE735AE377FE07EA25D32FC7B6A2F658C75B638
          BDFB489D4ED66E649D9FA36D7ED51C1CF3786B6C70161E4C46B3F446AAC0A1AD
          973206BE0267FB2929339FB5A5C60B7B058BF62AFA8E3675994C6EDB41AAB2FD
          3686F2779FF84FD2EF57F35CFAF1DDB0EEB1F0D613FBCEF6B567FD640FC1FAB5
          6D78E5C3635B5CCC9DA4ED7C93FC9724A7CCDCD8796F30627E0ACE06065675ED
          C7C6ACBDCF204EB03F96FF00DD6B5018DDEED83F3B41DB52BD4BA1F46A7A774C
          65358DB7DB58375B10E2E23BFF00C5EE4948B17A59C2E9F51A887DF486BCDA01
          DCFDAD6B36FBBDDB363762B1D43AA55560B6DD40B9A49D386C6EF76EFA1EA7F3
          6C5670DE5F59AECD6DAA18F0444C7E7FF52CFA6D5CE7D6DDED696813B8B6B618
          1F423D47B7D859FE11ACFEDA4A703A866D9D4329F916B44BC00D6826031AD7FB
          7456FEAEBACAFABE3BD8F21C6458D2649616B76D7EEFCDDCB2773438B834C770
          39D41E35F72BFD3FA6750C8A6ECEC68FD49C1F2D2439C4004B6A13F9AD494FA4
          765CD75FFAB3458DBB371CB83F5B2DA4996BCFD2791FCBFE47D04DD23EB863DD
          5B6ACF9AAC6E8EB00F6E9FE95ADF756E72BFD47EB074BAB0ED2CBD96BCB4B5AC
          699249FA30929A5F54BADBF319F61B40DF4D61CC74924B41DAEF51CEFCFF0072
          4B3FEA363BCE76464B7F9A657E99D0825CF70B3F94DF6ECF724929FFD5F5542C
          8A597D2FA6CD58F05A7C75F099454C929E5BD2BA8B7ECB65916D42771D496C7B
          6C6C6DDDFD7FDF5A7D3BA812DF4B25DEF6FD1777708FCF8FA6AC753E97567D42
          4FA77D73E8DC3E9349FA4DFE55767F8462CC6F42EACD27F59A44E9018E88991B
          487B5E929BCC8CECE69DA3ECD89A83E361FA3FE633FE9ABB97663558D63F28B5
          B4069F50BF8829B131598B48AD9A99DCF71E5CE3F4DEEFEB2AFD6FA67ED5E9D6
          617A9E9179690F898DA67C9253E58F7319926CA0CB1AF9ABE00EF6AEDF17EBEE
          1FA1FAC52F1634004820C9FCE72ABFF8DCB8F39E27CAAFFCCD469FAA7474ECD1
          F6B77DA291E9C58E6ED67BDCF63FF7FDF56CDFBD253BF9196CBADC4C8AC39EDC
          8AC9A98D30E24EBA91EE6EC6FD2FDC4BAEE0E36574F6D79447DA341496805C5F
          FB8C6BFE937FAFFF0018846EC515D989B8DAD6B83711D503616180F1B5F537D8
          DA9FFCDFBD5F25ACB6BB32A3ED0F05B4D635D40DEF8D1BEE735A929E432BEAA7
          50A2D0CA59EB480EDC7683310E6EE3F4BE97D1FA6AE7D53C9C8C2EA0FE93754F
          A85A0DA2B7800B5C00F73768FCF5D3875B90E6B9CCF4EB690E6C905C4EBFBB2D
          FA3FCB51AB1E9B72DD9AE634D8C1E9D5673EDE5C43BFAE929ABD43EAD74ACFB3
          D6757E95D040B2BD0EA4BA4B3E83BDCEDCB307D44C6F5439F92F757DDA035A63
          F35BA35BF9BED5D5249290E362E3E25429C7ADB554DE18D10124649253FFD6F5
          5497CAA924A7EAA4CBE5649253F5524BE5549253F552859E9ED3EA46CEFBA23F
          E92F9612494FD4B57A1B7F43B76FF2223FE8AA5D4B0A8C8BAB7FDA7ECF92D6BD
          AC20B756BBF9DFD159F4BFAFF98BE6749253F4CB30DCEC67332328BE80041645
          6368FDF7B3F7BF3D5DA4522B68A76FA607B76EA217CB2924A7EAA497CAA924A7
          EAA497CAA924A7FFD9FFED144E50686F746F73686F7020332E30003842494D04
          040000000000071C020000020002003842494D0425000000000010460CF28926
          B856DAB09C01A1B0A790773842494D03ED000000000010019000000001000201
          900000000100023842494D042600000000000E000000000000000000003F8000
          003842494D040D0000000000040000001E3842494D0419000000000004000000
          1E3842494D03F3000000000009000000000000000001003842494D040A000000
          00000100003842494D271000000000000A000100000000000000023842494D03
          F4000000000012003500000001002D000000060000000000013842494D03F700
          000000001C0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800
          003842494D040800000000001000000001000002400000024000000000384249
          4D041E000000000004000000003842494D041A00000000033F00000006000000
          0000000000000000770000007800000005006C006F0067006F00620000000100
          0000000000000000000000000000000000000100000000000000000000007800
          0000770000000000000000000000000000000001000000000000000000000000
          0000000000000010000000010000000000006E756C6C0000000200000006626F
          756E64734F626A6300000001000000000000526374310000000400000000546F
          70206C6F6E6700000000000000004C6566746C6F6E6700000000000000004274
          6F6D6C6F6E670000007700000000526768746C6F6E670000007800000006736C
          69636573566C4C73000000014F626A6300000001000000000005736C69636500
          00001200000007736C69636549446C6F6E67000000000000000767726F757049
          446C6F6E6700000000000000066F726967696E656E756D0000000C45536C6963
          654F726967696E0000000D6175746F47656E6572617465640000000054797065
          656E756D0000000A45536C6963655479706500000000496D672000000006626F
          756E64734F626A6300000001000000000000526374310000000400000000546F
          70206C6F6E6700000000000000004C6566746C6F6E6700000000000000004274
          6F6D6C6F6E670000007700000000526768746C6F6E6700000078000000037572
          6C54455854000000010000000000006E756C6C54455854000000010000000000
          004D7367655445585400000001000000000006616C7454616754455854000000
          0100000000000E63656C6C54657874497348544D4C626F6F6C01000000086365
          6C6C546578745445585400000001000000000009686F727A416C69676E656E75
          6D0000000F45536C696365486F727A416C69676E0000000764656661756C7400
          00000976657274416C69676E656E756D0000000F45536C69636556657274416C
          69676E0000000764656661756C740000000B6267436F6C6F7254797065656E75
          6D0000001145536C6963654247436F6C6F7254797065000000004E6F6E650000
          0009746F704F75747365746C6F6E67000000000000000A6C6566744F75747365
          746C6F6E67000000000000000C626F74746F6D4F75747365746C6F6E67000000
          000000000B72696768744F75747365746C6F6E6700000000003842494D042800
          000000000C000000013FF00000000000003842494D0411000000000001010038
          42494D0414000000000004000000013842494D040C000000000F0A0000000100
          00007800000077000001680000A75800000EEE00180001FFD8FFE000104A4649
          4600010201004800480000FFED000C41646F62655F434D0003FFEE000E41646F
          626500648000000001FFDB0084000C08080809080C09090C110B0A0B11150F0C
          0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E
          0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108007700780301220002110103
          1101FFDD00040008FFC4013F0000010501010101010100000000000000030001
          020405060708090A0B0100010501010101010100000000000000010002030405
          060708090A0B1000010401030204020507060805030C33010002110304211231
          054151611322718132061491A1B14223241552C16233347282D14307259253F0
          E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3D375E3F3
          462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767
          778797A7B7C7D7E7F71100020201020404030405060707060535010002110321
          3112044151617122130532819114A1B14223C152D1F0332462E1728292435315
          637334F1250616A2B283072635C2D2449354A317644555367465E2F2B384C3D3
          75E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F62737
          475767778797A7B7C7FFDA000C03010002110311003F00F5363195B1B5D6D0C6
          3006B5AD10001A35AD6852492494A41CBB8D18D6DC06E3531CFDBC4ED1BBCD19
          41EC0F6969E1C083F3D1253E7AFF00AC3D7FA8F526E6E131CD157B59437DCC0D
          744EFF00A3BF7A2E653F5D72F21D7BD97570496D75BC06B7FA837F92A5D5B3EC
          E9FD56FA3A55DE96331E1A3681131EFE67F3F72957F5AFAE63B8837B320B4EA5
          D0F69F86DDA9291750EA5F58C9A7ED3EB5471B4ADC010678DCEB00F758BB3FAA
          39B9799D35CFCDB0D97D761616B8439A001B77B7F79601FAE156562FA1D42969
          2ED5AF66A1AE07D9BAB3FCA1BBE9AEA7EAFB9B674BA3225AEB2D64D960001710
          4EAE8494E9A49827494A4934A521252E924924A524924929FFD0F5549249252C
          99033B32AC3ABD4B039D3F458C12E240980B94EA1F5D339F9AFC3E9B4803E8B5
          D6349B01FCF7EC9F6B6BFE524A79FF00AD1D3CE0759C8ADA3F4761F56B933A3B
          571FF3F7AA2C6621C7797D8E17CFB6B6B65A7FB6AD7591D42DCF7BB3AE17DFB7
          52D2080D1DBD9EC6B550735848DB3112E3F0494C056E2E0D1A93A01C195E93F5
          56F7370E9C3656ED94B3F4963C6D9713FE0FDCF6BABFCD5C0F4DA9966506D8DD
          F506BB779023DA7FCE5671FAAF55E8D926AA6F70141FE65C77308FA5B363BFAC
          929F43EA3D4AFC1B98F151BF1CB4FA8D6FD3691F9CDFDFFEA2CCCCFAED875D6E
          FB3D163ED8F6EF1027CF577D154BEB175AFB574CC1BF19C1832C3BD600FB9BB2
          373777F5CB9730F63B23DF556F738407B9A0903FAFA7B7DA929DBCBFAEFD52EA
          C32B0CC6EEE7D60B9C63F35BBF7B5AB53EAF757EA9985955CF2F6B2C2E7DC769
          739A47B6ADACFA2DDDFE1173193D36EC57DC58D7B9949D9EA01CE9EE3DD6B7D4
          FB29675214584343839F583A3BD410DFA5FF0016E7FB1253DD8E13A64E929492
          4924A7FFD1F554924925381F5BDF4330E836989B76B7B492D77B4F1F9AB8EEAB
          8AE1FAFD166D70680F224177F83DEC77BBFA96B1741FE312DAFEC98B4CFE90D8
          5E1BFC900B57319595934E263D6C7814E453EF60883A9DC5C3F7BDAC49493A29
          7E675378C99B0D94BC3C01121ADDA3F77F35A9BAB74DAB1195E554F01B6B8B3D
          213A06FE76E77E6394BEAA927AC57B849DAF07EEEEBA0FACF846CE98F7306B53
          C3AA03B071FD28494D5E9B86D1D3B14C346E1EA5AE201DCD25B69DDC6EFD1B3E
          8AC6FAC353064B2F6BC39D683EAC1DD0E07F787B7E81AD753F657D34BABAF6B9
          A6B6D60387315BAAEFF9BB9EB3BAEF4E6D5D2434BC6F696D95D2C6B401A6DB1C
          DDB1EDFA3EF7A4A79FA9EFB2AAEA79D1A08AC1F0264C47F2DCBABC0E8B6B3A63
          7F4A3249879C50F0CAC127DDEA39BBDD6BAB7FD058BD1198D935B7132B7EE0FF
          00521AC91B1A06EDCF6FE91ABA9AE9C9AB148C17D76D235158686BDC27DDEF7E
          D6FF00D04948723A564E7635CE75A30EBB24C34821C3F94D7167A5FCBF7AE42A
          9665B29689B4581AC0D20CBB73766D7EE5D9FACFB287BB77A18A5BA32D6CD81A
          7DBB8CEEFF00B6DD5ACACF1774663723A7D35B71C3803EA343B71703B490EF7E
          CB27F9CDDFE0D253D5B3A88AD8C1975D955B0DDE3617093F49DBA9DECDAAEB1C
          D7B43D8439AE00870D4107BAE5E8FACD86EC116598D7D4E7821EFA0CEBF409AC
          B8FD2FE4BD5DE9FF005930EC7578D60B584E8DB6D6B5A3530C6B831CEF77F2F6
          A4A77524D2924A7FFFD2F554C9D31494F05FE30ECDD9D8B503F42B248ED2E3E7
          EDECB0729C0F4FC070D4B7D461078D0EE8FF00A6B5FF00C6007FED8613F44D4D
          DBE1DE563D9511D271EC7031EABC4F3A43125377EAC6364FED265F4D4FB6A66E
          12DF6EA47EFCAEBB2AD73FD2C7B2A7B0D8E1ACB4E8D97D8D7EA7E93572FF0054
          F34E2F5234DC4B69BDA5DB4CC0312D7FFE64BA9AFF004D936E61276381AEA026
          0807DCFDBFBCE724A6DB2A686C34491C1F2F92C4EACC1EA385F58DB669B8C6A3
          4F631EDFA2EFEBAD97BDAC6C8747C5617D61CDA6EA995556B5CF36B0BD835F60
          3CFF009C9296FAA943313AA5CD69710F633420CFBDCF1EF23FABED5D232BA72B
          3B2996D401A4561B601B5D0E6EFF00E707BFFE92E77EA6B9E7AAF5086FB0B8B6
          7B08739F1FF4975D9377A15EFDA5F2E6B6073EE3B65252038F8386CF59B48DCD
          8FD2402F249DBAD8EF739646763BFACBABAAFF00D1D2F978C7DA776E669EADD6
          07B7757FE8D8CF7ADDC86B6EA2D6087482D8F3F35CFD391936F5BA30A97FA21B
          8C6C3EAB03DC35D9B7E9B7E96D494E6E774F3D3EE6D06C237406400EFA7F9E59
          ECFCE63BFD22AF7D2035F4561E6D65C030BDB0F35CFE6ECF53D4DDF9EBB07749
          A6E739D94F7DFBE03D84C321A416B5AC6FD1F72B956363D2D0DAAB6B00E2024A
          4780CB59874B2F936B58D0F24C998D75495949253FFFD3F5549249253CA7D7BE
          8F7E663559B435D63B1A43EB689F63BDDBFF007BDAB8EC7A3D6E9D6D75B4BEF1
          6B218353077357AD158D8BD1706AEB1765D158ADAC680437469B0EE7D9B9BF4B
          E8B98929E5717A17D66C56875545721B0D2F0C71008DCE6B49FA3CACCBBACF59
          6D8E6597BEB78F6B9BF463FB2BD5A0442F3BFAF18CC67531752D30E603611C48
          3B5253857E766646975F65ADEE1EE2E1A7C52C3FE900833107890751C84005B1
          04F0A74BB658D7F30E047C8CA4A7B6FA9EEB7F69E754D76D68B1D63DBC4832D6
          FF009AF5D81D5727F56ACA7F6DE510D731D7D6D2244027F9E3FF0041CBA9BB77
          A4ED9A3E0ED3E7D92521CEB6BA68758F2195306FB4F881F9A3F97FBAB23EAD5F
          5E664E7676DDB658E6B5ACFCD6D606DAB6BBF97F9EB3FEB96458CB7171DD6004
          B0BED330091F40398EDDEDFEC29FD4BBC9C8CAAF5DAE6B0864C86913FD5FA5B9
          253D7264C4C0989D380B171FEB5F4DBAF6D2FDD517BB6B5CE1A03D9B77FA2724
          A77124C12494FF00FFD4F5442BF22BC7ACD969DAD1E4493FD5637739C8BD9667
          54B5F8B7D7961A088F483C9FA249DDEE9F6ED7FF0037FE9125247F54730CBB12
          FF004624DC034B40FDE735AE377FE07EA25D32FC7B6A2F658C75B638BDFB489D
          4ED66E649D9FA36D7ED51C1CF3786B6C70161E4C46B3F446AAC0A1AD973206BE
          0267FB2929339FB5A5C60B7B058BF62AFA8E3675994C6EDB41AAB2FD3686F277
          9FF84FD2EF57F35CFAF1DDB0EEB1F0D613FBCEF6B567FD640FC1FAB56D78E5C3
          635B5CCC9DA4ED7C93FC9724A7CCDCD8796F30627E0ACE06065675EDC7C6ACBD
          CF204EB03F96FF00DD6B5018DDEED83F3B41DB52BD4BA1F46A7A774C65358DB7
          DB58375B10E2E23BFF00C5EE4948B17A59C2E9F51A887DF486BCDA01DCFDAD6B
          36FBBDDB363762B1D43AA55560B6DD40B9A49D386C6EF76EFA1EA7F36C5670DE
          5F59AECD6DAA18F0444C7E7FF52CFA6D5CE7D6DDED696813B8B6B6181F423D47
          B7D859FE11ACFEDA4A703A866D9D4329F916B44BC00D6826031AD7FB7456FEAE
          BACAFABE3BD8F21C6458D2649616B76D7EEFCDDCB2773438B834C77039D41E35
          F72BFD3FA6750C8A6ECEC68FD49C1F2D2439C4004B6A13F9AD494FA4765CD75F
          FAB3458DBB371CB83F5B2DA4996BCFD2791FCBFE47D04DD23EB863DD5B6ACF9A
          AC6E8EB00F6E9FE95ADF756E72BFD47EB074BAB0ED2CBD96BCB4B5AC699249FA
          30929A5F54BADBF319F61B40DF4D61CC74924B41DAEF51CEFCFF00724B3FEA36
          3BCE76464B7F9A657E99D0825CF70B3F94DF6ECF724929FFD5F5542C8A597D2F
          A6CD58F05A7C75F099454C929E5BD2BA8B7ECB65916D42771D496C7B6C6C6DDD
          FD7FDF5A7D3BA812DF4B25DEF6FD1777708FCF8FA6AC753E97567D424FA77D73
          E8DC3E9349FA4DFE55767F8462CC6F42EACD27F59A44E9018E88991B487B5E92
          9BCC8CECE69DA3ECD89A83E361FA3FE633FE9ABB97663558D63F28B5B4069F50
          BF8829B131598B48AD9A99DCF71E5CE3F4DEEFEB2AFD6FA67ED5E9D6617A9E91
          79690F898DA67C9253E58F7319926CA0CB1AF9ABE00EF6AEDF17EBEE1FA1FAC5
          2F1634004820C9FCE72ABFF8DCB8F39E27CAAFFCCD469FAA7474ECD1F6B77DA2
          91E9C58E6ED67BDCF63FF7FDF56CDFBD253BF9196CBADC4C8AC39EDC8AC9A98D
          30E24EBA91EE6EC6FD2FDC4BAEE0E36574F6D79447DA341496805C5FFB8C6BFE
          937FAFFF0018846EC515D989B8DAD6B83711D503616180F1B5F537D8DA9FFCDF
          BD5F25ACB6BB32A3ED0F05B4D635D40DEF8D1BEE735A929E432BEAA750A2D0CA
          59EB480EDC7683310E6EE3F4BE97D1FA6AE7D53C9C8C2EA0FE93754FA85A0DA2
          B7800B5C00F73768FCF5D3875B90E6B9CCF4EB690E6C905C4EBFBB2DFA3FCB51
          AB1E9B72DD9AE634D8C1E9D5673EDE5C43BFAE929ABD43EAD74ACFB3D6757E95
          D040B2BD0EA4BA4B3E83BDCEDCB307D44C6F5439F92F757DDA035A63F35BA35B
          F9BED5D5249290E362E3E25429C7ADB554DE18D10124649253FFD6F55497CAA9
          24A7EAA4CBE5649253F5524BE5549253F552859E9ED3EA46CEFBA23FE92F9612
          494FD4B57A1B7F43B76FF2223FE8AA5D4B0A8C8BAB7FDA7ECF92D6BDAC20B756
          BBF9DFD159F4BFAFF98BE6749253F4CB30DCEC67332328BE800416456368FDF7
          B3F7BF3D5DA4522B68A76FA607B76EA217CB2924A7EAA497CAA924A7EAA497CA
          A924A7FFD93842494D042100000000005300000001010000000F00410064006F
          00620065002000500068006F0074006F00730068006F00700000001200410064
          006F00620065002000500068006F0074006F00730068006F0070002000430053
          00000001003842494D04060000000000070004000000010100FFE11805687474
          703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F003C3F78706163
          6B657420626567696E3D27EFBBBF272069643D2757354D304D7043656869487A
          7265537A4E54637A6B633964273F3E0A3C783A786D706D65746120786D6C6E73
          3A783D2761646F62653A6E733A6D6574612F2720783A786D70746B3D27584D50
          20746F6F6C6B697420332E302D32382C206672616D65776F726B20312E36273E
          0A3C7264663A52444620786D6C6E733A7264663D27687474703A2F2F7777772E
          77332E6F72672F313939392F30322F32322D7264662D73796E7461782D6E7323
          2720786D6C6E733A69583D27687474703A2F2F6E732E61646F62652E636F6D2F
          69582F312E302F273E0A0A203C7264663A4465736372697074696F6E20726466
          3A61626F75743D27757569643A30626165323366352D646138392D313164612D
          396364332D386638653330363833373566270A2020786D6C6E733A657869663D
          27687474703A2F2F6E732E61646F62652E636F6D2F657869662F312E302F273E
          0A20203C657869663A436F6C6F7253706163653E343239343936373239353C2F
          657869663A436F6C6F7253706163653E0A20203C657869663A506978656C5844
          696D656E73696F6E3E3132303C2F657869663A506978656C5844696D656E7369
          6F6E3E0A20203C657869663A506978656C5944696D656E73696F6E3E3131393C
          2F657869663A506978656C5944696D656E73696F6E3E0A203C2F7264663A4465
          736372697074696F6E3E0A0A203C7264663A4465736372697074696F6E207264
          663A61626F75743D27757569643A30626165323366352D646138392D31316461
          2D396364332D386638653330363833373566270A2020786D6C6E733A7064663D
          27687474703A2F2F6E732E61646F62652E636F6D2F7064662F312E332F273E0A
          203C2F7264663A4465736372697074696F6E3E0A0A203C7264663A4465736372
          697074696F6E207264663A61626F75743D27757569643A30626165323366352D
          646138392D313164612D396364332D386638653330363833373566270A202078
          6D6C6E733A70686F746F73686F703D27687474703A2F2F6E732E61646F62652E
          636F6D2F70686F746F73686F702F312E302F273E0A20203C70686F746F73686F
          703A486973746F72793E3C2F70686F746F73686F703A486973746F72793E0A20
          3C2F7264663A4465736372697074696F6E3E0A0A203C7264663A446573637269
          7074696F6E207264663A61626F75743D27757569643A30626165323366352D64
          6138392D313164612D396364332D386638653330363833373566270A2020786D
          6C6E733A746966663D27687474703A2F2F6E732E61646F62652E636F6D2F7469
          66662F312E302F273E0A20203C746966663A4F7269656E746174696F6E3E313C
          2F746966663A4F7269656E746174696F6E3E0A20203C746966663A585265736F
          6C7574696F6E3E3430302F313C2F746966663A585265736F6C7574696F6E3E0A
          20203C746966663A595265736F6C7574696F6E3E3430302F313C2F746966663A
          595265736F6C7574696F6E3E0A20203C746966663A5265736F6C7574696F6E55
          6E69743E323C2F746966663A5265736F6C7574696F6E556E69743E0A203C2F72
          64663A4465736372697074696F6E3E0A0A203C7264663A446573637269707469
          6F6E207264663A61626F75743D27757569643A30626165323366352D64613839
          2D313164612D396364332D386638653330363833373566270A2020786D6C6E73
          3A7861703D27687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E
          302F273E0A20203C7861703A437265617465446174653E323030362D30312D32
          355432303A31383A30322B30333A30303C2F7861703A43726561746544617465
          3E0A20203C7861703A4D6F64696679446174653E323030362D30352D30335431
          333A34333A31342B30333A30303C2F7861703A4D6F64696679446174653E0A20
          203C7861703A4D65746164617461446174653E323030362D30352D3033543133
          3A34333A31342B30333A30303C2F7861703A4D65746164617461446174653E0A
          20203C7861703A43726561746F72546F6F6C3E41646F62652050686F746F7368
          6F702043532057696E646F77733C2F7861703A43726561746F72546F6F6C3E0A
          203C2F7264663A4465736372697074696F6E3E0A0A203C7264663A4465736372
          697074696F6E207264663A61626F75743D27757569643A30626165323366352D
          646138392D313164612D396364332D386638653330363833373566270A202078
          6D6C6E733A7861704D4D3D27687474703A2F2F6E732E61646F62652E636F6D2F
          7861702F312E302F6D6D2F273E0A20203C7861704D4D3A446F63756D656E7449
          443E61646F62653A646F6369643A70686F746F73686F703A3530663832396265
          2D386464342D313164612D626164622D3835323131626238636332303C2F7861
          704D4D3A446F63756D656E7449443E0A203C2F7264663A446573637269707469
          6F6E3E0A0A203C7264663A4465736372697074696F6E207264663A61626F7574
          3D27757569643A30626165323366352D646138392D313164612D396364332D38
          6638653330363833373566270A2020786D6C6E733A64633D27687474703A2F2F
          7075726C2E6F72672F64632F656C656D656E74732F312E312F273E0A20203C64
          633A666F726D61743E696D6167652F6A7065673C2F64633A666F726D61743E0A
          203C2F7264663A4465736372697074696F6E3E0A0A3C2F7264663A5244463E0A
          3C2F783A786D706D6574613E0A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A3C3F787061636B657420656E643D2777273F3E
          FFEE000E41646F626500640000000000FFDB0043000604040405040605050609
          060506090B080606080B0C0A0A0B0A0A0C100C0C0C0C0C0C100C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0000B08007700780101
          1100FFDD0004000FFFC400D20000000701010101010000000000000000040503
          020601000708090A0B1000020103030204020607030402060273010203110400
          052112314151061361227181143291A10715B14223C152D1E1331662F0247282
          F12543345392A2B26373C235442793A3B33617546474C3D2E2082683090A1819
          84944546A4B456D355281AF2E3F3C4D4E4F465758595A5B5C5D5E5F566768696
          A6B6C6D6E6F637475767778797A7B7C7D7E7F738485868788898A8B8C8D8E8F8
          2939495969798999A9B9C9D9E9F92A3A4A5A6A7A8A9AAABACADAEAFAFFDA0008
          010100003F00F54E6CD84DE6DD75B41F2FDE6ACB0FD60DA20730F2E351C80EB4
          6F1CE25A4F9DBF32B52F32BEB5A5C0F702E0987EA677802024AC6375A71AFDBF
          87937C59579A77E74CD7326A130BF120AB0114A8AABB9255155B64DFE15556FF
          006584DACF9A7F3125D661BEB93776976A0436E228DA3057C1401C5CB7ED71FB
          59DEBF2EF55BBD53CA1617B7D71F59BD91585C3EC0ABAB105481D1850721926C
          D9B366CD9B3FFFD0F54E6CD80F53B2B4BCB19EDAF006B5950ACE0F429D483ED4
          CF334DE6BD674FD6AE2D342D4BEA9A68B875B46F8163081A884921B6E346AFC5
          FCD86569F9BBE74B3346B88AEC29E2ED3AFA809EE54A95FF0085C39D4BF36ACF
          56D3920BEB7583518D44B677A879C692907F67F60AA9A7DA6F8B3B468490AE91
          6D242107AD1472398D4286764156A0F86AC70C81CD94580EB9B90CBCD9B3FFD1
          F54E6CAA62571024D0490C9F625528D434D9850FEBCF23F99F459745F30DFE96
          C28B6D3158F9306FDD9358CD7FCA4E3CBE1C465834A3A6234771235F92795B08
          BE002B4D9FED1F1A603B7B4967B94B75DDDC81B11503BF52A3E103A332E7A97C
          89AA3DD69B1C11DBC91595A451431C93A98E5770BF1B1525B66D997FC9FDA6CD
          AE79BEEB43D4E5FAD59BDD696515C4B6E394B1B746057ECB8E8D5E4BC7FCAC8C
          6BBF9DF630C0CBA4D8CB25C06015AE578A015DC90A6BEDF6978E44356FCE7F34
          EA0D125BBC7A64629536E393B13B12CD2060114FF2FF00B26C9EFE5DF997CC5A
          C476BF5E63E8DBA3C734A78334F2311C59F86D1FA601DBF6BFC9F879744CD9B3
          FFD2F54E6C28D7BCC367A3AC6678E699DB711409CDB8D402D4F05AFECFC59CA2
          E7F383CD7AD6AD3699E5F821B58DA42B15D48BCA48D01A7394B1F49391F87E2F
          857398EBE9A9CDABDECFA8DCFD6AED983DD4EA790A93D3C011FB2BFB3F67ECE1
          6CB1445D992A220012687627B53E786FE59D362BF7BB8A68BD40D088E27E9C66
          661C37EC7A8FDAC33F2CFE61F9A3CB5A946A6F1EE6D2DE4115C594CE5D0A29E2
          42D7914E34F8597FE07F6726BF9B5E67FACDD580B0981D3EEACD2F1F81218966
          2155B8F51403E1FE6C80DB69526ABA95B2C114AB15D4CB14F74AAC625E6D426A
          471AD4FD9E58A5D68D79648D318255B696568B981B1556A7F94BD47FC6D9D23F
          246EACCDCDCD93B2ACF0441ACE3FB2FC6463EB57F9F748FF0067E1FF00659D83
          BE5E6CFFD3F54E6CE65F9B53D947A8E9092C9C2E2559843D69446424EC57753C
          5BFCAFB39C9BCCBA7DCE9D78757D3E6114774EBCE3526A59FE30C3ED2C90C854
          B7FADF032FC3CB17F23DBA6AD2EB63505F5CCB12CD296D979996A59A9C68391F
          D9C2EF35E85168B736F2433724BE8DA6F44820C7BECAD5EBD796747B4D212C6D
          AC8A2C5125A4119939711CA40AC0313F0FC7EACB1B736FB3F6B398F9CACA0B5D
          6DCDBCAB2C73AACA4A1AD1C8A4809E9532073F0FC3FCB8A43F59D41A189D835C
          048E3895CD3E15D906C694A0FB5FB39D72CBCA771A6699612A5C8D623B464916
          3F5047042A0543A449CBD4969F0FC527165F8BED621E64F26EA57BE5F9A69EF1
          2C238EB3AD8075313D3700C8E63F4C37F2FC5C5B39E79427B91E68D3934F89A4
          D4126060894A1A940DC8125A8452BFE4E7A23FC4B631388EE927B57AD1FD585F
          826D5AB4AA1A20BFE572E387029D8E5E7FFFD4F54E639C1BFE7216F207D734A8
          51C99ADE1769129B00ECA54FBF4390AF33EA5A94527E8DF581B29628268EDD38
          9556E008E34E879966F870FF00F261B9EB57DCD4306B701ABD3EDF43924FCC5F
          2E9BAFD0C42D585E25AB30D80B724507F310A70D352D36E1EDAEED54472C5752
          31E32AEC55A48C82C0F5DA23FECB223F9A1A1C76DA759F19FD6B9B676510A222
          7A7149B85A47C683906E3FB4DFE5627E4CB5D1B55B6B5875169566D3D5DE7611
          1F4C076212AE8397C2D4FB5C95BEC71F873A2491EA967A6C4D198EF74A840696
          DED2311DC1869F6872FB6FD7E18D55B11BB2F7960D16A53470E9D3B2A7A05034
          AAAFF1042DF15797F371565FE6E6BCB227ACEA3AA7932EA07B0B0B78F4B919A3
          8E09A2E4FF000F1E6091FBD8DD400CBF1372F539E49E4FCC7D0DB4A839E9FA8D
          88B8546E569C5CD4D1A80B1E2E9CB92B7C3CBF9D155B245E5BFCC2D2B54B98EC
          1D67B7BB202ABDC46B1895E9521551E4E07FC96FF57ED64B41AE7FFFD5F54E53
          1A679ABF3BEE0DC79EE7452488208A3E2410015049A57E7FB3841E6574926D32
          61F12CD61086661D38D6334AF1DD78F15C94FE51E9FAAC3A8DC5E47653CF6B24
          2638A45A46A68DB9A93BE749BD9FEB9A9DAD95C41343C394CF5319528004018A
          96F895C86FF5B0E560022E4880C83726B4E5FF001AE73BF33DA4324D2DB5EDB8
          4321E5C800247353431B0F85957ED716F8B97D8C34FC9AB58F4E9752B2576753
          32A7D9206D0AC9B91F0F3DF8B2FF00C0E4D74DB1B0D55B5196E2D843347792DB
          FAB10F464658A8012E9C58F2AFF33609BA8F48D0ADFEB56D608B2B5553D14547
          76E25A85BBF2A7DAF8B221ABF9765F35EA09F5F938AC1189ED2D5622BF5732D0
          1331E7FBC99A9FB3F0AF1F8D78E462EF44163ABAE8F35CC91976110F48095963
          4F8E8BFDDD1D9187D95F85BEDB36018ED6EAE24D363B08E45D49677593E031CC
          282915427A9445DBE3FE6F89FF009B3BDC0ACB12AB6EEAA0127B9033FFD6F54E
          5367973F37D66FF1FEA7EA57E265295FE5E2294C2BD66DDA1B0D0E591490F6CC
          2BD54912B50541C9CFE4DEBC6C2E6FB4CD42468D235134424AFC0D5151EDCAB5
          FDAE593ED2A12CD717F3D435FB2BC71924858C578803B7C3F6BF69BEDBE18DC5
          CC5000C641C06E791A6DD739FF009C357B5BDD67488EDAE12758A791AE235352
          A787EEF7FB3F154FFCD5F12E1AFE40C9336917DC90FA6F30657A6DF0288E80F6
          E2A3ECFF009B750BCBDFABCD6B17A6CFF5997D3E4BD13E12D53EDB71C05AF471
          DD68F3328F595409004342781A9A1AAEFB1E3F17DAC88797AF354D4FCE5AC59D
          BDC8B68AC21B70566856494FA80BF12792AFC353F1716F8BFD5E39261E4FD2E6
          90BEA064BE67904CC276E49EA0040214740A3E155E5C78FF00AB8756F65676E8
          AB04291AA0E2A1540A0F0C5F3FFFD7F54E639C3FF3E7C9D7F25EC1E62B58E4B8
          80C620BB545A88B81F81B6F8A8D53C9B8F15FF00659CF60D267D5343D32DF4D8
          1AE2F8DCC91BA28AD2A148AFEC81FEB64AADFCA5F99FA35A4D2C16500E094797
          84324A638E9450C7AF1A7C2B9159BCEBE6D2EEAFA94D196279F1628548EC3BAE
          14DEEAFA9DFB0379772DCA82581998B807C77EF861E501FEE5E12A6BC6540070
          E60835DFD8FF002E764FC8A96E5B49BB87D5FDC5ACAEAD0EDF6DD8306FF80F87
          F67FE69EA4C056A69B78E11F9AB55B3D274E7BDBAE22D2004984D07AAEDF642F
          8EFF006BFC9E584FF958F1DC68D75A815A5EDF5DCB2DE291B2331A8456EA5152
          9C7FE35FB3936CC0D7367FFFD0F54E6C4A78A39A368A450E8E0ABA36E0AB6C41
          1E1912F28794346D3353D4AFF4F84416F2CBE95B44A47A6151551E8BF681F543
          FDAC973A21421802BDC52BF86797FF003534D8AD7CE17D25B215B59595B9F552
          EEB534F6DBF6B222AD1841C9A8C36DB0CBCB574B69ADD8DC15AF19958D286A3A
          6C3C7739DD7F281ED22B9D7AD624789DAEB988DD4A8A20F4D883FEBFECB6740D
          405C9B722D5824E4AF163B81B8AD477DB38BFE6CEA6E7CD9F54F514C36F0C6CF
          1171C1E57A54157F528DC69C7E1565FF002B964B3F266F1A4D27508793384B92
          E80B73E01940E15FF269FCBFF04D93DD46F92C6C6E2F1D1E44B78DA564887272
          1054F11DCD3B646741FCCAF2FEAD7D1D82B34177372F4390FDDB907EC87E9EA5
          3F61B2600D73FFD1F549D8601D4354B5B04579D882E42C71A2B48EC6B4D91033
          5371F17D95FDAC29BCF3549024C6E74CBCB4B74534BD744922048F87685E47F8
          891FB3C7F99957E2C1BE5E9B4F3A6402DE78646E3CE730C8B22FA8FF001C9B82
          DFB65B055E5C986D6490D1B62514547CB7EDFEB673DF31797ADB54FCBED56FAF
          9234BB9F95E413483D3641103E92EFFB6ABC93FCAE7FE5679DE84935F993DF0F
          FCA9E55D57CC17F1DB5A465610794D764318E151B962477207C2BF69BF673D16
          DA60D0EDADAF6DD7FDE52DF5B2AACCD32C84991E4FDAAF23CFF9B9637CEDE6D8
          34BB153C4B1E027284501208E1193F691D890FC78F2E28F9C3756BEB8D46FAEE
          FAE473B9B891E690A31A56B185029B0E3F657F67FD6C99FE51CB71079A6548E7
          2D1CD0B2DDC45B917915CF1625B7F841F87E2FE65CEDC45450E71FFCC0FCB8B4
          D22C65D6B4B793EAF6E7D47B3663FBB35D9E27FB5556F8BE2E5E9AFD8E392CFC
          B5F394BE63D3A78EE1505DD918D6468CB1564753C0D5B7E7F09E59FFD2F549E9
          910D7F50B9D1F567B88A24E77D1AAC570E4915894FEEC86E3F1357D4558DBE2E
          1F1AFED619691AB25FA7A6D203294152050BEDBD37E27AE098EC9624062648D4
          FD82A8ABC7C7EC8E38035E89E6B68F4E424B5FC82266E5C58C6779687E26AF0A
          FF00AB911FCF5B9B9B4F265B5B5B3B2C134E90CFBD7946A84807F68EEAADFF00
          1B6706D2AC24D46FE1B186AD25C48A918EF563E1DF3D55A7F95AD348F2F1D2B4
          9E36CE101F5F8EEF2802AF201C6A5A9F160FD3AE62BEB412153C892B2C5201C9
          19762AC29D573907E6A4932DE2A10599E57777A01CA382822DD0AAFD96938F25
          6E2B9015755760ABC4392A362029AAFC445774E9FEC7245A3E89E66B3D1D3CE3
          603F77673BA2AC7C9A4752482E56BBC6AC78F1F8BF9B8B27C2BD33CAFF009B7A
          1EA704635371633D007949AC0CDD38F21F61FF006995BE15FE76F85B1BF981E7
          9F2D9F2CDE5A5B5E25D5CDDAFA2B1447930AF534F051F1530B7F22B4E9E2B0D5
          6F8902DAE648A18542B29FDC2B55B72D50DEA0DD5BED67FFD3F54E15F9834A4D
          574A9ECD8F1775AC522D032BAEE84121A9F177FE5C802B5E472CB119CC379680
          A4B4F85D5B6DC7ECA0928195B8FD9FF65C65BA379822B8B6297E78DD44089142
          ECC2BD4A8FDAFF0085FE4CBD1D0EA9AC4BAB4B1A8B7B506DAC083524FF00BB5E
          A3FCAF857FC9C7F9EEE74583CABA8FE9778D2D2485E31EA0AD5CA9E014776E54
          E39E60D1752974AD62D351B725A5B695654E950136A1F7A1CEE565F9EFE5D961
          88CF673C2EEE23E20AB903C4D0D7FE6EC91DEDC3B798CC7006967B982368155B
          8AA2F792429F170AFC3FE57D8FDAC03F989E57D2F5B4B480BF1D6E46E36E630A
          5D976E4581E88ABF173FB4BF611BE2CE73A97E57F98AD2EE686D6CFEB7145C88
          61E9ABBA1F63B39F84FD9FB3F65FF6725FF93BACDD817BE59BA8648D74F5F563
          8E650AE8B231AA1A0DC7ED7C5F17ECE1DEB7F94FE53D4E692E6380D8DCC80079
          2DC00A400053D221907C229F0AE12E9FF91FA4C37EB717F7B25EC2AC19A02A88
          AEC0D486A01F03507255CE936B6D6F6B025BDBC4B0C310E31C5180AAA3C001D0
          67FFD4F54E51151D7237E68F2843ABB2DE5B32DAEAB15116E2878C91835F4A60
          3EDA57E25FDA56FB0CBC9B08ECFC8DE688E4512EA90042C1A4F4E175714DAB1B
          F2DBE1FB3EA2B2F2FD9E1F0E4E2C6C2DEC6D62B5B6411C10AF14415D86473F30
          FC90DE6ED260B25BA168F04C260E57983F091422ABE3900FFA173726A75EA1F1
          16D4FF009998FD07F2D749D0B5B78B5829731FAC628EEEE13D28CA881650EBF6
          953E36F49B937C5F653F6B2630EA105C4705B2BC973A9C170C2C6EE35692B1C4
          F41EA4E8BE9FEF12AAFC99BE1F8F8E1DACD6D6B7CCD7149757962F544286B485
          1802109E2B4566FB4DC59BFD45C1111B9B8985D5CC6B6C9106F490B55F8B0152
          C47C23E21FB2CDF0FF00AD8CD274DB417773AB18112F6F58079800498D368E8D
          DD597E2FF6586F9B367FFFD5F54E6CD9541979B3607BB167E89FADFA7E8D7FDD
          DC78FF00C363ADC5B7A7FB8E1E9D7F6294AFFB1C8D6B9A0E9F77AAC9730EABF5
          1BE68512E63063706157E4BFBB7354F8BF6D7ED2F24FDAC192692B25986D6F50
          F5608E40F4522DE0201A2AB85D996BBFC5FB78771FA5C17D3A70A7C3C7A5314C
          D9B3FFD9}
      end
      object amtel3: TLabel
        Left = 268
        Top = 144
        Width = 93
        Height = 15
        Caption = '8-910-743-76-56'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = True
      end
      object amtel2: TLabel
        Left = 311
        Top = 130
        Width = 50
        Height = 15
        Caption = '22-66-97'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = True
      end
      object amtel1: TLabel
        Left = 281
        Top = 116
        Width = 81
        Height = 15
        Caption = #1090#1077#1083'. 26-08-01'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = True
      end
      object fname2: TLabel
        Left = 148
        Top = 62
        Width = 224
        Height = 19
        Caption = #1044#1086#1082#1090#1086#1088#1072'   '#1057#1086#1089#1085#1086#1074#1089#1082#1086#1075#1086' '#1070'.'#1042'.'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object fname1: TLabel
        Left = 144
        Top = 32
        Width = 223
        Height = 22
        Caption = #1042#1077#1090#1077#1088#1080#1085#1072#1088#1085#1099#1081' '#1082#1072#1073#1080#1085#1077#1090
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object podp1: TLabel
        Left = 164
        Top = 270
        Width = 178
        Height = 13
        Caption = #1091#1083'. '#1055#1088#1086#1092#1089#1086#1102#1079#1086#1074', 24,   '#1090#1077#1083'. 26-08-01'
      end
      object podp2: TLabel
        Left = 162
        Top = 288
        Width = 177
        Height = 13
        Caption = #1088#1072#1073'. 22-66-97           8-910-743-76-56'
      end
      object logo_s: TImage
        Left = 14
        Top = 204
        Width = 107
        Height = 102
        AutoSize = True
        Picture.Data = {
          0A544A504547496D616765BD420000FFD8FFE000104A46494600010201004400
          440000FFE10C8A4578696600004D4D002A000000080007011200030000000100
          010000011A00050000000100000062011B0005000000010000006A0128000300
          00000100020000013100020000001B0000007201320002000000140000008D87
          69000400000001000000A4000000D00000004400000001000000440000000141
          646F62652050686F746F73686F702043532057696E646F777300323030363A30
          353A30332031333A34333A3133000000000003A001000300000001FFFF0000A0
          020004000000010000006BA00300040000000100000066000000000000000601
          0300030000000100060000011A0005000000010000011E011B00050000000100
          00012601280003000000010002000002010004000000010000012E0202000400
          00000100000B540000000000000048000000010000004800000001FFD8FFE000
          104A46494600010201004800480000FFED000C41646F62655F434D0003FFEE00
          0E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B
          11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E
          0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080066006B03012200
          021101031101FFDD00040007FFC4013F00000105010101010101000000000000
          00030001020405060708090A0B01000105010101010101000000000000000100
          02030405060708090A0B1000010401030204020507060805030C330100021103
          04211231054151611322718132061491A1B14223241552C16233347282D14307
          259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3
          D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
          37475767778797A7B7C7D7E7F711000202010204040304050607070605350100
          021103213112044151617122130532819114A1B14223C152D1F0332462E17282
          92435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2
          B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6
          E6F62737475767778797A7B7C7FFDA000C03010002110311003F00F5363195B1
          B5D6D0C63006B5AD10001A35AD6852492494A557A9667D8706ECBD86DF45BBB6
          0313AC2B4877FA7E8BFD51BABDA4BC113223DC929E430FAD7D69CB7DD6E2D22C
          65E09AC3A22BFCDFD1496FFD2FA69372FEBA62173ED63AF0F046D218E009FCE6
          FA3EE5827A9E40C8B1D4E45B4D24B9D5B5848004EE6D7B01DAD56B1FEB3F56C7
          7B43AFDECE4B5CD0EF96EFA6929D7FAB1D5FACDBD4462E7D8E349DE3F4AD83BC
          0DDE9B5F1F4BF90BB05CC7D56EAE3A8E7649733D279ADAE731BF449061D60FF3
          974E9294924924A5249249294924924A7FFFD0F554924925290EEB69A6B2FB9E
          DAEB1CB9E406EBE25CAAF57C9B71709D6D53BA40911A4FE77BBDAB83CBBE7AB9
          BBA9B9D731F0E04C6A386EE0CFCD67FC1A4A6967B71D9D4321B8CE16522C77A4
          5BC113EDF0F6A1DD6B2E7022B6D50236B0100F99DE4AB6CC4764D76E4E2B406D
          766D0CE21A44B76CFB9031711F9590CC66FB1EF241DC38EF2929D4FAB5975F4F
          CA6BAFB46336F68DCF7349964F15BDBBB6EE7FD2F62ED7A86434607DAA8BC318
          D87B6E690E696FE3BD8E5C2F52C3F4FA7D6F69DC693B675D1BA4CFFD71E9B13A
          ABDBD16EE98EF7075AD7D466368077D91FDA6A4A74B37EB6F54359ADA6B6078D
          2D635C0FC65CF76C72C9C8EA19D9647DAEE7DCD60801C7B7F259ED6FA8E46C1C
          1395517B8BFD8E1B4001AC8F1B6D7FF9AC63158EAB87551BACA8BDD63AD713B0
          4B36927F3FF376B5253D3FD5A7D96E08B6C717B886B439D1F45BF419EDF6FB16
          C2E5BEA775033674F7B401ADAC78F1F687B0FF00D5AEA525292492494FFFD1F5
          54924925385F5CAEB69E8E1D59826E6027CBDC755C8E7E632DC5657635C6D735
          B687E806B3BDBAFBBE8FEEADFF00AFF6918B8948FCF7B9D1FD51B7FEFEB98CB8
          75386E999A76F3C16B9CD494EBFD57A5B76365375043D8E0077807DBFDA536E2
          D8CFAC1936C6F8AFD50489FA7B5ADF6FF253FD5026A65FB9AEDAE2D821AE7031
          3F9CD1F9CB6AA6577E55B7B7B06D67420E9EE74CFEEA4A73F271ADCA36D15EEF
          48D7B480D0209DDF4AC71FA3B9ADFD1B1AB9CE9D8A6E7DB50F6DF5805BA88241
          DBB755D9F501E8D04337343B973743038F7C3B62E7B0F06A6757A9EFDAEA5CE2
          EDAE0041037FF69253B78AF18B803172D9B9AD80D3B07A4D93ED71B0FF002D4F
          249BF0ACC2C56346EF697ED06B3D9CF99F72B431297645B8D538B36301737E93
          4FA9BBF35FEEFCCFDE52B30F1312A0EBDCE7B1BC57AED968E195D7B7DACFDD49
          4F39D2474DC0CE2CB6D3F698DAD7D8DFD1020FD2ADCCF7FEEFF9EBA6C6CCA196
          96BB218F644EE36B5DFF0041DEE6B7F95BBF3D6267747BF3724E535A1BE800D6
          D40EE3026C6CBBDBEFFF0083FCC543D0ADCFDF67A6D05C2BB1C06B2E93ED86B9
          AD6B1BB7F90F494F76082010641D4109D637D59BAF7E2DB5DBAB2AB0B6B279E4
          92D3AAD8494FFFD2F5549249253C77F8C1DF3847F322CFBFD8B9BB5B18788E3A
          CFA839075990177BF59BA33FAAE06CA7FA45277D409807B3987FB2B8CC4E9793
          9958C1657B322BB8FA9BB486C449FED24A767EACF507B302FC6BA4DB49DB5B4F
          F281F62DAC7ABD1AC35EE2E78D5EF3AEA4FD25CFDFD0BAE616239D4E54B5BA96
          306D247F588FFBF2E79F9994F10EB9E7B01B8FCFBA4A7B9CDEA38B5D6F659730
          3A0E848267FAAB0BA23AC7756C41B4BC0A8970E44B8BDAEFFAA5CECC9974933A
          9FF6AE8FA2EFFDA98704C5949008D6435E6DEDF9BEC494F656D82A1BC37739C5
          AD24403A9DBFF47720E739AFC62F6C9D8F074E7430EDBC2B2B2BAD7516625476
          906E1A57573A98FD2583F76B494CFA33EFCC665BDCF0C60BDF5086FBBDA1A0BF
          74EDEFFBAAED1D2B068797B6B9710012E333036EACFE6F77F6143A1B58DE938C
          19C6CD7599749F50CFF29EAFA4A62D6B58D0D600D68D001A04E9D2494FFFD3F5
          549242C8BBD1AF7C4C90DD4C726125255519530E55D79643FDB58710350D13ED
          77FD7103D43690EAF29E5CD047B40DA4FF002AB737DDB7FAE963DB7D4D2CBB6F
          24CB1AE1C9932D77F29CE4949F26C6B6979E401AF879AF39EB1D332BA7E435D7
          3619912FA9C38227C977D78F5F650D040B1DEE0D8063F38FBBE97F2D73FF005F
          32699C5C16B3DF58F50BBC1A7F46C6B7FADB7FE824A793DD26621749F57DD73B
          ECD900035E217B6C24196871D9CFF56C7B965746E8F7755C9F4987656D836D87
          B03FF7E5DBF4DE9F898D41C4A9BA544B5EE2352603B7B9D0EF77B92537B21CD1
          4BF71F691AC7FBD71FF583205BD50EC32DA1ADAC3BC08873DDC3FF007FDEB5BA
          CE45D8786290E9358D0F1ABA7D36C96FBB6B3DFF00F195AE5E449DDD8C9333DD
          93DF724A7B3FAA99355BD2DB4B0FBE87383DBE01C4D8C77F55DB958EB5999D85
          437231582C6349F581697103B3FDA7F9B6FF0084585F54BA8D155D6E3DA763AF
          0D35BBF3491EDD9FD75D724A737A27586F53C725CDD97D702C68076999DB655B
          BF31FB569AE47A90FB0FD6AC738E760BDF56E03C6C7FA56003F96D5D6A4A7FFF
          D4F5543BAA65D53EA7896BC41F9A224929E781BF16E75707D4ADC63F94DFCD7F
          F6FF00D7F9B57F1F206455B9BED70FA434307FEFE89D4B01D94D0FA5FE9E4560
          EC27E8B81E6BB47EEFFE7B59F4F4FEA7BFDF5318D2402EDE0903C76ED494E861
          0365F65BA1637D8C31ACF361DDFE6AE7BEBD74D6455D49AE21E48A1EDEC47B9E
          C72EB2AADB556DADBA868893C9F3D173BF597A0754EAB995D98F633D06336863
          DC44389F7BA1AD77F2125347EA6E6E0E3E3DD5DD636AB9CF11B886EE11EC8FEA
          ADFBB22A1B72719ED7EE77A6F332D8F3FE5B3F92B947FD4EEAF8E1B658FAB6EE
          689ACB8B86E7067FA36FEF2DBC1C2C3C3C1663BDF18F90DF5DAF73B50FD207FA
          37FD2FFC9A4A5FAEE1DD9D80326A037087398646E0016B766EDBFBDFDB5CB5F8
          B918D66CBDA6AB01901FA6BA0EE57A0535B9EDA9F93ED2D1A56382E03E944BB7
          7F214EDAEBBC7B981EC321DB803B87CD2538B85D33A7759E878D5B26AB3186CF
          51B04B6C1B5D6FF25EDB7F9C42FB1FD6EC267A58F6B6F6F620B4C7FEC4FBFF00
          CD5B9D37A763E057636805ADBAC369698F6970036B40036B7DAAE24A79EE8FD0
          B37ED83AA755B49C90496D4208D5BB375847B7DB3FCDD6BA1492494FFFD5F554
          97CAA924A7EAA497CAA924A7EAA497CAA924A7EAA42AFECDEA3BD3D9EA49DDB6
          374F7DD0BE5A49253F4DF53AA9B0D41F73E9B21FE916B4B86A3DFA47D3D9FCDA
          97A758AEBF5AD73981C0B76821A4681ADB3683FA3DDEFF0072F9892494FD5492
          F9552494FD5492F9552494FF00FFD9FFED10B250686F746F73686F7020332E30
          003842494D04040000000000071C020000020002003842494D04250000000000
          10460CF28926B856DAB09C01A1B0A790773842494D03ED000000000010004400
          000001000200440000000100023842494D042600000000000E00000000000000
          0000003F8000003842494D040D0000000000040000001E3842494D0419000000
          0000040000001E3842494D03F300000000000900000000000000000100384249
          4D040A00000000000100003842494D271000000000000A000100000000000000
          023842494D03F4000000000012003500000001002D0000000600000000000138
          42494D03F700000000001C0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF03E800003842494D040800000000001000000001000002400000024000
          0000003842494D041E000000000004000000003842494D041A00000000033D00
          0000060000000000000000000000660000006B00000004006C006F0067006F00
          0000010000000000000000000000000000000000000001000000000000000000
          00006B0000006600000000000000000000000000000000010000000000000000
          000000000000000000000010000000010000000000006E756C6C000000020000
          0006626F756E64734F626A630000000100000000000052637431000000040000
          0000546F70206C6F6E6700000000000000004C6566746C6F6E67000000000000
          000042746F6D6C6F6E670000006600000000526768746C6F6E670000006B0000
          0006736C69636573566C4C73000000014F626A6300000001000000000005736C
          6963650000001200000007736C69636549446C6F6E6700000000000000076772
          6F757049446C6F6E6700000000000000066F726967696E656E756D0000000C45
          536C6963654F726967696E0000000D6175746F47656E65726174656400000000
          54797065656E756D0000000A45536C6963655479706500000000496D67200000
          0006626F756E64734F626A630000000100000000000052637431000000040000
          0000546F70206C6F6E6700000000000000004C6566746C6F6E67000000000000
          000042746F6D6C6F6E670000006600000000526768746C6F6E670000006B0000
          000375726C54455854000000010000000000006E756C6C544558540000000100
          00000000004D7367655445585400000001000000000006616C74546167544558
          540000000100000000000E63656C6C54657874497348544D4C626F6F6C010000
          000863656C6C546578745445585400000001000000000009686F727A416C6967
          6E656E756D0000000F45536C696365486F727A416C69676E0000000764656661
          756C740000000976657274416C69676E656E756D0000000F45536C6963655665
          7274416C69676E0000000764656661756C740000000B6267436F6C6F72547970
          65656E756D0000001145536C6963654247436F6C6F7254797065000000004E6F
          6E6500000009746F704F75747365746C6F6E67000000000000000A6C6566744F
          75747365746C6F6E67000000000000000C626F74746F6D4F75747365746C6F6E
          67000000000000000B72696768744F75747365746C6F6E670000000000384249
          4D042800000000000C000000013FF00000000000003842494D04110000000000
          0101003842494D0414000000000004000000013842494D040C000000000B7000
          0000010000006B00000066000001440000811800000B5400180001FFD8FFE000
          104A46494600010201004800480000FFED000C41646F62655F434D0003FFEE00
          0E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B
          11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E
          0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080066006B03012200
          021101031101FFDD00040007FFC4013F00000105010101010101000000000000
          00030001020405060708090A0B01000105010101010101000000000000000100
          02030405060708090A0B1000010401030204020507060805030C330100021103
          04211231054151611322718132061491A1B14223241552C16233347282D14307
          259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3
          D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
          37475767778797A7B7C7D7E7F711000202010204040304050607070605350100
          021103213112044151617122130532819114A1B14223C152D1F0332462E17282
          92435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2
          B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6
          E6F62737475767778797A7B7C7FFDA000C03010002110311003F00F5363195B1
          B5D6D0C63006B5AD10001A35AD6852492494A557A9667D8706ECBD86DF45BBB6
          0313AC2B4877FA7E8BFD51BABDA4BC113223DC929E430FAD7D69CB7DD6E2D22C
          65E09AC3A22BFCDFD1496FFD2FA69372FEBA62173ED63AF0F046D218E009FCE6
          FA3EE5827A9E40C8B1D4E45B4D24B9D5B5848004EE6D7B01DAD56B1FEB3F56C7
          7B43AFDECE4B5CD0EF96EFA6929D7FAB1D5FACDBD4462E7D8E349DE3F4AD83BC
          0DDE9B5F1F4BF90BB05CC7D56EAE3A8E7649733D279ADAE731BF449061D60FF3
          974E9294924924A5249249294924924A7FFFD0F554924925290EEB69A6B2FB9E
          DAEB1CB9E406EBE25CAAF57C9B71709D6D53BA40911A4FE77BBDAB83CBBE7AB9
          BBA9B9D731F0E04C6A386EE0CFCD67FC1A4A6967B71D9D4321B8CE16522C77A4
          5BC113EDF0F6A1DD6B2E7022B6D50236B0100F99DE4AB6CC4764D76E4E2B406D
          766D0CE21A44B76CFB9031711F9590CC66FB1EF241DC38EF2929D4FAB5975F4F
          CA6BAFB46336F68DCF7349964F15BDBBB6EE7FD2F62ED7A86434607DAA8BC318
          D87B6E690E696FE3BD8E5C2F52C3F4FA7D6F69DC693B675D1BA4CFFD71E9B13A
          ABDBD16EE98EF7075AD7D466368077D91FDA6A4A74B37EB6F54359ADA6B6078D
          2D635C0FC65CF76C72C9C8EA19D9647DAEE7DCD60801C7B7F259ED6FA8E46C1C
          1395517B8BFD8E1B4001AC8F1B6D7FF9AC63158EAB87551BACA8BDD63AD713B0
          4B36927F3FF376B5253D3FD5A7D96E08B6C717B886B439D1F45BF419EDF6FB16
          C2E5BEA775033674F7B401ADAC78F1F687B0FF00D5AEA525292492494FFFD1F5
          54924925385F5CAEB69E8E1D59826E6027CBDC755C8E7E632DC5657635C6D735
          B687E806B3BDBAFBBE8FEEADFF00AFF6918B8948FCF7B9D1FD51B7FEFEB98CB8
          75386E999A76F3C16B9CD494EBFD57A5B76365375043D8E0077807DBFDA536E2
          D8CFAC1936C6F8AFD50489FA7B5ADF6FF253FD5026A65FB9AEDAE2D821AE7031
          3F9CD1F9CB6AA6577E55B7B7B06D67420E9EE74CFEEA4A73F271ADCA36D15EEF
          48D7B480D0209DDF4AC71FA3B9ADFD1B1AB9CE9D8A6E7DB50F6DF5805BA88241
          DBB755D9F501E8D04337343B973743038F7C3B62E7B0F06A6757A9EFDAEA5CE2
          EDAE0041037FF69253B78AF18B803172D9B9AD80D3B07A4D93ED71B0FF002D4F
          249BF0ACC2C56346EF697ED06B3D9CF99F72B431297645B8D538B36301737E93
          4FA9BBF35FEEFCCFDE52B30F1312A0EBDCE7B1BC57AED968E195D7B7DACFDD49
          4F39D2474DC0CE2CB6D3F698DAD7D8DFD1020FD2ADCCF7FEEFF9EBA6C6CCA196
          96BB218F644EE36B5DFF0041DEE6B7F95BBF3D6267747BF3724E535A1BE800D6
          D40EE3026C6CBBDBEFFF0083FCC543D0ADCFDF67A6D05C2BB1C06B2E93ED86B9
          AD6B1BB7F90F494F76082010641D4109D637D59BAF7E2DB5DBAB2AB0B6B279E4
          92D3AAD8494FFFD2F5549249253C77F8C1DF3847F322CFBFD8B9BB5B18788E3A
          CFA839075990177BF59BA33FAAE06CA7FA45277D409807B3987FB2B8CC4E9793
          9958C1657B322BB8FA9BB486C449FED24A767EACF507B302FC6BA4DB49DB5B4F
          F281F62DAC7ABD1AC35EE2E78D5EF3AEA4FD25CFDFD0BAE616239D4E54B5BA96
          306D247F588FFBF2E79F9994F10EB9E7B01B8FCFBA4A7B9CDEA38B5D6F659730
          3A0E848267FAAB0BA23AC7756C41B4BC0A8970E44B8BDAEFFAA5CECC9974933A
          9FF6AE8FA2EFFDA98704C5949008D6435E6DEDF9BEC494F656D82A1BC37739C5
          AD24403A9DBFF47720E739AFC62F6C9D8F074E7430EDBC2B2B2BAD7516625476
          906E1A57573A98FD2583F76B494CFA33EFCC665BDCF0C60BDF5086FBBDA1A0BF
          74EDEFFBAAED1D2B068797B6B9710012E333036EACFE6F77F6143A1B58DE938C
          19C6CD7599749F50CFF29EAFA4A62D6B58D0D600D68D001A04E9D2494FFFD3F5
          549242C8BBD1AF7C4C90DD4C726125255519530E55D79643FDB58710350D13ED
          77FD7103D43690EAF29E5CD047B40DA4FF002AB737DDB7FAE963DB7D4D2CBB6F
          24CB1AE1C9932D77F29CE4949F26C6B6979E401AF879AF39EB1D332BA7E435D7
          3619912FA9C38227C977D78F5F650D040B1DEE0D8063F38FBBE97F2D73FF005F
          32699C5C16B3DF58F50BBC1A7F46C6B7FADB7FE824A793DD26621749F57DD73B
          ECD900035E217B6C24196871D9CFF56C7B965746E8F7755C9F4987656D836D87
          B03FF7E5DBF4DE9F898D41C4A9BA544B5EE2352603B7B9D0EF77B92537B21CD1
          4BF71F691AC7FBD71FF583205BD50EC32DA1ADAC3BC08873DDC3FF007FDEB5BA
          CE45D8786290E9358D0F1ABA7D36C96FBB6B3DFF00F195AE5E449DDD8C9333DD
          93DF724A7B3FAA99355BD2DB4B0FBE87383DBE01C4D8C77F55DB958EB5999D85
          437231582C6349F581697103B3FDA7F9B6FF0084585F54BA8D155D6E3DA763AF
          0D35BBF3491EDD9FD75D724A737A27586F53C725CDD97D702C68076999DB655B
          BF31FB569AE47A90FB0FD6AC738E760BDF56E03C6C7FA56003F96D5D6A4A7FFF
          D4F5543BAA65D53EA7896BC41F9A224929E781BF16E75707D4ADC63F94DFCD7F
          F6FF00D7F9B57F1F206455B9BED70FA434307FEFE89D4B01D94D0FA5FE9E4560
          EC27E8B81E6BB47EEFFE7B59F4F4FEA7BFDF5318D2402EDE0903C76ED494E861
          0365F65BA1637D8C31ACF361DDFE6AE7BEBD74D6455D49AE21E48A1EDEC47B9E
          C72EB2AADB556DADBA868893C9F3D173BF597A0754EAB995D98F633D06336863
          DC44389F7BA1AD77F2125347EA6E6E0E3E3DD5DD636AB9CF11B886EE11EC8FEA
          ADFBB22A1B72719ED7EE77A6F332D8F3FE5B3F92B947FD4EEAF8E1B658FAB6EE
          689ACB8B86E7067FA36FEF2DBC1C2C3C3C1663BDF18F90DF5DAF73B50FD207FA
          37FD2FFC9A4A5FAEE1DD9D80326A037087398646E0016B766EDBFBDFDB5CB5F8
          B918D66CBDA6AB01901FA6BA0EE57A0535B9EDA9F93ED2D1A56382E03E944BB7
          7F214EDAEBBC7B981EC321DB803B87CD2538B85D33A7759E878D5B26AB3186CF
          51B04B6C1B5D6FF25EDB7F9C42FB1FD6EC267A58F6B6F6F620B4C7FEC4FBFF00
          CD5B9D37A763E057636805ADBAC369698F6970036B40036B7DAAE24A79EE8FD0
          B37ED83AA755B49C90496D4208D5BB375847B7DB3FCDD6BA1492494FFFD5F554
          97CAA924A7EAA497CAA924A7EAA497CAA924A7EAA42AFECDEA3BD3D9EA49DDB6
          374F7DD0BE5A49253F4DF53AA9B0D41F73E9B21FE916B4B86A3DFA47D3D9FCDA
          97A758AEBF5AD73981C0B76821A4681ADB3683FA3DDEFF0072F9892494FD5492
          F9552494FD5492F9552494FF00FFD93842494D04210000000000530000000101
          0000000F00410064006F00620065002000500068006F0074006F00730068006F
          00700000001200410064006F00620065002000500068006F0074006F00730068
          006F007000200043005300000001003842494D04060000000000070004000000
          010100FFE11803687474703A2F2F6E732E61646F62652E636F6D2F7861702F31
          2E302F003C3F787061636B657420626567696E3D27EFBBBF272069643D275735
          4D304D7043656869487A7265537A4E54637A6B633964273F3E0A3C783A786D70
          6D65746120786D6C6E733A783D2761646F62653A6E733A6D6574612F2720783A
          786D70746B3D27584D5020746F6F6C6B697420332E302D32382C206672616D65
          776F726B20312E36273E0A3C7264663A52444620786D6C6E733A7264663D2768
          7474703A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D
          73796E7461782D6E73232720786D6C6E733A69583D27687474703A2F2F6E732E
          61646F62652E636F6D2F69582F312E302F273E0A0A203C7264663A4465736372
          697074696F6E207264663A61626F75743D27757569643A30626165323366322D
          646138392D313164612D396364332D386638653330363833373566270A202078
          6D6C6E733A657869663D27687474703A2F2F6E732E61646F62652E636F6D2F65
          7869662F312E302F273E0A20203C657869663A436F6C6F7253706163653E3432
          39343936373239353C2F657869663A436F6C6F7253706163653E0A20203C6578
          69663A506978656C5844696D656E73696F6E3E3130373C2F657869663A506978
          656C5844696D656E73696F6E3E0A20203C657869663A506978656C5944696D65
          6E73696F6E3E3130323C2F657869663A506978656C5944696D656E73696F6E3E
          0A203C2F7264663A4465736372697074696F6E3E0A0A203C7264663A44657363
          72697074696F6E207264663A61626F75743D27757569643A3062616532336632
          2D646138392D313164612D396364332D386638653330363833373566270A2020
          786D6C6E733A7064663D27687474703A2F2F6E732E61646F62652E636F6D2F70
          64662F312E332F273E0A203C2F7264663A4465736372697074696F6E3E0A0A20
          3C7264663A4465736372697074696F6E207264663A61626F75743D2775756964
          3A30626165323366322D646138392D313164612D396364332D38663865333036
          3833373566270A2020786D6C6E733A70686F746F73686F703D27687474703A2F
          2F6E732E61646F62652E636F6D2F70686F746F73686F702F312E302F273E0A20
          203C70686F746F73686F703A486973746F72793E3C2F70686F746F73686F703A
          486973746F72793E0A203C2F7264663A4465736372697074696F6E3E0A0A203C
          7264663A4465736372697074696F6E207264663A61626F75743D27757569643A
          30626165323366322D646138392D313164612D396364332D3866386533303638
          33373566270A2020786D6C6E733A746966663D27687474703A2F2F6E732E6164
          6F62652E636F6D2F746966662F312E302F273E0A20203C746966663A4F726965
          6E746174696F6E3E313C2F746966663A4F7269656E746174696F6E3E0A20203C
          746966663A585265736F6C7574696F6E3E36382F313C2F746966663A58526573
          6F6C7574696F6E3E0A20203C746966663A595265736F6C7574696F6E3E36382F
          313C2F746966663A595265736F6C7574696F6E3E0A20203C746966663A526573
          6F6C7574696F6E556E69743E323C2F746966663A5265736F6C7574696F6E556E
          69743E0A203C2F7264663A4465736372697074696F6E3E0A0A203C7264663A44
          65736372697074696F6E207264663A61626F75743D27757569643A3062616532
          3366322D646138392D313164612D396364332D38663865333036383337356627
          0A2020786D6C6E733A7861703D27687474703A2F2F6E732E61646F62652E636F
          6D2F7861702F312E302F273E0A20203C7861703A437265617465446174653E32
          3030362D30312D32355432303A32373A35332B30333A30303C2F7861703A4372
          65617465446174653E0A20203C7861703A4D6F64696679446174653E32303036
          2D30352D30335431333A34333A31332B30333A30303C2F7861703A4D6F646966
          79446174653E0A20203C7861703A4D65746164617461446174653E323030362D
          30352D30335431333A34333A31332B30333A30303C2F7861703A4D6574616461
          7461446174653E0A20203C7861703A43726561746F72546F6F6C3E41646F6265
          2050686F746F73686F702043532057696E646F77733C2F7861703A4372656174
          6F72546F6F6C3E0A203C2F7264663A4465736372697074696F6E3E0A0A203C72
          64663A4465736372697074696F6E207264663A61626F75743D27757569643A30
          626165323366322D646138392D313164612D396364332D386638653330363833
          373566270A2020786D6C6E733A7861704D4D3D27687474703A2F2F6E732E6164
          6F62652E636F6D2F7861702F312E302F6D6D2F273E0A20203C7861704D4D3A44
          6F63756D656E7449443E61646F62653A646F6369643A70686F746F73686F703A
          33343762333734342D386463622D313164612D383362342D3830633636343139
          653466313C2F7861704D4D3A446F63756D656E7449443E0A203C2F7264663A44
          65736372697074696F6E3E0A0A203C7264663A4465736372697074696F6E2072
          64663A61626F75743D27757569643A30626165323366322D646138392D313164
          612D396364332D386638653330363833373566270A2020786D6C6E733A64633D
          27687474703A2F2F7075726C2E6F72672F64632F656C656D656E74732F312E31
          2F273E0A20203C64633A666F726D61743E696D6167652F6A7065673C2F64633A
          666F726D61743E0A203C2F7264663A4465736372697074696F6E3E0A0A3C2F72
          64663A5244463E0A3C2F783A786D706D6574613E0A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A3C3F787061636B65742065
          6E643D2777273F3EFFEE000E41646F626500640000000000FFDB004300060404
          0405040605050609060506090B080606080B0C0A0A0B0A0A0C100C0C0C0C0C0C
          100C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000
          0B080066006B01011100FFDD0004000EFFC400D2000000070101010101000000
          0000000000040503020601000708090A0B100002010303020402060703040206
          0273010203110400052112314151061361227181143291A10715B14223C152D1
          E1331662F0247282F12543345392A2B26373C235442793A3B33617546474C3D2
          E2082683090A181984944546A4B456D355281AF2E3F3C4D4E4F465758595A5B5
          C5D5E5F566768696A6B6C6D6E6F637475767778797A7B7C7D7E7F73848586878
          8898A8B8C8D8E8F82939495969798999A9B9C9D9E9F92A3A4A5A6A7A8A9AAABA
          CADAEAFAFFDA0008010100003F00F54E6CD91FF3BF99DFCB5A13EA71DB7D69C3
          AC4B1F2E2017AD198D0FC20E73AD23CCDF9BD7BA7DCAD9DB894CEC2586F1C207
          895CF22B1873C38FECD1D1F82E2526B3F9CBA6D94F05C413DCFAF1F149B824AF
          0F5E4C862DF97FAF879F94BE6AF336A9757167ADCE648D21E7686540B23957E0
          F46007309D1BFD6CE9D9B366CD9B367FFFD0F54E6CD853E6B9EC2DFCBBA85C5F
          C625B5861691D0AF204A8F8763FE5533CE367E65D7200C5355BA8F871F4A2123
          F06EDC4EFC542FFB2FE5C3CD3BF357CD5652159EED6EE355348E541427B02C38
          BF73F133674BFCA7F30C3AD5B6A92A2180ACEAFF0056EA91874A7C0683666563
          93DCD9B366CD9B3FFFD1F54E6CD85FAE5C6911E9B3C7AADC456D69708D0BBCCC
          AAA4329040E7B134ED9E575F4A1B93E981711C6C480410ACAADFB43E16A32FEC
          E5DE5C45753BCCB0A5BD454430821053C39166CE8FF955ADD868778F63A85EA6
          9CB31592759D4A991B8D631EAFC4823E249F8BD2CE99E73D5A6D334D8753B7BB
          5B711B100B0F523903A9E2A541AB5481C78FFC12AE730D77F35BCD5708D6AB24
          56752A7D5B7475622A0D1599DFFCFE1C8C5DEBBABEA1742EF52B992E664A0567
          3CD9581DB821E2AA032F2655CEFDE4E79A5D152E2776967B86F5259DE95918A8
          1CBE1F87EC855F87E1F870F3366CFFD2F54E6C8D79E359BED32C60368CD134D2
          156990212B415E9206535F0A670AFAD5AC3AF5FB798F9DD4ECCE559AA5199C13
          CDB8EFBFC3C38FC3819746BD974A4D52D63E49234A8F18A557830F8547561438
          8E8BA249AB5CFD5E36F4D628DA590B2D4809D46DBD5BF670D7CE5A77A30D95DA
          D1832FA523EF4A0A88C7CF8A3F2E38AC9E6A9EF7C99A768737C7269F3BBACA4E
          E21E05513DFEDB7FC0F0C30F2C797C5DB585F4EF21E138E4B2288EDC28FF0029
          BE296461F17145E3C7E2FB38135ED260D3D6DBEAC6792460C2772A3D1A9DEA1F
          EC9E44FC2BFCB9D33F293CC06F3477D2A48846FA7EF13AF478E4663D29B146F8
          7FCAC9F66CD9FFD3F54E6CE63F9DDA9DE585B68CD6EC554CD297F03C505011DF
          AFC39CCFCD7A95B5C14B7689C5CDAB51E43C42BA4880D40FB63E3F8B87265FF5
          7269F96F691CBE598A705B95B5DC8FC546E46DFEC471FB5FF0B807CAFA44F67A
          E6BBCD7D5F4A74B77703957D466762076E43FE0705F98B4BBDD534DD4C207682
          31CE00A891A8312AB00CC4F393AB2AF15555F8BFCAC87F95F466D4ADDFEAAC16
          E639950ABB008C8E0D491F6CF103F657E1CEB31DE4034EB5D3F52880954AC51C
          F344B1C0840D8249E3C3E1F87FD5FE6C0DE648E5D6F431A758C4B6B6C0877792
          25F4820DF947BFED7DA565F8BF9B093C8973E59D3AF67B54BB78751948067BC5
          31802946586442BC7951BFBCE3F6396746D2359B15692296FA2750408E47B98E
          42493DC1E2E85AB4543FC9FB3FB47D9B3FFFD4F54E6CE21F9FB745F5BD32D41A
          88AD9A4207505E4A7FCCBC84F991564D4BD40D5F5ADA070C4EDBC62B5FB5E07F
          D96748FCAC94DBF9759258651599D9544521054A8A7C407FB2C91E95696D712D
          DDEA1FDDDD4C4970ACA4841C4135EFD5702799D7D2B75B7024485C9E614F1562
          76A3310CB4A7ECB32AB7D9C88F91B41B487CD5C2E4473C0D1B18390E2DBB04E9
          F0B72AB7DAFF0081CE890E8D6B7C6FAD6094886DE45B77864025434557FB2DF1
          7ED8FB4CD8ADF69FA569E23FAD3CB792B545BA484B7C4E42D68A1500A90BF12B
          71FB5FCD908D4BCA1A8CF7B71E62223E55A3C01848A9E98086B21E2B26D5691F
          ECF2E58530D85B7AC8EDE8A7AE582B44292B4B0A824D4AD1793D51519B8F1F89
          7F673A97E5EDEDF5E795AD25BDDDD6B1C6D420B220001DCB57B8C92E7FFFD5F5
          4E6CE0BF9EE27FF16DB16AFA66CD3D23DBFBC7AFE3912D5ADE4E7A7AAD5DE5B3
          8847460D571B501069F0E751F256BF35F793D2D0C8C753E7F55562083C41147A
          FF00903FE35C955AC715B40A8188F4D557D423A9037A9F87763F1646FCDFE62D
          37F435DDBA5E426EDA26112720C4B91B0DBA7F372F870A7F2D9E57F385D8E064
          852DA28C31F882D511ABEDBAF2FF009B9B967539EE52DA585163AFD624A3BAD0
          0144279378FD90BFF0385FAECAA62B4BC8892124346522BC5D7C09504568CDFE
          4FC5F6B0179352E75AF2A453DD4BE9C37C653E9C51F06082565A7262C3E2E3D7
          87D86F83F9B0F2CFCB3A25A197D2B543EB12D207AB292D4A9087E05AD07D855C
          330A14000500D80CBCFFD6F54E6CE79F9BBE46BCD7EC60D434F532DF58060D05
          7EDC2DBB711FCEA7B7ED7FADC739A689E52D43CC50584364A2DDAD1645BC91C1
          1C5B9D576FB44B0C37F317957CEFA268E661A9996D63AFAD1423D3217A96E8B5
          FF002BE2E59039F55D4661492EE673D3776D9474EF4C42DCA89E32D5A06DDAB4
          1F3AD33ABFE5DFAEBE6EB847661CED6DE723B3048C27C54F87AC9CBF67E2CEAA
          7E5ED4C8379FFCC315BDB49656F22C9773A983801C9608CD43393FB2EC2A8BFF
          0005FB3F14F34A58174CB45B65E36E218C42B50D440A388A8EBB60BCD9B3FFD7
          F54E6CC4D30A74FB6851EE6EC45E9CB7533BC84800D16918DFA91C630FFECB02
          7991964D26E21500FAAA6304D0A82C388EBFE5679D7CC1A06A5E5ED50D8DFC5C
          250AB226FF0069186D420FFACADFE52E172B176240A76006FD7F8E75DFCBC96E
          DEEEC7556086CE4B64B2694AB060E58FC35EFBC71AFF002FEF17FCACE8FA9343
          E8AC72B101A45A53635E551DFF00D97C3FB3CB38979A7525BCF32EA178BBC2F2
          3471C94057846AC94FB2FF0003956E39D97C87A8DB5F79534F681ABF57896DA5
          434E48F080A5580E87A1FF00570BFCF5E64F30E8221BAB286292C194ACB2491C
          8C23901D8C850FD86AA85A71F895BED7C2B871E57F31DBEBFA525EC48D0C80FA
          7716EFD52400122BFB4A432B2B7F2B7ECB725538CFFFD0F54E01D4EFBEAB1A0A
          84F5495F5491F000A5B971FDAA53A614996E2E034F67A9C8F23285552AAD096A
          D397A642B7C54A6D27C3F6B1F6379710DAC76F72B1FC0AA8042AFC680500A3FC
          5D00F8B1B2422FF50B5B62A7D04FDEC88A540014D543A9DD909F876FDAE2F9C9
          FF003BF56B5BCF3445671474974E88473CD4DCB49F185A7F2AA9057FD7C29F22
          7906E7CCD3C9248E6DF4EB73C65980F88B52A153F649E9CBF973B2E97A3E9874
          8FA95A44228625689005E3C4A315EB46AB541E4DF69BED7F95915F3FEAF7B6F6
          B1DA094F3016DDA4FB059A80CADD15BE11455656FB32BF2FD9CE73CD1632EC00
          1192366A8E8F415AF2EA7FD5CEA9F949E61B136971A44AC23BC1334B1D48E328
          702BC0F8AD37CE8ECA194AB0054F5077046726D101D27F3764D36D1B85A5C492
          A98874E06D9A6E0076557029FF005D675ACFFFD1F54E03D574E8B51B37B67254
          92191C0078BAEEAC2B908B4BDBEB16A18984F1064B8809D811D413DBF9F97F2F
          17FDAC925B5DC7756CB3C4FC2303E2AD011E351FF1B608F2F23491CD78C0719D
          A901E346F4D3615353D5B936721FCEBF2DC563AEC3AB42E4FE950C6588D3E178
          555491ECCA57FD97ED6493F2AB5FF2FDB79622B496EA2B7BC5790CF148EAA58D
          7ED81E1C28BFF05928BAD421B69A3BAB292392DAF033CACCDCA3AA014653F681
          61456E3C97ECFC3CBED463F313CB7A95FC56B7F651F3776F8AD8D5640F2F1150
          095DFE151C7ED2FF0095F171E67776375692BC3700C13A8652B2D56818B123E2
          6E9FCAD9D8750F28689E6DD1B4FD574873A7DCC3084B29540A058C1510C8A0D3
          E071C792FC4BFB18552D8FE71E9D10B4B5996EE34002CC8D0B0000A5019E929E
          DF6B0EBC8BE46BDD26EE5D6757BA33EAF72AEAF1021913D470CC4B6FC9DB88DD
          78AAFC4BF17DAC9B67FFD2F54E6C8EF997CB97378E2FB4E9385E05092C2C691C
          C80D7AD0F0957F624FF60FF0F1E055A77973CC0F284BD822B682424CB2C72ABB
          0005000A538FCA9F0FF364D55151022801545147801B6728F3DFE5979BFCC1E6
          5B9BFB7B9B76B4608B6AB34AEA5115455788461F6F91FF006591A9FF00297CC5
          A5B472EA33406D18B2C8D6AEC5822C4D2354B222A82A87E23FB59D02DB4AB0D2
          ECA1D1FD61EA59F09B4A9246FB724A4D51958F16F897B2FC2ADF0F197E2C96C5
          0A09D2EEED8ACC1098ADCEE106C1D8282D53B805BF65713BEB0B3BE46FAC5AAC
          D6EEBF146F1AB331AECC01FA3ED63FCBDA1DAE87A543A6DA9630425CA97209AB
          B972360BB02DF0ED8659B367FFD3F54E6CD9B366CC694DFA7BE05B3FD1B46FA9
          7A34FDAF478FE3C709B5EB4B19B538D9AFA4B5BC10A7C2236910C22504D36A55
          9A824A37D8FB5F0E0F10C2B73686EA792494161100ACB096352A5E838F255F85
          39B7FC3F1C34CD9B367FFFD9}
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
      Top = 58
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
    object lec_svdoza: TWideStringField
      Alignment = taRightJustify
      FieldName = 'doza'
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
    Top = 8
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
    object WideStringField4: TWideStringField
      Alignment = taRightJustify
      FieldName = 'doza'
    end
    object IntegerField8: TIntegerField
      FieldName = 'st'
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
