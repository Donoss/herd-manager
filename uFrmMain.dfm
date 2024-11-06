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
  Font.Name = 'JetBrains Mono'
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
      ImageIndex = 3
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
      ImageIndex = 5
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
      ImageIndex = 1
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
      ImageIndex = 0
      ImageName = 'dashboard64'
      Images = DataManager.VirtualImageList1
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
      ImageIndex = 13
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
    Width = 1697
    Height = 49
    Align = alTop
    BevelEdges = [beBottom]
    BevelOuter = bvNone
    ShowCaption = False
    TabOrder = 1
    DesignSize = (
      1697
      49)
    object Label1: TLabel
      Left = 1034
      Top = 11
      Width = 40
      Height = 21
      Anchors = [akTop, akRight]
      Caption = 'Site'
      ExplicitLeft = 1398
    end
    object Label2: TLabel
      Left = 1464
      Top = 11
      Width = 70
      Height = 21
      Anchors = [akTop, akRight]
      Caption = 'Species'
      ExplicitLeft = 1653
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
      Images = DataManager.VirtualImageList1
      TabOrder = 0
      StyleName = 'Calypso'
      OnClick = BitBtn1Click
    end
    object ComboBox1: TComboBox
      Left = 1547
      Top = 9
      Width = 147
      Height = 29
      Align = alCustom
      AutoDropDown = True
      Style = csDropDownList
      Anchors = [akTop, akRight]
      TabOrder = 1
      OnChange = ComboBox1Change
    end
    object ComboBox2: TComboBox
      Left = 1088
      Top = 8
      Width = 360
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
    inherited Panel3: TPanel
      Width = 437
      Height = 991
      ExplicitWidth = 437
      ExplicitHeight = 991
      inherited DBGrid1: TDBGrid
        Width = 435
        Height = 932
      end
      inherited Panel2: TPanel
        Width = 435
        ExplicitWidth = 435
        inherited btnCloseView: TButton
          Left = 383
          ExplicitLeft = 383
        end
      end
    end
    inherited SplitView2: TSplitView
      Left = 437
      Height = 991
      ExplicitLeft = 437
      ExplicitHeight = 991
      inherited Panel4: TPanel
        Height = 934
        ExplicitHeight = 934
      end
      inherited Panel5: TPanel
        Height = 934
        ExplicitHeight = 934
        inherited GroupBox1: TGroupBox
          inherited DBText1: TDBText
            Height = 21
            ExplicitHeight = 21
          end
          inherited DBText2: TDBText
            Height = 21
            ExplicitHeight = 21
          end
          inherited DBText3: TDBText
            Height = 21
            ExplicitHeight = 21
          end
          inherited DBText4: TDBText
            Height = 21
            ExplicitHeight = 21
          end
          inherited DBText5: TDBText
            Height = 21
            ExplicitHeight = 21
          end
          inherited DBText6: TDBText
            Height = 21
            ExplicitHeight = 21
          end
        end
        inherited GroupBox3: TGroupBox
          Height = 259
          ExplicitHeight = 259
        end
        inherited GroupBox2: TGroupBox
          inherited Label3: TLabel
            Top = 72
            ExplicitTop = 72
          end
          inherited DBText7: TDBText
            Height = 21
            ExplicitHeight = 21
          end
          inherited DBText8: TDBText
            Height = 21
            ExplicitHeight = 21
          end
          inherited DBText9: TDBText
            Height = 21
            ExplicitHeight = 21
          end
        end
      end
    end
  end
end
