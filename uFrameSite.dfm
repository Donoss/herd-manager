object FrameOurSites: TFrameOurSites
  Left = 0
  Top = 0
  Width = 1664
  Height = 926
  Align = alClient
  TabOrder = 0
  Visible = False
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 464
    Height = 926
    Align = alClient
    AutoSize = True
    BevelInner = bvRaised
    BevelOuter = bvNone
    Caption = 'Panel3'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 58
      Width = 462
      Height = 867
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alClient
      BorderStyle = bsNone
      DataSource = SiteData.dsSite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'JetBrains Mono'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'JetBrains Mono'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 462
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel2'
      ShowCaption = False
      TabOrder = 1
      DesignSize = (
        462
        57)
      object btnCloseView: TButton
        Left = 410
        Top = 0
        Width = 50
        Height = 57
        Anchors = [akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'JetBrains Mono'
        Font.Style = []
        ImageAlignment = iaCenter
        ImageIndex = 15
        ImageName = 'next64'
        Images = DataManager.VirtualImageList2
        ParentFont = False
        TabOrder = 0
        OnClick = btnCloseViewClick
      end
    end
  end
  object SplitView2: TSplitView
    Left = 464
    Top = 0
    Width = 1200
    Height = 926
    AnimationDelay = 5
    AnimationStep = 200
    BevelEdges = []
    CloseStyle = svcCompact
    CompactWidth = 0
    FullRepaint = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'JetBrains Mono'
    Font.Style = []
    OpenedWidth = 1200
    ParentFont = False
    Placement = svpRight
    TabOrder = 1
    OnClosing = SplitView2Closing
    OnOpening = SplitView2Opening
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 1200
      Height = 57
      Align = alTop
      AutoSize = True
      BevelOuter = bvLowered
      Caption = 'Our Sites'
      TabOrder = 0
      object btnEdit: TButton
        Left = 1099
        Top = 1
        Width = 50
        Height = 55
        Align = alRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'JetBrains Mono'
        Font.Style = []
        ImageAlignment = iaCenter
        ImageIndex = 10
        ImageName = 'edit64'
        Images = DataManager.VirtualImageList2
        ParentFont = False
        TabOrder = 0
        OnClick = btnEditClick
      end
      object btnAdd: TButton
        Left = 1149
        Top = 1
        Width = 50
        Height = 55
        Align = alRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'JetBrains Mono'
        Font.Style = []
        ImageAlignment = iaCenter
        ImageIndex = 9
        ImageName = 'add64'
        Images = DataManager.VirtualImageList2
        ParentFont = False
        TabOrder = 1
        OnClick = btnAddClick
      end
    end
    object Panel4: TPanel
      Left = 1071
      Top = 57
      Width = 129
      Height = 869
      Align = alRight
      BevelOuter = bvNone
      Caption = 'Panel1'
      ShowCaption = False
      TabOrder = 1
      object DBCheckBox1: TDBCheckBox
        Left = 0
        Top = 8
        Width = 97
        Height = 17
        Caption = 'Site'
        DataField = 'SiteDetailsFlag'
        DataSource = SiteData.dsSite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'JetBrains Mono'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBCheckBox2: TDBCheckBox
        Left = 0
        Top = 31
        Width = 97
        Height = 17
        Caption = 'Keeper'
        DataField = 'OperatorDetailsFlag'
        DataSource = SiteData.dsSite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'JetBrains Mono'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBCheckBox3: TDBCheckBox
        Left = 0
        Top = 54
        Width = 97
        Height = 17
        Caption = 'Contacts'
        DataField = 'OperatorDetailsFlag'
        DataSource = SiteData.dsSite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'JetBrains Mono'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 57
      Width = 1071
      Height = 869
      Align = alClient
      Caption = 'Panel5'
      ShowCaption = False
      TabOrder = 2
      ExplicitLeft = 3
      ExplicitTop = 64
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 13
        Top = 2
        Width = 1045
        Height = 248
        Margins.Left = 12
        Margins.Top = 1
        Margins.Right = 12
        Margins.Bottom = 12
        Align = alTop
        Caption = 'Site'
        TabOrder = 0
        ExplicitLeft = 24
        ExplicitTop = 6
        ExplicitWidth = 1017
        DesignSize = (
          1045
          248)
        object Label5: TLabel
          Left = 17
          Top = 33
          Width = 40
          Height = 21
          Caption = 'Type'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'JetBrains Mono'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 17
          Top = 69
          Width = 140
          Height = 21
          Caption = 'Holding Number'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'JetBrains Mono'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 17
          Top = 104
          Width = 40
          Height = 21
          Caption = 'Name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'JetBrains Mono'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 17
          Top = 139
          Width = 70
          Height = 21
          Caption = 'Address'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'JetBrains Mono'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 17
          Top = 174
          Width = 80
          Height = 21
          Caption = 'Postcode'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'JetBrains Mono'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 17
          Top = 209
          Width = 50
          Height = 21
          Caption = 'State'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'JetBrains Mono'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 176
          Top = 33
          Width = 829
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'SiteType'
          DataSource = SiteData.dsSite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 801
        end
        object DBText2: TDBText
          Left = 176
          Top = 69
          Width = 829
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'Identifier'
          DataSource = SiteData.dsSite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 801
        end
        object DBText3: TDBText
          Left = 176
          Top = 104
          Width = 829
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'Name'
          DataSource = SiteData.dsSite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 801
        end
        object DBText4: TDBText
          Left = 176
          Top = 139
          Width = 829
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'Address'
          DataSource = SiteData.dsSite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 801
        end
        object DBText5: TDBText
          Left = 176
          Top = 174
          Width = 829
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'Postcode'
          DataSource = SiteData.dsSite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 801
        end
        object DBText6: TDBText
          Left = 176
          Top = 209
          Width = 829
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'State'
          DataSource = SiteData.dsSite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 801
        end
      end
      object GroupBox3: TGroupBox
        AlignWithMargins = True
        Left = 13
        Top = 657
        Width = 1045
        Height = 194
        Margins.Left = 12
        Margins.Top = 12
        Margins.Right = 12
        Margins.Bottom = 12
        Align = alTop
        Caption = 'Contacts'
        TabOrder = 1
        ExplicitLeft = 24
        ExplicitTop = 655
        ExplicitWidth = 1017
      end
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 13
        Top = 274
        Width = 1045
        Height = 142
        Margins.Left = 12
        Margins.Top = 12
        Margins.Right = 12
        Margins.Bottom = 12
        Align = alTop
        Caption = 'Keeper'
        TabOrder = 2
        ExplicitLeft = 24
        ExplicitTop = 275
        ExplicitWidth = 1017
        DesignSize = (
          1045
          142)
        object Label2: TLabel
          Left = 16
          Top = 40
          Width = 40
          Height = 21
          Caption = 'Name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'JetBrains Mono'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 16
          Top = 70
          Width = 70
          Height = 21
          Caption = 'Address'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'JetBrains Mono'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 16
          Top = 104
          Width = 80
          Height = 21
          Caption = 'Postcode'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'JetBrains Mono'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText7: TDBText
          Left = 176
          Top = 40
          Width = 829
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'OperatorName'
          DataSource = SiteData.dsSite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 801
        end
        object DBText8: TDBText
          Left = 176
          Top = 72
          Width = 829
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'OperatorAddress'
          DataSource = SiteData.dsSite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 801
        end
        object DBText9: TDBText
          Left = 176
          Top = 104
          Width = 829
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'OperatorPostcode'
          DataSource = SiteData.dsSite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 801
        end
      end
      object GroupBox4: TGroupBox
        AlignWithMargins = True
        Left = 13
        Top = 440
        Width = 1045
        Height = 193
        Margins.Left = 12
        Margins.Top = 12
        Margins.Right = 12
        Margins.Bottom = 12
        Align = alTop
        Caption = 'Marks'
        TabOrder = 3
        ExplicitLeft = 24
        ExplicitWidth = 1017
        object DBGrid2: TDBGrid
          AlignWithMargins = True
          Left = 14
          Top = 35
          Width = 1017
          Height = 144
          Margins.Left = 12
          Margins.Top = 12
          Margins.Right = 12
          Margins.Bottom = 12
          Align = alClient
          DataSource = SiteData.dsSiteMark
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'JetBrains Mono'
          TitleFont.Style = []
        end
      end
    end
  end
end
