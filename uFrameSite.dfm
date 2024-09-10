object FrameOurSites: TFrameOurSites
  Left = 0
  Top = 0
  Width = 1958
  Height = 875
  TabOrder = 0
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1952
    Height = 48
    Align = alTop
    BevelEdges = []
    Caption = 'Our Sites'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'JetBrains Mono'
    Font.Style = [fsBold]
    Locked = True
    ParentFont = False
    TabOrder = 0
  end
  object Panel3: TPanel
    Left = 0
    Top = 54
    Width = 1252
    Height = 821
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvNone
    Caption = 'Panel3'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1250
      Height = 763
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alClient
      BorderStyle = bsNone
      DataSource = DataManager.dsSite
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
      Top = 764
      Width = 1250
      Height = 56
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'Panel2'
      ShowCaption = False
      TabOrder = 1
      object btnAdd: TButton
        Left = 2
        Top = 2
        Width = 255
        Height = 52
        Caption = 'Create new Site'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'JetBrains Mono'
        Font.Style = []
        ImageAlignment = iaRight
        ImageIndex = 10
        ImageName = 'add64'
        Images = DataManager.VirtualImageList1
        ParentFont = False
        TabOrder = 0
        OnClick = btnAddClick
      end
    end
  end
  object SplitView2: TSplitView
    AlignWithMargins = True
    Left = 1255
    Top = 57
    Width = 700
    Height = 815
    AnimationDelay = 5
    AnimationStep = 50
    BevelEdges = []
    CloseStyle = svcCompact
    FullRepaint = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'JetBrains Mono'
    Font.Style = []
    OpenedWidth = 700
    ParentFont = False
    Placement = svpRight
    TabOrder = 2
    OnClosing = SplitView2Closing
    OnOpening = SplitView2Opening
    DesignSize = (
      700
      815)
    object btnCloseSplit2: TBitBtn
      Left = 0
      Top = 0
      Width = 50
      Height = 44
      ImageIndex = 16
      ImageName = 'next64'
      Images = DataManager.VirtualImageList1
      Layout = blGlyphRight
      TabOrder = 0
      StyleName = 'Calypso'
      OnClick = btnCloseSplit2Click
    end
    object GroupBox1: TGroupBox
      Left = 55
      Top = 47
      Width = 595
      Height = 257
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Site'
      TabOrder = 1
      object Label5: TLabel
        Left = 17
        Top = 33
        Width = 90
        Height = 21
        Caption = 'Site Type'
        FocusControl = DBEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'JetBrains Mono'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 17
        Top = 69
        Width = 140
        Height = 21
        Caption = 'Holding Number'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'JetBrains Mono'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 17
        Top = 104
        Width = 40
        Height = 21
        Caption = 'Name'
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'JetBrains Mono'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 17
        Top = 139
        Width = 70
        Height = 21
        Caption = 'Address'
        FocusControl = DBEdit7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'JetBrains Mono'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 17
        Top = 174
        Width = 80
        Height = 21
        Caption = 'Postcode'
        FocusControl = DBEdit8
      end
      object Label10: TLabel
        Left = 17
        Top = 210
        Width = 50
        Height = 21
        Caption = 'State'
        FocusControl = DBEdit9
      end
      object DBEdit4: TDBEdit
        Left = 176
        Top = 30
        Width = 214
        Height = 29
        DataField = 'SiteType'
        DataSource = DataManager.dsSite
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit5: TDBEdit
        Left = 176
        Top = 65
        Width = 340
        Height = 29
        DataField = 'Identifier'
        DataSource = DataManager.dsSite
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit6: TDBEdit
        Left = 176
        Top = 100
        Width = 409
        Height = 29
        DataField = 'Name'
        DataSource = DataManager.dsSite
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit7: TDBEdit
        Left = 176
        Top = 135
        Width = 409
        Height = 29
        DataField = 'Address'
        DataSource = DataManager.dsSite
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit8: TDBEdit
        Left = 176
        Top = 170
        Width = 97
        Height = 29
        DataField = 'Postcode'
        DataSource = DataManager.dsSite
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit9: TDBEdit
        Left = 176
        Top = 206
        Width = 97
        Height = 29
        DataField = 'State'
        DataSource = DataManager.dsSite
        ReadOnly = True
        TabOrder = 5
      end
    end
    object GroupBox2: TGroupBox
      Left = 56
      Top = 320
      Width = 594
      Height = 153
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Keeper'
      TabOrder = 2
      object Label2: TLabel
        Left = 17
        Top = 37
        Width = 40
        Height = 21
        Caption = 'Name'
        FocusControl = DBEdit1
      end
      object Label3: TLabel
        Left = 17
        Top = 68
        Width = 70
        Height = 21
        Caption = 'Address'
        FocusControl = DBEdit2
      end
      object Label4: TLabel
        Left = 17
        Top = 103
        Width = 80
        Height = 21
        Caption = 'Postcode'
        FocusControl = DBEdit3
      end
      object DBEdit1: TDBEdit
        Left = 176
        Top = 29
        Width = 409
        Height = 29
        DataField = 'OperatorName'
        DataSource = DataManager.dsSite
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 176
        Top = 64
        Width = 409
        Height = 29
        DataField = 'OperatorAddress'
        DataSource = DataManager.dsSite
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 176
        Top = 99
        Width = 97
        Height = 29
        DataField = 'OperatorPostcode'
        DataSource = DataManager.dsSite
        ReadOnly = True
        TabOrder = 2
      end
    end
    object GroupBox3: TGroupBox
      Left = 56
      Top = 488
      Width = 594
      Height = 265
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Contacts'
      TabOrder = 3
      DesignSize = (
        594
        265)
      object DBGrid2: TDBGrid
        Left = 16
        Top = 23
        Width = 562
        Height = 226
        Anchors = [akLeft, akTop, akRight, akBottom]
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
