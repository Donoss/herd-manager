object FrmSites: TFrmSites
  Left = 0
  Top = 0
  Caption = 'Sites'
  ClientHeight = 1144
  ClientWidth = 2251
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object ToolBar3: TToolBar
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 2251
    Height = 54
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    AutoSize = True
    ButtonHeight = 54
    ButtonWidth = 55
    Caption = 'ToolBar1'
    Images = Images.VirtualImageListHeight24
    TabOrder = 0
    object ToolButton7: TToolButton
      Left = 0
      Top = 0
      Caption = 'ToolButton7'
      Down = True
      ImageIndex = 18
      ImageName = 'filter64'
      Style = tbsCheck
      OnClick = ToolButton7Click
    end
    object ToolButton5: TToolButton
      Left = 55
      Top = 0
      Caption = 'ToolButton5'
      Down = True
      ImageIndex = 23
      ImageName = 'left_panel_open_64dp'
      OnClick = ToolButton5Click
    end
  end
  object SplitView1: TSplitView
    Left = 0
    Top = 54
    Width = 250
    Height = 1090
    OpenedWidth = 250
    Placement = svpLeft
    TabOrder = 1
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 6
      Top = 12
      Width = 232
      Height = 1066
      Margins.Left = 6
      Margins.Top = 12
      Margins.Right = 12
      Margins.Bottom = 12
      Align = alClient
      Caption = 'Filters && Search'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 16
        Top = 76
        Width = 36
        Height = 21
        Caption = 'Type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ComboBox2: TComboBox
        Left = 73
        Top = 75
        Width = 144
        Height = 29
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'Farm'
        OnChange = ComboBox2Change
        Items.Strings = (
          'Farm'
          'Collection Centre'
          'Assembly Centre'
          'Abattoir'
          'Market')
      end
      object CheckBox1: TCheckBox
        Left = 16
        Top = 43
        Width = 201
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Owned by us'
        TabOrder = 1
        OnClick = CheckBox1Click
      end
    end
  end
  object GroupBox3: TGroupBox
    Left = 250
    Top = 54
    Width = 2001
    Height = 1090
    Align = alClient
    Caption = 'Sites'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ExplicitLeft = 296
    ExplicitTop = 176
    ExplicitWidth = 689
    ExplicitHeight = 617
    object DBGrid1: TDBGrid
      Left = 2
      Top = 23
      Width = 797
      Height = 1065
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alClient
      BorderStyle = bsNone
      DataSource = SiteData.dsSites
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = [fsBold]
      OnDblClick = DBGrid1DblClick
    end
    object SplitView2: TSplitView
      Left = 799
      Top = 23
      Width = 1200
      Height = 1065
      AnimationDelay = 5
      AnimationStep = 200
      BevelEdges = []
      CompactWidth = 0
      FullRepaint = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      OpenedWidth = 1200
      ParentFont = False
      Placement = svpRight
      TabOrder = 1
      ExplicitLeft = 1051
      ExplicitTop = 54
      ExplicitHeight = 1090
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1200
        Height = 1090
        Caption = 'Panel5'
        ShowCaption = False
        TabOrder = 0
        object GroupBox1: TGroupBox
          AlignWithMargins = True
          Left = 13
          Top = 1
          Width = 1174
          Height = 330
          Margins.Left = 12
          Margins.Top = 0
          Margins.Right = 12
          Margins.Bottom = 12
          Align = alTop
          Caption = 'Site'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ExplicitTop = 55
          object Label5: TLabel
            Left = 14
            Top = 33
            Width = 36
            Height = 21
            Caption = 'Type'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label1: TLabel
            Left = 13
            Top = 73
            Width = 126
            Height = 21
            Caption = 'Holding number'
            FocusControl = DBEdit1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 13
            Top = 108
            Width = 46
            Height = 21
            Caption = 'Name'
            FocusControl = DBEdit2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 13
            Top = 143
            Width = 60
            Height = 21
            Caption = 'Address'
            FocusControl = DBEdit3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 13
            Top = 178
            Width = 70
            Height = 21
            Caption = 'Postcode'
            FocusControl = DBEdit4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 13
            Top = 213
            Width = 39
            Height = 21
            Caption = 'State'
            FocusControl = DBEdit5
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 165
            Top = 35
            Width = 225
            Height = 29
            DataField = 'SITE_TYPE_ID'
            DataSource = SiteData.dsSites
            KeyField = 'ID'
            ListField = 'SITE_TYPE'
            ListSource = SiteData.dsLkupSiteTypes
            TabOrder = 0
          end
          object DBEdit1: TDBEdit
            Left = 165
            Top = 70
            Width = 225
            Height = 29
            DataField = 'HOLDING_NUMBER'
            DataSource = SiteData.dsSites
            TabOrder = 1
          end
          object DBCheckBox2: TDBCheckBox
            Left = 13
            Top = 245
            Width = 169
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Owned by us'
            DataField = 'IS_OWNED'
            DataSource = SiteData.dsSites
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit2: TDBEdit
            Left = 165
            Top = 105
            Width = 577
            Height = 29
            DataField = 'NAME'
            DataSource = SiteData.dsSites
            TabOrder = 3
          end
          object DBEdit3: TDBEdit
            Left = 165
            Top = 140
            Width = 577
            Height = 29
            DataField = 'ADDRESS'
            DataSource = SiteData.dsSites
            TabOrder = 4
          end
          object DBEdit4: TDBEdit
            Left = 165
            Top = 175
            Width = 121
            Height = 29
            DataField = 'POSTCODE'
            DataSource = SiteData.dsSites
            TabOrder = 5
          end
          object DBEdit5: TDBEdit
            Left = 165
            Top = 210
            Width = 121
            Height = 29
            DataField = 'STATE'
            DataSource = SiteData.dsSites
            TabOrder = 6
          end
        end
        object GroupBox4: TGroupBox
          AlignWithMargins = True
          Left = 13
          Top = 343
          Width = 1174
          Height = 372
          Margins.Left = 12
          Margins.Top = 0
          Margins.Right = 12
          Margins.Bottom = 12
          Align = alTop
          Caption = 'Contacts'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnExit = GroupBox4Exit
          ExplicitTop = 397
          object SplitView4: TSplitView
            AlignWithMargins = True
            Left = 560
            Top = 29
            Width = 600
            Height = 335
            Margins.Left = 12
            Margins.Top = 6
            Margins.Right = 12
            Margins.Bottom = 6
            AnimationDelay = 5
            AnimationStep = 100
            BevelOuter = bvLowered
            CompactWidth = 1
            OpenedWidth = 600
            Placement = svpRight
            TabOrder = 0
            StyleName = 'Material Oxford Blue'
            OnClosing = SplitView4Closing
            OnExit = SplitView4Exit
            ExplicitTop = 79
            ExplicitHeight = 287
            object Label13: TLabel
              Left = 16
              Top = 68
              Width = 34
              Height = 21
              Caption = 'Role'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label14: TLabel
              Left = 16
              Top = 100
              Width = 46
              Height = 21
              Caption = 'Name'
              FocusControl = DBEdit10
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label15: TLabel
              Left = 16
              Top = 132
              Width = 66
              Height = 21
              Caption = 'Landline'
              FocusControl = DBEdit11
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label16: TLabel
              Left = 16
              Top = 164
              Width = 54
              Height = 21
              Caption = 'Mobile'
              FocusControl = DBEdit12
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label17: TLabel
              Left = 16
              Top = 196
              Width = 43
              Height = 21
              Caption = 'Email'
              FocusControl = DBEdit13
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBLookupComboBox3: TDBLookupComboBox
              Left = 104
              Top = 64
              Width = 145
              Height = 29
              Margins.Top = 12
              DataField = 'ROLE_ID'
              DataSource = SiteData.dsSiteContacts
              KeyField = 'ID'
              ListField = 'ROLE'
              ListSource = SiteData.dsLkupSiteRoles
              TabOrder = 0
            end
            object DBEdit10: TDBEdit
              Left = 104
              Top = 96
              Width = 462
              Height = 29
              Margins.Top = 12
              DataField = 'NAME'
              DataSource = SiteData.dsSiteContacts
              TabOrder = 1
            end
            object DBEdit11: TDBEdit
              Left = 104
              Top = 128
              Width = 145
              Height = 29
              Margins.Top = 12
              DataField = 'LANDLINE'
              DataSource = SiteData.dsSiteContacts
              TabOrder = 2
            end
            object DBEdit12: TDBEdit
              Left = 104
              Top = 160
              Width = 145
              Height = 29
              Margins.Top = 12
              DataField = 'MOBILE'
              DataSource = SiteData.dsSiteContacts
              TabOrder = 3
            end
            object DBEdit13: TDBEdit
              Left = 104
              Top = 192
              Width = 462
              Height = 29
              Margins.Top = 12
              DataField = 'EMAIL'
              DataSource = SiteData.dsSiteContacts
              TabOrder = 4
            end
            object Panel1: TPanel
              Left = 1
              Top = 1
              Width = 598
              Height = 40
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = ' Update contact'
              TabOrder = 5
              object btnCloseContact: TSpeedButton
                Left = 550
                Top = 0
                Width = 48
                Height = 40
                Align = alRight
                ImageIndex = 7
                ImageName = 'close64'
                Images = Images.VirtualImageListHeight24
                OnClick = btnCloseContactClick
                ExplicitLeft = 520
                ExplicitTop = 1
                ExplicitHeight = 38
              end
            end
            object Panel3: TPanel
              Left = 1
              Top = 294
              Width = 598
              Height = 40
              Align = alBottom
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = 'Creating new contact'
              ShowCaption = False
              TabOrder = 6
              ExplicitTop = 1
              object btnCancelContact: TSpeedButton
                Left = 498
                Top = 0
                Width = 100
                Height = 40
                Align = alRight
                Caption = 'Cancel'
                ImageIndex = 8
                ImageName = 'cancel64'
                Images = Images.VirtualImageListHeight24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                OnClick = btnCancelContactClick
                ExplicitLeft = 496
              end
              object btnSaveContact: TSpeedButton
                Left = 398
                Top = 0
                Width = 100
                Height = 40
                Align = alRight
                Caption = 'Save'
                ImageIndex = 6
                ImageName = 'save64'
                Images = Images.VirtualImageListHeight24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                OnClick = btnSaveContactClick
                ExplicitLeft = 402
              end
            end
          end
          object Panel2: TPanel
            Left = 2
            Top = 23
            Width = 546
            Height = 347
            Align = alClient
            Caption = 'Panel2'
            TabOrder = 1
            ExplicitWidth = 455
            object Panel4: TPanel
              Left = 1
              Top = 1
              Width = 544
              Height = 48
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = ' Update contact'
              ParentBackground = False
              ShowCaption = False
              TabOrder = 0
              ExplicitLeft = -865
              ExplicitTop = 7
              ExplicitWidth = 1170
              object SpeedButton4: TSpeedButton
                Left = 447
                Top = 0
                Width = 97
                Height = 48
                Align = alRight
                Caption = 'New'
                ImageIndex = 9
                ImageName = 'add64'
                Images = Images.VirtualImageListHeight24
                OnClick = SpeedButton4Click
                ExplicitLeft = 1073
              end
              object SpeedButton5: TSpeedButton
                Left = 0
                Top = 0
                Width = 48
                Height = 48
                Hint = 'Open or close the right hand panel'
                Align = alLeft
                ImageIndex = 24
                ImageName = 'right_panel_open_64dp'
                Images = Images.VirtualImageListHeight24
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton5Click
              end
            end
            object DBGrid2: TDBGrid
              AlignWithMargins = True
              Left = 13
              Top = 55
              Width = 520
              Height = 285
              Margins.Left = 12
              Margins.Top = 6
              Margins.Right = 12
              Margins.Bottom = 6
              Align = alClient
              DataSource = SiteData.dsSiteContacts
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -16
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = [fsBold]
              OnDblClick = DBGrid2DblClick
            end
          end
        end
      end
    end
  end
  object dsContacts: TDataSource
    DataSet = SiteData.FDQuerySiteContacts
    OnStateChange = dsContactsStateChange
    Left = 1976
    Top = 652
  end
end
