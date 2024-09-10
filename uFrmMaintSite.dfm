object FrmMaintSite: TFrmMaintSite
  Left = 0
  Top = 0
  Caption = 'Add new Site'
  ClientHeight = 460
  ClientWidth = 845
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
    Left = 217
    Top = 0
    Width = 628
    Height = 460
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
        620
        424)
      object Panel2: TPanel
        Left = 0
        Top = 374
        Width = 620
        Height = 50
        Align = alBottom
        AutoSize = True
        BevelOuter = bvNone
        Caption = 'Panel2'
        ShowCaption = False
        TabOrder = 0
        DesignSize = (
          620
          50)
        object Button1: TButton
          Left = 511
          Top = 0
          Width = 110
          Height = 50
          Anchors = [akRight, akBottom]
          Cancel = True
          Caption = 'Cancel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageAlignment = iaRight
          ImageIndex = 9
          ImageName = 'cancel64'
          Images = DataManager.VirtualImageList1
          ModalResult = 2
          ParentFont = False
          TabOrder = 0
        end
        object Button3: TButton
          Left = 143
          Top = 0
          Width = 362
          Height = 50
          Anchors = [akRight, akBottom]
          Caption = 'Continue to enter Keeper details'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageAlignment = iaRight
          ImageIndex = 16
          ImageName = 'next64'
          Images = DataManager.VirtualImageList1
          ParentFont = False
          TabOrder = 1
          OnClick = Button3Click
        end
      end
      object GroupBox1: TGroupBox
        Left = 15
        Top = 3
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
      object Memo1: TMemo
        Left = 15
        Top = 280
        Width = 593
        Height = 88
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'JetBrains Mono'
        Font.Style = []
        Lines.Strings = (
          
            'Enter the details of your site.  You can obtain the Holding Numb' +
            'er, known as a CPH '
          'from the Rural Payments Agency.  '
          ''
          
            'Give the site a user friendly name to which you normally refer. ' +
            '  ')
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
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
        620
        424)
      object Panel3: TPanel
        Left = 0
        Top = 374
        Width = 620
        Height = 50
        Align = alBottom
        AutoSize = True
        BevelOuter = bvNone
        Caption = 'Panel2'
        ShowCaption = False
        TabOrder = 0
        DesignSize = (
          620
          50)
        object Button5: TButton
          Left = 395
          Top = 0
          Width = 110
          Height = 50
          Anchors = [akRight, akBottom]
          Caption = 'Cancel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageAlignment = iaRight
          ImageIndex = 9
          ImageName = 'cancel64'
          Images = DataManager.VirtualImageList1
          ParentFont = False
          TabOrder = 0
          OnClick = Button5Click
        end
        object Button6: TButton
          Left = 511
          Top = 0
          Width = 100
          Height = 50
          Anchors = [akRight, akBottom]
          Caption = 'Save'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageAlignment = iaRight
          ImageIndex = 7
          ImageName = 'save64'
          Images = DataManager.VirtualImageList1
          ParentFont = False
          TabOrder = 1
          OnClick = Button6Click
        end
        object Button7: TButton
          Left = 139
          Top = 0
          Width = 250
          Height = 50
          Anchors = [akRight, akBottom]
          Caption = 'Enter contact details'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageAlignment = iaRight
          ImageIndex = 16
          ImageName = 'next64'
          Images = DataManager.VirtualImageList1
          ParentFont = False
          TabOrder = 2
          OnClick = Button7Click
        end
        object Button8: TButton
          Left = 6
          Top = 0
          Width = 127
          Height = 50
          Anchors = [akRight, akBottom]
          Caption = 'Site'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageIndex = 15
          ImageName = 'previous64'
          Images = DataManager.VirtualImageList1
          ParentFont = False
          TabOrder = 3
          OnClick = Button8Click
        end
      end
      object GroupBox2: TGroupBox
        Left = 15
        Top = 3
        Width = 591
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
      object Memo2: TMemo
        Left = 15
        Top = 176
        Width = 593
        Height = 127
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'JetBrains Mono'
        Font.Style = []
        Lines.Strings = (
          'Enter the details of the Keeper of your site. ')
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Contacts'
      ImageIndex = 2
      DesignSize = (
        620
        424)
      object Panel4: TPanel
        Left = 0
        Top = 374
        Width = 620
        Height = 50
        Align = alBottom
        AutoSize = True
        BevelOuter = bvNone
        Caption = 'Panel2'
        ShowCaption = False
        TabOrder = 0
        DesignSize = (
          620
          50)
        object Button2: TButton
          Left = 511
          Top = 0
          Width = 100
          Height = 50
          Anchors = [akRight, akBottom]
          Caption = 'Save'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageAlignment = iaRight
          ImageIndex = 7
          ImageName = 'save64'
          Images = DataManager.VirtualImageList1
          ModalResult = 2
          ParentFont = False
          TabOrder = 0
          OnClick = Button5Click
        end
        object Button4: TButton
          Left = 395
          Top = 0
          Width = 110
          Height = 50
          Anchors = [akRight, akBottom]
          Caption = 'Cancel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageAlignment = iaRight
          ImageIndex = 9
          ImageName = 'cancel64'
          Images = DataManager.VirtualImageList1
          ParentFont = False
          TabOrder = 1
          OnClick = Button6Click
        end
        object Button10: TButton
          Left = 6
          Top = 0
          Width = 127
          Height = 50
          Anchors = [akRight, akBottom]
          Caption = 'Keeper'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageIndex = 15
          ImageName = 'previous64'
          Images = DataManager.VirtualImageList1
          ParentFont = False
          TabOrder = 2
          OnClick = Button10Click
        end
      end
      object Memo3: TMemo
        Left = 6
        Top = 241
        Width = 603
        Height = 127
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'JetBrains Mono'
        Font.Style = []
        Lines.Strings = (
          
            'Enter the contact details for any persons associated with the si' +
            'te.')
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 217
    Height = 460
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
