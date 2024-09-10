object FrameOurSites: TFrameOurSites
  Left = 0
  Top = 0
  Width = 1981
  Height = 875
  TabOrder = 0
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1975
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
    Width = 1175
    Height = 821
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvNone
    Caption = 'Panel3'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 57
      Width = 1173
      Height = 763
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alClient
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'JetBrains Mono'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
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
      Width = 1173
      Height = 56
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel2'
      ShowCaption = False
      TabOrder = 1
      DesignSize = (
        1173
        56)
      object btnAdd: TButton
        Left = 875
        Top = 2
        Width = 145
        Height = 50
        Anchors = [akRight, akBottom]
        Caption = 'Add'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'JetBrains Mono'
        Font.Style = []
        ImageAlignment = iaRight
        ImageIndex = 10
        ImageName = 'add_64dp_E8EAED_FILL0_wght400_GRAD0_opsz48'
        Images = DataManager.VirtualImageList1
        ParentFont = False
        TabOrder = 0
        OnClick = btnAddClick
      end
      object btnEdit: TButton
        Left = 1026
        Top = 2
        Width = 145
        Height = 50
        Anchors = [akRight, akBottom]
        Cancel = True
        Caption = 'Edit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'JetBrains Mono'
        Font.Style = []
        ImageAlignment = iaRight
        ImageIndex = 11
        ImageName = 'edit_64dp_E8EAED_FILL0_wght400_GRAD0_opsz48'
        Images = DataManager.VirtualImageList1
        ModalResult = 2
        ParentFont = False
        TabOrder = 1
        OnClick = btnEditClick
      end
    end
  end
  object SplitView2: TSplitView
    AlignWithMargins = True
    Left = 1178
    Top = 57
    Width = 800
    Height = 815
    AnimationDelay = 5
    AnimationStep = 50
    BevelEdges = []
    CompactWidth = 60
    FullRepaint = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'JetBrains Mono'
    Font.Style = []
    OpenedWidth = 800
    ParentFont = False
    Placement = svpRight
    TabOrder = 2
    object Label2: TLabel
      Left = 17
      Top = 320
      Width = 110
      Height = 21
      Caption = 'Keeper Name'
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 19
      Top = 355
      Width = 70
      Height = 21
      Caption = 'Address'
      FocusControl = DBEdit2
    end
    object Label4: TLabel
      Left = 19
      Top = 390
      Width = 80
      Height = 21
      Caption = 'Postcode'
      FocusControl = DBEdit3
    end
    object Label5: TLabel
      Left = 17
      Top = 65
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
      Top = 100
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
      Top = 142
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
      Top = 180
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
      Top = 214
      Width = 80
      Height = 21
      Caption = 'Postcode'
      FocusControl = DBEdit8
    end
    object Label10: TLabel
      Left = 17
      Top = 265
      Width = 50
      Height = 21
      Caption = 'State'
      FocusControl = DBEdit9
    end
    object Label11: TLabel
      Left = 19
      Top = 440
      Width = 80
      Height = 21
      Caption = 'Contacts'
      FocusControl = DBEdit3
    end
    object DBEdit1: TDBEdit
      Left = 176
      Top = 316
      Width = 473
      Height = 29
      DataField = 'OperatorName'
      DataSource = DataManager.dsSite
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 176
      Top = 351
      Width = 473
      Height = 29
      DataField = 'OperatorAddress'
      DataSource = DataManager.dsSite
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 176
      Top = 386
      Width = 97
      Height = 29
      DataField = 'OperatorPostcode'
      DataSource = DataManager.dsSite
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 176
      Top = 61
      Width = 214
      Height = 29
      DataField = 'SiteType'
      DataSource = DataManager.dsSite
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 176
      Top = 96
      Width = 340
      Height = 29
      DataField = 'Identifier'
      DataSource = DataManager.dsSite
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 176
      Top = 141
      Width = 473
      Height = 29
      DataField = 'Name'
      DataSource = DataManager.dsSite
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 176
      Top = 176
      Width = 473
      Height = 29
      DataField = 'Address'
      DataSource = DataManager.dsSite
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 176
      Top = 211
      Width = 97
      Height = 29
      DataField = 'Postcode'
      DataSource = DataManager.dsSite
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 176
      Top = 261
      Width = 97
      Height = 29
      DataField = 'State'
      DataSource = DataManager.dsSite
      TabOrder = 8
    end
    object DBGrid2: TDBGrid
      Left = 176
      Top = 440
      Width = 473
      Height = 257
      TabOrder = 9
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'JetBrains Mono'
      TitleFont.Style = []
    end
    object btnCloseSplit2: TBitBtn
      Left = 0
      Top = -3
      Width = 49
      Height = 44
      ImageIndex = 17
      ImageName = 'navigate_next_64dp_E8EAED'
      Images = DataManager.VirtualImageList1
      Layout = blGlyphRight
      TabOrder = 10
      StyleName = 'Calypso'
      OnClick = btnCloseSplit2Click
    end
  end
end
