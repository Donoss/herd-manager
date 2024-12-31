object SiteDataModule: TSiteDataModule
  Height = 480
  Width = 640
  object dsSite: TDataSource
    DataSet = AureliusDatasetSite
    Left = 80
    Top = 56
  end
  object AureliusDatasetSite: TAureliusDataset
    FieldDefs = <>
    CreateSelfField = False
    RecordCountMode = Retrieve
    Left = 168
    Top = 56
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
      DisplayWidth = 30
      FieldName = 'Name'
      Size = 100
    end
    object AureliusDatasetSiteAddress: TStringField
      DisplayWidth = 30
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
    object AureliusDatasetSiteSiteDetailsFlag: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'SiteDetailsFlag'
      Visible = False
      Calculated = True
    end
    object AureliusDatasetSiteOperatorDetailsFlag: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'OperatorDetailsFlag'
      Visible = False
      Calculated = True
    end
  end
  object dsContact: TDataSource
    DataSet = AureliusDatasetSite
    Left = 80
    Top = 160
  end
  object AureliusDatasetContact: TAureliusDataset
    FieldDefs = <>
    CreateSelfField = False
    RecordCountMode = Retrieve
    Left = 176
    Top = 160
    DesignClass = 'Sphinx.Entities.TUser'
    object StringField1: TStringField
      FieldName = 'Id'
      Visible = False
      Size = 36
    end
  end
end
