object FrmMaintSite: TFrmMaintSite
  Left = 0
  Top = 0
  Caption = 'Add new Site'
  ClientHeight = 333
  ClientWidth = 840
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 217
    Top = 0
    Width = 623
    Height = 333
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'JetBrains Mono'
    Font.Style = []
    ParentFont = False
    Style = tsButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Site'
      DesignSize = (
        615
        294)
      object Label5: TLabel
        Left = 25
        Top = 17
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
        Left = 25
        Top = 52
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
        Left = 25
        Top = 87
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
        Left = 25
        Top = 121
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
        Left = 25
        Top = 156
        Width = 80
        Height = 21
        Caption = 'Postcode'
        FocusControl = DBEdit8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'JetBrains Mono'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit5: TDBEdit
        Left = 184
        Top = 48
        Width = 177
        Height = 29
        DataField = 'Identifier'
        DataSource = DataManager.dsSite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'JetBrains Mono'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit6: TDBEdit
        Left = 184
        Top = 83
        Width = 413
        Height = 29
        Anchors = [akLeft, akTop, akRight]
        DataField = 'Name'
        DataSource = DataManager.dsSite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'JetBrains Mono'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit7: TDBEdit
        Left = 184
        Top = 118
        Width = 413
        Height = 29
        Anchors = [akLeft, akTop, akRight]
        DataField = 'Address'
        DataSource = DataManager.dsSite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'JetBrains Mono'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit8: TDBEdit
        Left = 184
        Top = 153
        Width = 97
        Height = 29
        DataField = 'Postcode'
        DataSource = DataManager.dsSite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'JetBrains Mono'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBComboBox1: TDBComboBox
        Left = 184
        Top = 13
        Width = 145
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
          'Cattle'
          'Sheep'
          'Pigs'
          'Deer'
          'Goats'
          'Buffalo'
          'Bison')
        ParentFont = False
        TabOrder = 4
      end
      object Panel2: TPanel
        Left = 0
        Top = 244
        Width = 615
        Height = 50
        Align = alBottom
        AutoSize = True
        BevelOuter = bvNone
        Caption = 'Panel2'
        ShowCaption = False
        TabOrder = 5
        DesignSize = (
          615
          50)
        object Button1: TButton
          Left = 462
          Top = 0
          Width = 145
          Height = 50
          Anchors = [akRight, akBottom]
          Cancel = True
          Caption = 'Cancel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageAlignment = iaRight
          ImageIndex = 9
          ImageName = 'cancel_64dp_E8EAED_FILL0_wght400_GRAD0_opsz48'
          Images = DataManager.VirtualImageList1
          ModalResult = 2
          ParentFont = False
          TabOrder = 0
        end
        object Button3: TButton
          Left = 311
          Top = 0
          Width = 145
          Height = 50
          Anchors = [akRight, akBottom]
          Caption = 'Next'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageAlignment = iaRight
          ImageIndex = 17
          ImageName = 'navigate_next_64dp_E8EAED'
          Images = DataManager.VirtualImageList1
          ParentFont = False
          TabOrder = 1
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
        615
        294)
      object Label11: TLabel
        Left = 25
        Top = 17
        Width = 110
        Height = 21
        Caption = 'Keeper Name'
        FocusControl = DBEdit4
      end
      object Label12: TLabel
        Left = 25
        Top = 55
        Width = 70
        Height = 21
        Caption = 'Address'
        FocusControl = DBEdit11
      end
      object Label13: TLabel
        Left = 25
        Top = 90
        Width = 80
        Height = 21
        Caption = 'Postcode'
        FocusControl = DBEdit12
      end
      object Panel3: TPanel
        Left = 0
        Top = 244
        Width = 615
        Height = 50
        Align = alBottom
        AutoSize = True
        BevelOuter = bvNone
        Caption = 'Panel2'
        ShowCaption = False
        TabOrder = 0
        DesignSize = (
          615
          50)
        object Button5: TButton
          Left = 462
          Top = 0
          Width = 145
          Height = 50
          Anchors = [akRight, akBottom]
          Cancel = True
          Caption = 'Cancel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageAlignment = iaRight
          ImageIndex = 9
          ImageName = 'cancel_64dp_E8EAED_FILL0_wght400_GRAD0_opsz48'
          Images = DataManager.VirtualImageList1
          ModalResult = 2
          ParentFont = False
          TabOrder = 0
          OnClick = Button5Click
        end
        object Button6: TButton
          Left = 311
          Top = 0
          Width = 145
          Height = 50
          Anchors = [akRight, akBottom]
          Caption = 'Finish'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageAlignment = iaRight
          ImageIndex = 18
          ImageName = 'check_circle_outline_64dp_E8EAED'
          Images = DataManager.VirtualImageList1
          ParentFont = False
          TabOrder = 1
          OnClick = Button6Click
        end
        object Button7: TButton
          Left = 160
          Top = 0
          Width = 145
          Height = 50
          Anchors = [akRight, akBottom]
          Caption = 'Next'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageAlignment = iaRight
          ImageIndex = 17
          ImageName = 'navigate_next_64dp_E8EAED'
          Images = DataManager.VirtualImageList1
          ParentFont = False
          TabOrder = 2
        end
        object Button8: TButton
          Left = 9
          Top = 0
          Width = 145
          Height = 50
          Anchors = [akRight, akBottom]
          Caption = 'Previous'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'JetBrains Mono'
          Font.Style = []
          ImageIndex = 16
          ImageName = 'chevron_left_64dp_E8EAED'
          Images = DataManager.VirtualImageList1
          ParentFont = False
          TabOrder = 3
        end
      end
      object DBEdit4: TDBEdit
        Left = 184
        Top = 17
        Width = 413
        Height = 29
        Anchors = [akLeft, akTop, akRight]
        DataField = 'OperatorName'
        DataSource = DataManager.dsSite
        TabOrder = 1
      end
      object DBEdit11: TDBEdit
        Left = 184
        Top = 52
        Width = 413
        Height = 29
        Anchors = [akLeft, akTop, akRight]
        DataField = 'OperatorAddress'
        DataSource = DataManager.dsSite
        TabOrder = 2
      end
      object DBEdit12: TDBEdit
        Left = 184
        Top = 87
        Width = 97
        Height = 29
        DataField = 'OperatorPostcode'
        DataSource = DataManager.dsSite
        TabOrder = 3
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Contacts'
      ImageIndex = 2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 217
    Height = 333
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
      Caption = 'Operator'
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
