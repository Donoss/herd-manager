object FrmMarkDialog: TFrmMarkDialog
  Left = 0
  Top = 0
  Caption = 'Add new Mark'
  ClientHeight = 181
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'JetBrains Mono'
  Font.Style = []
  Position = poDesktopCenter
  StyleElements = [seFont, seClient]
  TextHeight = 16
  object Label5: TLabel
    Left = 25
    Top = 33
    Width = 70
    Height = 21
    Caption = 'Species'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'JetBrains Mono'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 25
    Top = 69
    Width = 40
    Height = 21
    Caption = 'Mark'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'JetBrains Mono'
    Font.Style = []
    ParentFont = False
  end
  object Panel5: TPanel
    Left = 0
    Top = 131
    Width = 457
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 0
    ExplicitTop = 561
    ExplicitWidth = 1109
    object btnSave: TButton
      Left = 408
      Top = 0
      Width = 49
      Height = 50
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'JetBrains Mono'
      Font.Style = []
      ImageIndex = 6
      ImageName = 'save64'
      Images = DataManager.VirtualImageList1
      ParentFont = False
      TabOrder = 0
      OnClick = btnSaveClick
    end
    object btnCancel: TButton
      Left = 357
      Top = 0
      Width = 51
      Height = 50
      Align = alRight
      Cancel = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'JetBrains Mono'
      Font.Style = []
      ImageIndex = 8
      ImageName = 'cancel64'
      Images = DataManager.VirtualImageList1
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
      OnClick = btnCancelClick
      ExplicitLeft = 264
    end
  end
  object DBEdit5: TDBEdit
    Left = 184
    Top = 65
    Width = 241
    Height = 29
    DataField = 'Mark'
    DataSource = SiteData.dsSiteMark
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'JetBrains Mono'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnExit = DBEdit5Exit
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 184
    Top = 30
    Width = 145
    Height = 29
    DataField = 'SpeciesId'
    DataSource = SiteData.dsSiteMark
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'JetBrains Mono'
    Font.Style = []
    KeyField = 'Id'
    ListField = 'Species'
    ListSource = AnimalData.dsSpecies
    ParentFont = False
    TabOrder = 2
  end
  object DataSource1: TDataSource
    DataSet = SiteData.AureliusDatasetSite
    Left = 116
    Top = 49
  end
end
