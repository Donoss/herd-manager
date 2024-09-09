object FrameOurSites: TFrameOurSites
  Left = 0
  Top = 0
  Width = 1832
  Height = 923
  TabOrder = 0
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1826
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
    Width = 906
    Height = 869
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvNone
    Caption = 'Panel3'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 904
      Height = 867
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alClient
      BorderStyle = bsNone
      DataSource = dsSite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'JetBrains Mono'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
    end
  end
  object SplitView2: TSplitView
    AlignWithMargins = True
    Left = 909
    Top = 57
    Width = 920
    Height = 863
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
    OpenedWidth = 920
    ParentFont = False
    Placement = svpRight
    TabOrder = 2
    DesignSize = (
      920
      863)
    object Label2: TLabel
      Left = 17
      Top = 317
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
      Top = 219
      Width = 80
      Height = 21
      Caption = 'Postcode'
      FocusControl = DBEdit8
    end
    object Label10: TLabel
      Left = 17
      Top = 257
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
    object Panel4: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 914
      Height = 52
      Align = alTop
      BevelEdges = []
      BevelOuter = bvNone
      Caption = 'Details'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'JetBrains Mono'
      Font.Style = [fsBold]
      Locked = True
      ParentFont = False
      TabOrder = 0
      object BitBtn2: TBitBtn
        Left = 0
        Top = -3
        Width = 45
        Height = 40
        ImageIndex = 17
        ImageName = 'navigate_next_64dp_E8EAED'
        Images = DataManager.VirtualImageList1
        Layout = blGlyphRight
        TabOrder = 0
        StyleName = 'Calypso'
        OnClick = BitBtn2Click
      end
    end
    object DBEdit1: TDBEdit
      Left = 176
      Top = 313
      Width = 585
      Height = 29
      DataField = 'OperatorName'
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 176
      Top = 351
      Width = 585
      Height = 29
      DataField = 'OperatorAddress'
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 176
      Top = 386
      Width = 97
      Height = 29
      DataField = 'OperatorPostcode'
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 176
      Top = 61
      Width = 214
      Height = 29
      DataField = 'SiteType'
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 176
      Top = 96
      Width = 340
      Height = 29
      DataField = 'Identifier'
      TabOrder = 5
    end
    object DBEdit6: TDBEdit
      Left = 176
      Top = 138
      Width = 585
      Height = 29
      DataField = 'Name'
      TabOrder = 6
    end
    object DBEdit7: TDBEdit
      Left = 176
      Top = 176
      Width = 585
      Height = 29
      DataField = 'Address'
      TabOrder = 7
    end
    object DBEdit8: TDBEdit
      Left = 176
      Top = 215
      Width = 97
      Height = 29
      DataField = 'Postcode'
      TabOrder = 8
    end
    object DBEdit9: TDBEdit
      Left = 176
      Top = 253
      Width = 97
      Height = 29
      DataField = 'State'
      TabOrder = 9
    end
    object DBGrid2: TDBGrid
      Left = 176
      Top = 440
      Width = 721
      Height = 233
      TabOrder = 10
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'JetBrains Mono'
      TitleFont.Style = []
    end
    object btnCancel: TButton
      Left = 664
      Top = 786
      Width = 121
      Height = 52
      Hint = 'Cancel'
      Anchors = [akRight, akBottom]
      Caption = 'Cancel'
      ImageIndex = 9
      ImageName = 'cancel_64dp_E8EAED_FILL0_wght400_GRAD0_opsz48'
      Images = DataManager.VirtualImageList1
      TabOrder = 11
      OnClick = btnCancelClick
    end
    object btnSave: TButton
      Left = 791
      Top = 786
      Width = 121
      Height = 52
      Hint = 'Edit'
      Anchors = [akRight, akBottom]
      Caption = 'Save'
      ImageIndex = 7
      ImageName = 'save_64dp_E8EAED_FILL0_wght400_GRAD0_opsz48'
      Images = DataManager.VirtualImageList1
      TabOrder = 12
      OnClick = btnSaveClick
    end
    object btnAdd: TButton
      Left = 184
      Top = 786
      Width = 121
      Height = 52
      Hint = 'Add new'
      Anchors = [akRight, akBottom]
      Caption = 'Add'
      ImageIndex = 10
      ImageName = 'add_64dp_E8EAED_FILL0_wght400_GRAD0_opsz48'
      Images = DataManager.VirtualImageList1
      TabOrder = 13
    end
    object btnEdit: TButton
      Left = 311
      Top = 786
      Width = 121
      Height = 52
      Hint = 'Edit'
      Anchors = [akRight, akBottom]
      Caption = 'Edit'
      ImageIndex = 11
      ImageName = 'edit_64dp_E8EAED_FILL0_wght400_GRAD0_opsz48'
      Images = DataManager.VirtualImageList1
      TabOrder = 14
      OnClick = btnEditClick
    end
  end
  object dsSite: TDataSource
    DataSet = AureliusDatasetSite
    Left = 536
    Top = 192
  end
  object AureliusDatasetSite: TAureliusDataset
    FieldDefs = <>
    CreateSelfField = False
    RecordCountMode = Retrieve
    Left = 544
    Top = 432
    DesignClass = 'Sphinx.Entities.TUser'
    object AureliusDatasetSiteId: TStringField
      FieldName = 'Id'
      Visible = False
      Size = 36
    end
    object AureliusDatasetSiteSiteType: TStringField
      DisplayLabel = 'Site Type'
      DisplayWidth = 10
      FieldName = 'SiteType'
      Size = 50
    end
    object AureliusDatasetSiteHoldingNumber: TStringField
      DisplayLabel = 'Holding Number'
      DisplayWidth = 16
      FieldName = 'Identifier'
      Size = 11
    end
    object AureliusDatasetSiteName: TStringField
      DisplayWidth = 60
      FieldName = 'Name'
      Size = 100
    end
    object AureliusDatasetSiteAddress: TStringField
      DisplayWidth = 60
      FieldName = 'Address'
      Size = 255
    end
    object AureliusDatasetSitePostcode: TStringField
      DisplayWidth = 10
      FieldName = 'Postcode'
      Size = 8
    end
    object AureliusDatasetSiteState: TStringField
      DisplayWidth = 8
      FieldName = 'State'
      Size = 15
    end
    object AureliusDatasetSiteOperatorName: TStringField
      DisplayWidth = 60
      FieldName = 'OperatorName'
      Visible = False
      Size = 100
    end
    object AureliusDatasetSiteOperatorAddress: TStringField
      DisplayWidth = 60
      FieldName = 'OperatorAddress'
      Visible = False
      Size = 255
    end
    object AureliusDatasetSiteOperatorPostcode: TStringField
      FieldName = 'OperatorPostcode'
      Visible = False
      Size = 8
    end
    object AureliusDatasetSiteOperatorFlag: TBooleanField
      FieldName = 'OperatorFlag'
      Visible = False
    end
  end
end
