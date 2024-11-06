object FrmMaintSite: TFrmMaintSite
  Left = 0
  Top = 0
  Caption = 'Add new Site'
  ClientHeight = 688
  ClientWidth = 1117
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'JetBrains Mono'
  Font.Style = []
  Position = poDesktopCenter
  StyleElements = [seFont, seClient]
  OnShow = FormShow
  TextHeight = 16
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 1117
    Height = 647
    ActivePage = TabSheetSite
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'JetBrains Mono'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    TabOrder = 0
    object TabSheetSite: TTabSheet
      Caption = 'Site '
      OnShow = TabSheetSiteShow
      object Label12: TLabel
        AlignWithMargins = True
        Left = 12
        Top = 290
        Width = 1085
        Height = 147
        Margins.Left = 12
        Margins.Top = 12
        Margins.Right = 12
        Margins.Bottom = 12
        Align = alTop
        Caption = 
          #13#10'Enter details of the site.  '#13#10#13#10'The holding number you can obt' +
          'ain from the Rural Payments Agency (RPA) by calling 0114 280 220' +
          '5.  '#13#10#13#10'Enter a user friendly name for the site, this is a name ' +
          'you normally use to refer to the site e.g.  Hunshelf Lodge Farm '
        WordWrap = True
        ExplicitWidth = 1080
      end
      object Panel5: TPanel
        Left = 0
        Top = 561
        Width = 1109
        Height = 50
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Panel2'
        ShowCaption = False
        TabOrder = 1
        object btnSiteCancel: TButton
          Left = 967
          Top = 0
          Width = 142
          Height = 50
          Align = alRight
          Cancel = True
          Caption = 'Cancel'
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
          TabOrder = 2
          OnClick = btnSiteCancelClick
        end
        object btnSiteNext: TButton
          Left = 0
          Top = 0
          Width = 342
          Height = 50
          Align = alLeft
          Caption = 'Continue to enter Keeper details'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageAlignment = iaRight
          ImageIndex = 15
          ImageName = 'next64'
          Images = DataManager.VirtualImageList1
          ParentFont = False
          TabOrder = 0
          OnClick = btnSiteNextClick
        end
        object btnSiteSave: TButton
          Left = 825
          Top = 0
          Width = 142
          Height = 50
          Align = alRight
          Caption = 'Save'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageIndex = 6
          ImageName = 'save64'
          Images = DataManager.VirtualImageList1
          ParentFont = False
          TabOrder = 1
          OnClick = btnSiteSaveClick
        end
      end
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 12
        Top = 12
        Width = 1085
        Height = 254
        Margins.Left = 12
        Margins.Top = 12
        Margins.Right = 12
        Margins.Bottom = 12
        Align = alTop
        Caption = 'Site'
        TabOrder = 0
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
        object DBEdit5: TDBEdit
          Left = 176
          Top = 65
          Width = 340
          Height = 29
          DataField = 'Identifier'
          DataSource = SiteData.dsSite
          TabOrder = 1
          OnExit = DBEdit5Exit
        end
        object DBEdit6: TDBEdit
          Left = 176
          Top = 100
          Width = 409
          Height = 29
          DataField = 'Name'
          DataSource = SiteData.dsSite
          TabOrder = 2
          OnExit = DBEdit6Exit
        end
        object DBEdit7: TDBEdit
          Left = 176
          Top = 135
          Width = 409
          Height = 29
          DataField = 'Address'
          DataSource = SiteData.dsSite
          TabOrder = 3
          OnExit = DBEdit7Exit
        end
        object DBEdit8: TDBEdit
          Left = 176
          Top = 170
          Width = 97
          Height = 29
          DataField = 'Postcode'
          DataSource = SiteData.dsSite
          TabOrder = 4
          OnExit = DBEdit8Exit
        end
        object DBEdit9: TDBEdit
          Left = 176
          Top = 206
          Width = 97
          Height = 29
          TabStop = False
          DataField = 'State'
          DataSource = SiteData.dsSite
          ReadOnly = True
          TabOrder = 5
        end
        object DBComboBox1: TDBComboBox
          Left = 176
          Top = 30
          Width = 241
          Height = 29
          Style = csDropDownList
          DataField = 'SiteType'
          DataSource = SiteData.dsSite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          Items.Strings = (
            'Abattoir'
            'Assembly Centre'
            'Collection Centre'
            'Farm'
            'Market'
            'Performance Location')
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Keeper'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'JetBrains Mono'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object Label11: TLabel
        AlignWithMargins = True
        Left = 12
        Top = 189
        Width = 1085
        Height = 126
        Margins.Left = 12
        Margins.Top = 12
        Margins.Right = 12
        Margins.Bottom = 12
        Align = alTop
        Caption = 
          #13#10'Enter the details of the registered Livestock Keeper as notifi' +
          'ed to Animal and Plant Health Agency (APHA).'#13#10#13#10'If you need to c' +
          'ontact the APHA the contact details are:'#13#10'1.  Livestock Registra' +
          'tion 0114 280 3003'#13#10'2.  Disease notification 0114 280 8776'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'JetBrains Mono'
        Font.Style = []
        ParentFont = False
        WordWrap = True
        ExplicitWidth = 1060
      end
      object Panel6: TPanel
        Left = 0
        Top = 561
        Width = 1109
        Height = 50
        Align = alBottom
        AutoSize = True
        BevelOuter = bvNone
        Caption = 'Panel2'
        ShowCaption = False
        TabOrder = 1
        object btnKeeperPrevious: TButton
          Left = 0
          Top = 0
          Width = 263
          Height = 50
          Align = alLeft
          Caption = 'Return to Site details'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageIndex = 14
          ImageName = 'previous64'
          Images = DataManager.VirtualImageList1
          ParentFont = False
          TabOrder = 0
          OnClick = btnKeeperPreviousClick
        end
        object btnKeeperSave: TButton
          Left = 825
          Top = 0
          Width = 142
          Height = 50
          Align = alRight
          Caption = 'Save'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageIndex = 6
          ImageName = 'save64'
          Images = DataManager.VirtualImageList1
          ModalResult = 2
          ParentFont = False
          TabOrder = 2
          OnClick = btnKeeperSaveClick
        end
        object btnKeeperNext: TButton
          Left = 263
          Top = 0
          Width = 342
          Height = 50
          Align = alLeft
          Caption = 'Continue to enter Mark details'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageAlignment = iaRight
          ImageIndex = 15
          ImageName = 'next64'
          Images = DataManager.VirtualImageList1
          ParentFont = False
          TabOrder = 1
          OnClick = btnKeeperNextClick
        end
        object btnKeeperCancel: TButton
          Left = 967
          Top = 0
          Width = 142
          Height = 50
          Align = alRight
          Cancel = True
          Caption = 'Cancel'
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
          TabOrder = 3
          OnClick = btnKeeperCancelClick
        end
      end
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 12
        Top = 12
        Width = 1085
        Height = 153
        Margins.Left = 12
        Margins.Top = 12
        Margins.Right = 12
        Margins.Bottom = 12
        Align = alTop
        Caption = 'Keeper'
        TabOrder = 0
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
          DataSource = SiteData.dsSite
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 176
          Top = 64
          Width = 409
          Height = 29
          DataField = 'OperatorAddress'
          DataSource = SiteData.dsSite
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 176
          Top = 99
          Width = 97
          Height = 29
          DataField = 'OperatorPostcode'
          DataSource = SiteData.dsSite
          TabOrder = 2
        end
      end
    end
    object TabSheetMarks: TTabSheet
      Margins.Left = 12
      Margins.Top = 12
      Margins.Right = 12
      Margins.Bottom = 12
      Caption = 'Marks'
      ImageIndex = -1
      object Label13: TLabel
        AlignWithMargins = True
        Left = 12
        Top = 362
        Width = 1085
        Height = 21
        Margins.Left = 12
        Margins.Top = 12
        Margins.Right = 12
        Margins.Bottom = 12
        Align = alTop
        Caption = 
          'Your registed Herd and Flock Marks.  You can add, amend or remov' +
          'e a mark using the buttons in the header.'
        WordWrap = True
        ExplicitWidth = 1050
      end
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 12
        Top = 69
        Width = 1085
        Height = 269
        Margins.Left = 12
        Margins.Top = 12
        Margins.Right = 12
        Margins.Bottom = 12
        Align = alTop
        DataSource = SiteData.dsSiteMark
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'JetBrains Mono'
        TitleFont.Style = []
      end
      object Panel2: TPanel
        Left = 0
        Top = 561
        Width = 1109
        Height = 50
        Align = alBottom
        AutoSize = True
        BevelOuter = bvNone
        Caption = 'Panel2'
        ShowCaption = False
        TabOrder = 1
        object Button1: TButton
          Left = 0
          Top = 0
          Width = 263
          Height = 50
          Align = alLeft
          Caption = ' Return to Keeper details'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageIndex = 14
          ImageName = 'previous64'
          Images = DataManager.VirtualImageList1
          ParentFont = False
          TabOrder = 0
          OnClick = btnKeeperPreviousClick
        end
        object Button2: TButton
          Left = 825
          Top = 0
          Width = 142
          Height = 50
          Align = alRight
          Caption = 'Save'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageIndex = 6
          ImageName = 'save64'
          Images = DataManager.VirtualImageList1
          ModalResult = 2
          ParentFont = False
          TabOrder = 2
          OnClick = btnKeeperSaveClick
        end
        object Button3: TButton
          Left = 263
          Top = 0
          Width = 342
          Height = 50
          Align = alLeft
          Caption = 'Continue to enter Contact details'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageAlignment = iaRight
          ImageIndex = 15
          ImageName = 'next64'
          Images = DataManager.VirtualImageList1
          ParentFont = False
          TabOrder = 1
          OnClick = btnKeeperNextClick
        end
        object Button4: TButton
          Left = 967
          Top = 0
          Width = 142
          Height = 50
          Align = alRight
          Cancel = True
          Caption = 'Cancel'
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
          TabOrder = 3
          OnClick = btnKeeperCancelClick
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1109
        Height = 57
        Align = alTop
        AutoSize = True
        BevelOuter = bvLowered
        Caption = 'Registered Marks'
        TabOrder = 2
        object btnEdit: TButton
          Left = 1008
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
          Left = 1058
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
    end
    object TabSheet3: TTabSheet
      Caption = 'Contacts'
      ImageIndex = 2
      DesignSize = (
        1109
        611)
      object Label1: TLabel
        AlignWithMargins = True
        Left = 6
        Top = 251
        Width = 970
        Height = 84
        Margins.Left = 12
        Margins.Top = 12
        Margins.Right = 12
        Margins.Bottom = 12
        Anchors = [akLeft, akTop, akRight]
        Caption = 
          'Enter the details of any persons associated with the site who ma' +
          'y need to be contected about its operation.'#13#13'You can also enter ' +
          'contact preferences here.'
        WordWrap = True
      end
      object Panel7: TPanel
        Left = 0
        Top = 561
        Width = 1109
        Height = 50
        Align = alBottom
        AutoSize = True
        BevelOuter = bvNone
        Caption = 'Panel2'
        ShowCaption = False
        TabOrder = 0
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1117
    Height = 41
    Align = alTop
    Alignment = taLeftJustify
    Caption = '  Panel1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'JetBrains Mono'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DataSource1: TDataSource
    DataSet = SiteData.AureliusDatasetSite
    OnDataChange = DataSource1DataChange
    Left = 604
    Top = 521
  end
end
