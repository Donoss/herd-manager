object SiteData: TSiteData
  Height = 480
  Width = 718
  object dsSite: TDataSource
    DataSet = AureliusDatasetSite
    Left = 80
    Top = 56
  end
  object AureliusDatasetSite: TAureliusDataset
    FieldDefs = <>
    AfterOpen = AureliusDatasetSiteAfterOpen
    AfterScroll = AureliusDatasetSiteAfterScroll
    OnCalcFields = AureliusDatasetSiteCalcFields
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
    object AureliusDatasetSiteName: TStringField
      DisplayWidth = 50
      FieldName = 'Name'
      Size = 100
    end
    object AureliusDatasetSiteAddress: TStringField
      DisplayWidth = 40
      FieldName = 'Address'
      Size = 255
    end
    object AureliusDatasetSitePostcode: TStringField
      DisplayWidth = 10
      FieldName = 'Postcode'
      Size = 8
    end
    object AureliusDatasetSiteHoldingNumber: TStringField
      DisplayLabel = 'Holding Number'
      DisplayWidth = 13
      FieldName = 'Identifier'
      Size = 11
    end
    object AureliusDatasetSiteSiteType: TStringField
      DisplayLabel = 'Site Type'
      DisplayWidth = 8
      FieldName = 'SiteType'
      Size = 50
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
  object dsSiteMark: TDataSource
    DataSet = AureliusDatasetSiteMark
    Left = 88
    Top = 264
  end
  object AureliusDatasetSiteMark: TAureliusDataset
    FieldDefs = <>
    CreateSelfField = False
    RecordCountMode = Retrieve
    Left = 200
    Top = 264
    DesignClass = 'Sphinx.Entities.TUser'
    object AureliusDatasetSiteMarkId: TStringField
      FieldName = 'Id'
      Visible = False
      Size = 36
    end
    object AureliusDatasetSiteMarkSpecies: TStringField
      DisplayWidth = 10
      FieldName = 'Species'
      LookupDataSet = AnimalData.AureliusDatasetSpecies
      LookupKeyFields = 'Id'
      LookupResultField = 'Species'
      KeyFields = 'SpeciedId'
      ReadOnly = True
      Size = 50
    end
    object AureliusDatasetSiteMarkMark: TStringField
      DisplayWidth = 8
      FieldName = 'Mark'
      Size = 50
    end
    object AureliusDatasetSiteMarkSpeciedId: TStringField
      FieldName = 'SpeciesId'
      Required = True
      Visible = False
      Size = 36
    end
    object AureliusDatasetSiteMarkSiteId: TStringField
      FieldName = 'SiteId'
      Required = True
      Visible = False
      Size = 36
    end
  end
  object FDTableSite: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    Connection = DataManager.FDConnection
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'SITE'
    Left = 392
    Top = 120
    object FDTableSiteID: TStringField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 36
    end
    object FDTableSiteSITE_TYPE: TStringField
      FieldName = 'SITE_TYPE'
      Origin = 'SITE_TYPE'
      Required = True
      Size = 50
    end
    object FDTableSiteIDENTIFIER: TStringField
      FieldName = 'IDENTIFIER'
      Origin = 'IDENTIFIER'
      Required = True
      Size = 50
    end
    object FDTableSiteNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 100
    end
    object FDTableSiteADDRESS: TStringField
      FieldName = 'ADDRESS'
      Origin = 'ADDRESS'
      Required = True
      Size = 255
    end
    object FDTableSitePOSTCODE: TStringField
      FieldName = 'POSTCODE'
      Origin = 'POSTCODE'
      Required = True
      Size = 8
    end
    object FDTableSiteSTATE: TStringField
      FieldName = 'STATE'
      Origin = 'STATE'
      Required = True
      Size = 15
    end
    object FDTableSiteOPERATOR_NAME: TStringField
      FieldName = 'OPERATOR_NAME'
      Origin = 'OPERATOR_NAME'
      Size = 100
    end
    object FDTableSiteOPERATOR_ADDRESS: TStringField
      FieldName = 'OPERATOR_ADDRESS'
      Origin = 'OPERATOR_ADDRESS'
      Size = 255
    end
    object FDTableSiteOPERATOR_POSTCODE: TStringField
      FieldName = 'OPERATOR_POSTCODE'
      Origin = 'OPERATOR_POSTCODE'
      Size = 8
    end
    object FDTableSiteOPERATOR_FLAG: TStringField
      FieldName = 'OPERATOR_FLAG'
      Origin = 'OPERATOR_FLAG'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
end
