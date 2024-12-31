object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 826
  ClientWidth = 1029
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  TextHeight = 15
  object DBAdvCardList1: TDBAdvCardList
    AlignWithMargins = True
    Left = 12
    Top = 12
    Width = 1005
    Height = 802
    Margins.Left = 12
    Margins.Top = 12
    Margins.Right = 12
    Margins.Bottom = 12
    DataSource = DataSource1
    CardTemplate.CardWidth = 360
    CardTemplate.DefaultItem.Caption = 'Holding number'
    CardTemplate.DefaultItem.CaptionFont.Charset = DEFAULT_CHARSET
    CardTemplate.DefaultItem.CaptionFont.Color = clWindowText
    CardTemplate.DefaultItem.CaptionFont.Height = -11
    CardTemplate.DefaultItem.CaptionFont.Name = 'Verdana'
    CardTemplate.DefaultItem.CaptionFont.Style = []
    CardTemplate.DefaultItem.EditColor = clNone
    CardTemplate.DefaultItem.ItemEditor = ieText
    CardTemplate.DefaultItem.Name = 'AdvCardTemplateItem0'
    CardTemplate.DefaultItem.Tag = 0
    CardTemplate.DefaultItem.ValueFont.Charset = DEFAULT_CHARSET
    CardTemplate.DefaultItem.ValueFont.Color = clWindowText
    CardTemplate.DefaultItem.ValueFont.Height = -11
    CardTemplate.DefaultItem.ValueFont.Name = 'Verdana'
    CardTemplate.DefaultItem.ValueFont.Style = []
    CardTemplate.Items = <
      item
        Caption = 'Site type'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'Verdana'
        CaptionFont.Style = []
        EditColor = clNone
        ItemEditor = ieText
        Name = 'DBAdvCardTemplateItem1'
        Tag = 0
        ValueFont.Charset = DEFAULT_CHARSET
        ValueFont.Color = clWindowText
        ValueFont.Height = -11
        ValueFont.Name = 'Verdana'
        ValueFont.Style = []
        FieldName = 'VW_SITE_TYPE'
      end
      item
        Caption = 'Holding number'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'Verdana'
        CaptionFont.Style = []
        EditColor = clNone
        ItemEditor = ieText
        Name = 'DBAdvCardTemplateItem0'
        Tag = 0
        ValueFont.Charset = DEFAULT_CHARSET
        ValueFont.Color = clWindowText
        ValueFont.Height = -11
        ValueFont.Name = 'Verdana'
        ValueFont.Style = []
        FieldName = 'HOLDING_NUMBER'
      end
      item
        Caption = 'Address'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'Verdana'
        CaptionFont.Style = []
        EditColor = clNone
        ItemEditor = ieText
        Name = 'DBAdvCardTemplateItem2'
        Tag = 0
        ValueFont.Charset = DEFAULT_CHARSET
        ValueFont.Color = clWindowText
        ValueFont.Height = -11
        ValueFont.Name = 'Verdana'
        ValueFont.Style = []
        FieldName = 'ADDRESS'
      end
      item
        Caption = 'Postcode'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'Verdana'
        CaptionFont.Style = []
        EditColor = clNone
        ItemEditor = ieText
        Name = 'DBAdvCardTemplateItem3'
        Tag = 0
        ValueFont.Charset = DEFAULT_CHARSET
        ValueFont.Color = clWindowText
        ValueFont.Height = -11
        ValueFont.Name = 'Verdana'
        ValueFont.Style = []
        FieldName = 'POSTCODE'
      end
      item
        Caption = 'Status'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'Verdana'
        CaptionFont.Style = []
        EditColor = clNone
        ItemEditor = ieText
        Name = 'DBAdvCardTemplateItem4'
        Tag = 0
        ValueFont.Charset = DEFAULT_CHARSET
        ValueFont.Color = clWindowText
        ValueFont.Height = -11
        ValueFont.Name = 'Verdana'
        ValueFont.Style = []
        FieldName = 'STATE'
      end
      item
        Caption = 'Owned by us'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'Verdana'
        CaptionFont.Style = []
        DataType = idtBoolean
        EditColor = clNone
        ItemEditor = ieBoolean
        Name = 'DBAdvCardTemplateItem5'
        Tag = 0
        ValueFont.Charset = DEFAULT_CHARSET
        ValueFont.Color = clWindowText
        ValueFont.Height = -11
        ValueFont.Name = 'Verdana'
        ValueFont.Style = []
        FieldName = 'IS_OWNED'
      end>
    CardTemplate.CaptionFieldName = 'NAME'
    Align = alClient
    TabOrder = 0
    DockOrientation = doNoOrient
    BorderColor = 12164479
    CardEditingAppearance.BevelOuter = bvNone
    CardEditingAppearance.BorderColor = clMenuBar
    CardEditingAppearance.BorderWidth = 2
    CardEditingAppearance.CaptionColor.Color = clHighlight
    CardEditingAppearance.CaptionColor.Direction = gdVertical
    CardEditingAppearance.CaptionBorderColor = clWhite
    CardEditingAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    CardEditingAppearance.CaptionFont.Color = clWhite
    CardEditingAppearance.CaptionFont.Height = -11
    CardEditingAppearance.CaptionFont.Name = 'Verdana'
    CardEditingAppearance.CaptionFont.Style = [fsBold]
    CardEditingAppearance.Color.Color = clWhite
    CardEditingAppearance.Color.ColorTo = clWhite
    CardEditingAppearance.Color.Direction = gdVertical
    CardEditingAppearance.ItemLabelFont.Charset = DEFAULT_CHARSET
    CardEditingAppearance.ItemLabelFont.Color = clBlack
    CardEditingAppearance.ItemLabelFont.Height = -11
    CardEditingAppearance.ItemLabelFont.Name = 'Verdana'
    CardEditingAppearance.ItemLabelFont.Style = []
    CardEditingAppearance.ItemEditFont.Charset = DEFAULT_CHARSET
    CardEditingAppearance.ItemEditFont.Color = clBlack
    CardEditingAppearance.ItemEditFont.Height = -11
    CardEditingAppearance.ItemEditFont.Name = 'Verdana'
    CardEditingAppearance.ItemEditFont.Style = []
    CardEditingAppearance.ReplaceLabelFont = True
    CardEditingAppearance.ReplaceEditFont = True
    CardNormalAppearance.BevelOuter = bvNone
    CardNormalAppearance.BorderColor = clMenuBar
    CardNormalAppearance.BorderWidth = 0
    CardNormalAppearance.CaptionColor.Color = clMenuBar
    CardNormalAppearance.CaptionColor.Direction = gdVertical
    CardNormalAppearance.CaptionBorderColor = clWhite
    CardNormalAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    CardNormalAppearance.CaptionFont.Color = clBlack
    CardNormalAppearance.CaptionFont.Height = -16
    CardNormalAppearance.CaptionFont.Name = 'Segoe UI'
    CardNormalAppearance.CaptionFont.Style = [fsBold]
    CardNormalAppearance.Color.Color = clWhite
    CardNormalAppearance.Color.ColorTo = clWhite
    CardNormalAppearance.Color.Direction = gdVertical
    CardNormalAppearance.ItemLabelFont.Charset = DEFAULT_CHARSET
    CardNormalAppearance.ItemLabelFont.Color = clBlack
    CardNormalAppearance.ItemLabelFont.Height = -16
    CardNormalAppearance.ItemLabelFont.Name = 'Segoe UI'
    CardNormalAppearance.ItemLabelFont.Style = []
    CardNormalAppearance.ItemEditFont.Charset = DEFAULT_CHARSET
    CardNormalAppearance.ItemEditFont.Color = clBlack
    CardNormalAppearance.ItemEditFont.Height = -16
    CardNormalAppearance.ItemEditFont.Name = 'Segoe UI'
    CardNormalAppearance.ItemEditFont.Style = []
    CardNormalAppearance.ReplaceLabelFont = True
    CardNormalAppearance.ReplaceEditFont = True
    CardSelectedAppearance.BevelOuter = bvNone
    CardSelectedAppearance.BorderColor = clMenuBar
    CardSelectedAppearance.BorderWidth = 2
    CardSelectedAppearance.CaptionColor.Color = clHighlight
    CardSelectedAppearance.CaptionColor.Direction = gdVertical
    CardSelectedAppearance.CaptionBorderColor = clWhite
    CardSelectedAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    CardSelectedAppearance.CaptionFont.Color = clWhite
    CardSelectedAppearance.CaptionFont.Height = -16
    CardSelectedAppearance.CaptionFont.Name = 'Segoe UI'
    CardSelectedAppearance.CaptionFont.Style = [fsBold]
    CardSelectedAppearance.Color.Color = clWhite
    CardSelectedAppearance.Color.ColorTo = clWhite
    CardSelectedAppearance.Color.Direction = gdVertical
    CardSelectedAppearance.ItemLabelFont.Charset = DEFAULT_CHARSET
    CardSelectedAppearance.ItemLabelFont.Color = clBlack
    CardSelectedAppearance.ItemLabelFont.Height = -11
    CardSelectedAppearance.ItemLabelFont.Name = 'Verdana'
    CardSelectedAppearance.ItemLabelFont.Style = []
    CardSelectedAppearance.ItemEditFont.Charset = DEFAULT_CHARSET
    CardSelectedAppearance.ItemEditFont.Color = clBlack
    CardSelectedAppearance.ItemEditFont.Height = -11
    CardSelectedAppearance.ItemEditFont.Name = 'Verdana'
    CardSelectedAppearance.ItemEditFont.Style = []
    CardSelectedAppearance.ReplaceLabelFont = True
    CardSelectedAppearance.ReplaceEditFont = True
    CardHoverAppearance.BevelOuter = bvNone
    CardHoverAppearance.BorderColor = clMenuBar
    CardHoverAppearance.BorderWidth = 0
    CardHoverAppearance.CaptionColor.Color = clMenuBar
    CardHoverAppearance.CaptionColor.Direction = gdVertical
    CardHoverAppearance.CaptionBorderColor = clWhite
    CardHoverAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    CardHoverAppearance.CaptionFont.Color = clBlack
    CardHoverAppearance.CaptionFont.Height = -11
    CardHoverAppearance.CaptionFont.Name = 'Verdana'
    CardHoverAppearance.CaptionFont.Style = [fsBold]
    CardHoverAppearance.Color.Color = clWhite
    CardHoverAppearance.Color.ColorTo = clWhite
    CardHoverAppearance.Color.Direction = gdVertical
    CardHoverAppearance.ItemLabelFont.Charset = DEFAULT_CHARSET
    CardHoverAppearance.ItemLabelFont.Color = clBlack
    CardHoverAppearance.ItemLabelFont.Height = -11
    CardHoverAppearance.ItemLabelFont.Name = 'Verdana'
    CardHoverAppearance.ItemLabelFont.Style = []
    CardHoverAppearance.ItemEditFont.Charset = DEFAULT_CHARSET
    CardHoverAppearance.ItemEditFont.Color = clBlack
    CardHoverAppearance.ItemEditFont.Height = -11
    CardHoverAppearance.ItemEditFont.Name = 'Verdana'
    CardHoverAppearance.ItemEditFont.Style = []
    CardHoverAppearance.ReplaceLabelFont = True
    CardHoverAppearance.ReplaceEditFont = True
    Color.Color = clWhite
    Color.ColorTo = clWhite
    Color.Direction = gdVertical
    ColumnSizing = False
    ColumnWidth = 400
    DelayedCardLoad = False
    DelayedCardLoadInterval = 100
    GridLineWidth = 2
    MaxColumnWidth = 400
    MinColumnWidth = 400
    ReadOnly = True
    Version = '2.2.0.1'
    ExplicitLeft = 128
    ExplicitTop = 168
    ExplicitWidth = 489
    ExplicitHeight = 320
  end
  object DataSource1: TDataSource
    DataSet = SiteData.FDQuerySites
    Left = 304
    Top = 80
  end
end
