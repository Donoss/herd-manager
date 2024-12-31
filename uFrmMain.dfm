object frmMain: TfrmMain
  Left = 0
  Top = 0
  AlphaBlend = True
  Caption = 'Herd Manager'
  ClientHeight = 1040
  ClientWidth = 1697
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  RoundedCorners = rcOn
  ShowInTaskBar = True
  OnShow = FormShow
  TextHeight = 21
  object SplitView1: TSplitView
    Left = 0
    Top = 49
    Width = 60
    Height = 991
    AnimationDelay = 5
    AnimationStep = 50
    BevelEdges = [beTop]
    CloseStyle = svcCompact
    CompactWidth = 60
    Opened = False
    OpenedWidth = 200
    Placement = svpLeft
    TabOrder = 0
    OnClosed = SplitView1Closed
    OnOpened = SplitView1Opened
    DesignSize = (
      60
      991)
    object btnOurSites: TButton
      Left = 3
      Top = 247
      Width = 190
      Height = 52
      Hint = 'Holdings'
      Caption = 'Our Sites'
      ImageIndex = 2
      ImageName = 'holding64'
      Images = Images.VirtualImageListHeight48
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnOurSitesClick
    end
    object btnMovements: TButton
      Left = 3
      Top = 66
      Width = 190
      Height = 52
      Hint = 'Movements'
      Caption = 'Movements'
      ImageIndex = 3
      ImageName = 'move64'
      Images = Images.VirtualImageListHeight48
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object btnTagging: TButton
      Left = 3
      Top = 126
      Width = 190
      Height = 52
      Hint = 'Tagging'
      Caption = 'Tagging'
      ImageIndex = 5
      ImageName = 'tag64'
      Images = Images.VirtualImageListHeight48
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object btnDeaths: TButton
      Left = 3
      Top = 186
      Width = 190
      Height = 52
      Hint = 'Deaths'
      Caption = 'Deaths'
      ImageIndex = 1
      ImageName = 'deceased64'
      Images = Images.VirtualImageListHeight48
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
    object btnDashboard: TButton
      Left = 3
      Top = 6
      Width = 190
      Height = 52
      Hint = 'Dashboard'
      Caption = 'Dashboard'
      Default = True
      ImageIndex = 0
      ImageName = 'dashboard64'
      Images = Images.VirtualImageListHeight48
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      WordWrap = True
    end
    object btnSettings: TButton
      Left = 3
      Top = 929
      Width = 190
      Height = 52
      Hint = 'Settings'
      Anchors = [akLeft, akBottom]
      Caption = 'Settings'
      ImageIndex = 4
      ImageName = 'settings64'
      Images = Images.VirtualImageListHeight48
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object btnOtherSites: TButton
      Left = 3
      Top = 305
      Width = 190
      Height = 52
      Hint = 'Holdings'
      Caption = 'Other Sites'
      ImageIndex = 13
      ImageName = 'otherSites64'
      Images = Images.VirtualImageListHeight48
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnOurSitesClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1697
    Height = 49
    Align = alTop
    BevelEdges = [beBottom]
    BevelOuter = bvNone
    ShowCaption = False
    TabOrder = 1
    object Label1: TLabel
      Left = 934
      Top = 10
      Width = 26
      Height = 21
      Caption = 'Site'
    end
    object Label2: TLabel
      Left = 1438
      Top = 10
      Width = 52
      Height = 21
      Caption = 'Species'
    end
    object BitBtn1: TBitBtn
      Left = 3
      Top = 3
      Width = 50
      Height = 40
      Align = alCustom
      Default = True
      ImageIndex = 19
      ImageName = 'menu_64'
      Images = Images.VirtualImageListHeight48
      TabOrder = 0
      StyleName = 'Calypso'
      OnClick = BitBtn1Click
    end
    object ComboBox2: TComboBox
      Left = 992
      Top = 7
      Width = 360
      Height = 29
      AutoDropDown = True
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 1
      Text = 'All'
      OnChange = ComboBox1Change
      Items.Strings = (
        'All'
        'Hunshelf Farm'
        'Underbank Farm'
        'Langsett Farm')
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 1521
      Top = 7
      Width = 176
      Height = 29
      DataField = 'SPECIES'
      DataSource = AnimalData.dsSpecies
      ListField = 'SPECIES'
      ListSource = AnimalData.dsSpecies
      TabOrder = 2
    end
  end
  inline FrameSites: TFrameSites
    Left = 60
    Top = 49
    Width = 1637
    Height = 991
    Align = alClient
    TabOrder = 2
    Visible = False
    ExplicitLeft = 60
    ExplicitTop = 49
    ExplicitWidth = 1637
    ExplicitHeight = 991
    inherited GroupBox3: TGroupBox
      Width = 1387
      Height = 937
      ExplicitWidth = 1387
      ExplicitHeight = 937
      inherited DBGrid1: TDBGrid
        Width = 183
        Height = 912
      end
      inherited SplitView2: TSplitView
        Left = 185
        Height = 912
        ExplicitLeft = 185
        ExplicitHeight = 912
      end
    end
    inherited SplitView1: TSplitView
      Height = 937
      ExplicitHeight = 937
      inherited GroupBox2: TGroupBox
        Height = 913
        ExplicitHeight = 913
      end
    end
    inherited ToolBar3: TToolBar
      Width = 1637
      ExplicitWidth = 1637
    end
  end
end
