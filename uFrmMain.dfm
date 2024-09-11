object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Herd Manager'
  ClientHeight = 879
  ClientWidth = 1966
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'JetBrains Mono'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 21
  object SplitView1: TSplitView
    Left = 0
    Top = 49
    Width = 200
    Height = 830
    AnimationDelay = 5
    AnimationStep = 50
    CloseStyle = svcCompact
    CompactWidth = 60
    OpenedWidth = 200
    Placement = svpLeft
    TabOrder = 0
    OnClosed = SplitView1Closed
    OnOpened = SplitView1Opened
    DesignSize = (
      200
      830)
    object btnOurSites: TButton
      Left = 3
      Top = 247
      Width = 190
      Height = 52
      Hint = 'Holdings'
      Caption = 'Our Sites'
      ImageIndex = 3
      ImageName = 'holding64'
      Images = DataManager.VirtualImageList1
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
      ImageIndex = 4
      ImageName = 'move64'
      Images = DataManager.VirtualImageList1
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
      ImageIndex = 6
      ImageName = 'tag64'
      Images = DataManager.VirtualImageList1
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
      ImageIndex = 2
      ImageName = 'deceased64'
      Images = DataManager.VirtualImageList1
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
      ImageIndex = 1
      ImageName = 'dashboard64'
      Images = DataManager.VirtualImageList1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      WordWrap = True
    end
    object btnSettings: TButton
      Left = 3
      Top = 768
      Width = 190
      Height = 52
      Hint = 'Settings'
      Anchors = [akLeft, akBottom]
      Caption = 'Settings'
      ImageIndex = 5
      ImageName = 'settings64'
      Images = DataManager.VirtualImageList1
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
      ImageIndex = 14
      ImageName = 'otherSites64'
      Images = DataManager.VirtualImageList1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnOurSitesClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1966
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    ShowCaption = False
    TabOrder = 1
    DesignSize = (
      1966
      49)
    object Label1: TLabel
      Left = 1462
      Top = 11
      Width = 50
      Height = 21
      Anchors = [akTop, akRight]
      Caption = 'Scope'
    end
    object BitBtn1: TBitBtn
      Left = 3
      Top = 3
      Width = 50
      Height = 40
      Align = alCustom
      Default = True
      ImageIndex = 0
      ImageName = 'menu64'
      Images = DataManager.VirtualImageList1
      TabOrder = 0
      StyleName = 'Calypso'
      OnClick = BitBtn1Click
    end
    object ComboBox1: TComboBox
      Left = 1816
      Top = 9
      Width = 147
      Height = 29
      Align = alCustom
      AutoDropDown = True
      Style = csDropDownList
      Anchors = [akTop, akRight]
      TabOrder = 1
      OnChange = ComboBox1Change
      Items.Strings = (
        'Cattle'
        'Sheep'
        'Pigs'
        'Deer'
        'Goats'
        'Buffalo'
        'Bison'
        'All')
    end
    object ComboBox2: TComboBox
      Left = 1535
      Top = 8
      Width = 263
      Height = 29
      Align = alCustom
      AutoDropDown = True
      Style = csDropDownList
      Anchors = [akTop, akRight]
      ItemIndex = 0
      TabOrder = 2
      Text = 'All'
      OnChange = ComboBox1Change
      Items.Strings = (
        'All'
        'Hunshelf Farm'
        'Underbank Farm'
        'Langsett Farm')
    end
  end
  inline FrameOurSites: TFrameOurSites
    Left = 200
    Top = 49
    Width = 1766
    Height = 830
    Align = alClient
    TabOrder = 2
    inherited Panel1: TPanel
      Width = 1760
    end
    inherited Panel3: TPanel
      Width = 1060
      Height = 776
      inherited DBGrid1: TDBGrid
        Width = 1058
        Height = 711
      end
      inherited Panel2: TPanel
        Top = 712
        Width = 1058
        Height = 63
        DesignSize = (
          1058
          63)
        inherited btnAdd: TButton
          Width = 239
          Height = 59
          Anchors = [akLeft, akTop, akBottom]
          OnClick = FrameOurSitesbtnAddClick
        end
      end
    end
    inherited SplitView2: TSplitView
      Left = 1063
      Height = 770
      DesignSize = (
        700
        770)
      inherited btnCloseSplit2: TBitBtn
        OnClick = FrameOurSitesbtnCloseSplit2Click
      end
    end
  end
end
