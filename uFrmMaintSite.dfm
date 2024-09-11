object FrmMaintSite: TFrmMaintSite
  Left = 0
  Top = 0
  Caption = 'Add new Site'
  ClientHeight = 559
  ClientWidth = 1262
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 129
    Top = 0
    Width = 1133
    Height = 559
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'JetBrains Mono'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Site'
      DesignSize = (
        1125
        523)
      object Label12: TLabel
        Left = 22
        Top = 279
        Width = 1093
        Height = 147
        Anchors = [akLeft, akTop, akRight]
        Caption = 
          'Enter details of the site.  '#13#13'The holding number you can obtain ' +
          'from the Rural Payments Agency (RPA) by calling 0114 280 2205.  ' +
          #13#13'Enter a user friendly name for the site, this is a name you no' +
          'rmally use to refer to the site e.g.  Hunshelf Lodge Farm '
        WordWrap = True
      end
      object Panel2: TPanel
        Left = 0
        Top = 473
        Width = 1125
        Height = 50
        Align = alBottom
        AutoSize = True
        BevelOuter = bvNone
        Caption = 'Panel2'
        ShowCaption = False
        TabOrder = 0
        DesignSize = (
          1125
          50)
        object Button1: TButton
          Left = 835
          Top = 0
          Width = 286
          Height = 50
          Anchors = [akRight, akBottom]
          Cancel = True
          Caption = 'Cancel and close the window.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageIndex = 9
          ImageName = 'cancel64'
          Images = DataManager.VirtualImageList1
          ModalResult = 2
          ParentFont = False
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button3: TButton
          Left = 487
          Top = 0
          Width = 342
          Height = 50
          Anchors = [akRight, akBottom]
          Caption = 'Continue to enter Keeper details or'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageIndex = 16
          ImageName = 'next64'
          Images = DataManager.VirtualImageList1
          ParentFont = False
          TabOrder = 1
          OnClick = Button3Click
        end
        object Button9: TButton
          Left = 274
          Top = 0
          Width = 207
          Height = 50
          Anchors = [akRight, akBottom]
          Caption = 'Save and close or '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageIndex = 7
          ImageName = 'save64'
          Images = DataManager.VirtualImageList1
          ModalResult = 2
          ParentFont = False
          TabOrder = 2
          OnClick = Button9Click
        end
      end
      object GroupBox1: TGroupBox
        Left = 22
        Top = 3
        Width = 1088
        Height = 254
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Site'
        TabOrder = 1
        object Label5: TLabel
          Left = 17
          Top = 33
          Width = 90
          Height = 21
          Caption = 'Site Type'
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
          DataSource = DataManager.dsSite
          TabOrder = 0
        end
        object DBEdit6: TDBEdit
          Left = 176
          Top = 100
          Width = 409
          Height = 29
          DataField = 'Name'
          DataSource = DataManager.dsSite
          TabOrder = 1
        end
        object DBEdit7: TDBEdit
          Left = 176
          Top = 135
          Width = 409
          Height = 29
          DataField = 'Address'
          DataSource = DataManager.dsSite
          TabOrder = 2
        end
        object DBEdit8: TDBEdit
          Left = 176
          Top = 170
          Width = 97
          Height = 29
          DataField = 'Postcode'
          DataSource = DataManager.dsSite
          TabOrder = 3
        end
        object DBEdit9: TDBEdit
          Left = 176
          Top = 206
          Width = 97
          Height = 29
          DataField = 'State'
          DataSource = DataManager.dsSite
          ReadOnly = True
          TabOrder = 4
        end
        object DBComboBox1: TDBComboBox
          Left = 176
          Top = 30
          Width = 241
          Height = 29
          Style = csDropDownList
          DataField = 'SiteType'
          DataSource = DataManager.dsSite
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
          TabOrder = 5
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
      DesignSize = (
        1125
        523)
      object Label11: TLabel
        Left = 15
        Top = 176
        Width = 1093
        Height = 126
        Anchors = [akLeft, akTop, akRight]
        Caption = 
          'Enter the details of the registered Livestock Keeper as notified' +
          ' to Animal and Plant Health Agency (APHA).'#13#13'If you need to conta' +
          'ct the APHA the contact details are:'#13'1.  Livestock Registration ' +
          '0114 280 3003'#13'2.  Desease notification 0114 280 8776'
        WordWrap = True
      end
      object Panel3: TPanel
        Left = 0
        Top = 473
        Width = 1125
        Height = 50
        Align = alBottom
        AutoSize = True
        BevelOuter = bvNone
        Caption = 'Panel2'
        ShowCaption = False
        TabOrder = 0
        DesignSize = (
          1125
          50)
        object Button8: TButton
          Left = 3
          Top = 0
          Width = 263
          Height = 50
          Anchors = [akRight, akBottom]
          Caption = 'Return to Site details or '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageIndex = 15
          ImageName = 'previous64'
          Images = DataManager.VirtualImageList1
          ParentFont = False
          TabOrder = 0
          OnClick = Button8Click
        end
        object Button5: TButton
          Left = 272
          Top = 0
          Width = 207
          Height = 50
          Anchors = [akRight, akBottom]
          Caption = 'Save and close or '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageIndex = 7
          ImageName = 'save64'
          Images = DataManager.VirtualImageList1
          ModalResult = 2
          ParentFont = False
          TabOrder = 1
          OnClick = Button5Click
        end
        object Button6: TButton
          Left = 485
          Top = 0
          Width = 342
          Height = 50
          Anchors = [akRight, akBottom]
          Caption = 'Continue to enter Contact details or'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageIndex = 16
          ImageName = 'next64'
          Images = DataManager.VirtualImageList1
          ParentFont = False
          TabOrder = 2
          OnClick = Button6Click
        end
        object Button7: TButton
          Left = 833
          Top = 0
          Width = 286
          Height = 50
          Anchors = [akRight, akBottom]
          Cancel = True
          Caption = 'Cancel and close the window.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageIndex = 9
          ImageName = 'cancel64'
          Images = DataManager.VirtualImageList1
          ModalResult = 2
          ParentFont = False
          TabOrder = 3
          OnClick = Button7Click
        end
      end
      object GroupBox2: TGroupBox
        Left = 15
        Top = 3
        Width = 1096
        Height = 153
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Keeper'
        TabOrder = 1
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
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 176
          Top = 64
          Width = 409
          Height = 29
          DataField = 'OperatorAddress'
          DataSource = DataManager.dsSite
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 176
          Top = 99
          Width = 97
          Height = 29
          DataField = 'OperatorPostcode'
          DataSource = DataManager.dsSite
          TabOrder = 2
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Contacts'
      ImageIndex = 2
      DesignSize = (
        1125
        523)
      object Label1: TLabel
        Left = 6
        Top = 251
        Width = 1073
        Height = 84
        Anchors = [akLeft, akTop, akRight]
        Caption = 
          'Enter the details of any persons associated with the site who ma' +
          'y need to be contected about its operation.'#13#13'You can also enter ' +
          'contact preferences here.'
        WordWrap = True
      end
      object Panel4: TPanel
        Left = 0
        Top = 473
        Width = 1125
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
    Width = 129
    Height = 559
    Align = alLeft
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
      DataSource = DataManager.dsSite
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
      DataSource = DataManager.dsSite
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
      DataSource = DataManager.dsSite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'JetBrains Mono'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
end
