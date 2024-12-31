object SiteData: TSiteData
  Height = 480
  Width = 718
  object dsSites: TDataSource
    DataSet = FDQuerySites
    Left = 200
    Top = 32
  end
  object dsContact: TDataSource
    Left = 56
    Top = 136
  end
  object dsSiteMarks: TDataSource
    DataSet = FDQuerySiteMarks
    Left = 200
    Top = 192
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=fb40-herd-manager-01')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 48
  end
  object FDQueryOurSpecies: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'SELECT DISTINCT VW_SPECIES'
      'FROM SITE_MARK;'
      '')
    Left = 320
    Top = 112
    object FDQueryOurSpeciesVW_SPECIES: TWideStringField
      FieldName = 'VW_SPECIES'
      Origin = 'VW_SPECIES'
      Size = 100
    end
  end
  object dsOurSpecies: TDataSource
    DataSet = FDQueryOurSpecies
    Left = 200
    Top = 112
  end
  object FDQuerySites: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'SELECT *'
      'FROM SITE;'
      '')
    Left = 320
    Top = 32
    object FDQuerySitesID: TWideStringField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      Size = 36
    end
    object FDQuerySitesSITE_TYPE_ID: TWideStringField
      DisplayLabel = 'Site type'
      FieldName = 'SITE_TYPE_ID'
      Origin = 'SITE_TYPE_ID'
      Required = True
      Visible = False
      Size = 36
    end
    object FDQuerySitesVW_SITE_TYPE: TWideStringField
      DisplayLabel = 'Site type'
      DisplayWidth = 10
      FieldName = 'VW_SITE_TYPE'
      Origin = 'VW_SITE_TYPE'
      Size = 100
    end
    object FDQuerySitesHOLDING_NUMBER: TWideStringField
      DisplayLabel = 'Holding number'
      DisplayWidth = 15
      FieldName = 'HOLDING_NUMBER'
      Origin = 'HOLDING_NUMBER'
      Required = True
      Size = 11
    end
    object FDQuerySitesNAME: TWideStringField
      DisplayLabel = 'Name'
      DisplayWidth = 60
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 100
    end
    object FDQuerySitesADDRESS: TWideStringField
      DisplayLabel = 'Address'
      DisplayWidth = 80
      FieldName = 'ADDRESS'
      Origin = 'ADDRESS'
      Size = 255
    end
    object FDQuerySitesPOSTCODE: TWideStringField
      DisplayLabel = 'Postcode'
      FieldName = 'POSTCODE'
      Origin = 'POSTCODE'
      Size = 8
    end
    object FDQuerySitesSTATE: TWideStringField
      DisplayLabel = 'State'
      FieldName = 'STATE'
      Origin = 'STATE'
      Required = True
    end
    object FDQuerySitesIS_OWNED: TBooleanField
      DisplayLabel = 'Owned by us'
      FieldName = 'IS_OWNED'
      Origin = 'IS_OWNED'
      Required = True
      Visible = False
    end
  end
  object FDQuerySiteMarks: TFDQuery
    Active = True
    MasterSource = dsSites
    MasterFields = 'ID'
    DetailFields = 'ID'
    Connection = FDConnection
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT *'
      'FROM SITE_MARK where SITE_ID = :ID'
      '')
    Left = 320
    Top = 192
    ParamData = <
      item
        Name = 'ID'
        DataType = ftWideString
        ParamType = ptInput
        Size = 36
        Value = '5f7edef9-4d51-479d-8b50-915c78d8b7a0'
      end>
    object FDQuerySiteMarksID: TWideStringField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      Size = 36
    end
    object FDQuerySiteMarksMARK: TWideStringField
      DisplayLabel = 'Mark'
      DisplayWidth = 17
      FieldName = 'MARK'
      Origin = 'MARK'
      Required = True
      Size = 100
    end
    object FDQuerySiteMarksSITE_ID: TWideStringField
      FieldName = 'SITE_ID'
      Origin = 'SITE_ID'
      Required = True
      Visible = False
      Size = 36
    end
    object FDQuerySiteMarksSPECIES_ID: TWideStringField
      FieldName = 'SPECIES_ID'
      Origin = 'SPECIES_ID'
      Required = True
      Visible = False
      Size = 36
    end
    object FDQuerySiteMarksVW_SITE_NAME: TWideStringField
      FieldName = 'VW_SITE_NAME'
      Origin = 'VW_SITE_NAME'
      Visible = False
      Size = 100
    end
    object FDQuerySiteMarksVW_SPECIES: TWideStringField
      DisplayLabel = 'Species'
      DisplayWidth = 100
      FieldName = 'VW_SPECIES'
      Origin = 'VW_SPECIES'
      Size = 100
    end
  end
  object dsSiteContacts: TDataSource
    DataSet = FDQuerySiteContacts
    Left = 200
    Top = 256
  end
  object FDQuerySiteContacts: TFDQuery
    Active = True
    MasterSource = dsSites
    MasterFields = 'ID'
    DetailFields = 'ID'
    Connection = FDConnection
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT *'
      'FROM SITE_CONTACT where SITE_ID = :ID'
      '')
    Left = 320
    Top = 256
    ParamData = <
      item
        Name = 'ID'
        DataType = ftWideString
        ParamType = ptInput
        Size = 36
        Value = '5f7edef9-4d51-479d-8b50-915c78d8b7a0'
      end>
    object WideStringField1: TWideStringField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      Size = 36
    end
    object WideStringField3: TWideStringField
      FieldName = 'SITE_ID'
      Origin = 'SITE_ID'
      Required = True
      Visible = False
      Size = 36
    end
    object FDQuerySiteContactsVW_ROLE: TWideStringField
      DisplayLabel = 'Role'
      DisplayWidth = 15
      FieldName = 'VW_ROLE'
      Origin = 'VW_ROLE'
      Size = 100
    end
    object FDQuerySiteContactsNAME: TWideStringField
      DisplayLabel = 'Name'
      DisplayWidth = 30
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 100
    end
    object FDQuerySiteContactsLANDLINE: TWideStringField
      DisplayLabel = 'Landline'
      DisplayWidth = 15
      FieldName = 'LANDLINE'
      Origin = 'LANDLINE'
      Size = 30
    end
    object FDQuerySiteContactsMOBILE: TWideStringField
      DisplayLabel = 'Mobile'
      DisplayWidth = 15
      FieldName = 'MOBILE'
      Origin = 'MOBILE'
      Size = 30
    end
    object FDQuerySiteContactsEMAIL: TWideStringField
      DisplayLabel = 'Email'
      DisplayWidth = 60
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object FDQuerySiteContactsROLE_ID: TWideStringField
      FieldName = 'ROLE_ID'
      Origin = 'ROLE_ID'
      Required = True
      Visible = False
      Size = 36
    end
  end
  object FDQueryLkupSiteTypes: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * '
      'FROM SITE_TYPE')
    Left = 624
    Top = 48
    object FDQueryLkupSiteTypesID: TWideStringField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      Size = 36
    end
    object FDQueryLkupSiteTypesSITE_TYPE: TWideStringField
      DisplayLabel = 'Site type'
      FieldName = 'SITE_TYPE'
      Origin = 'SITE_TYPE'
      Required = True
      Size = 100
    end
    object FDQueryLkupSiteTypesLI_SITE_TYPE_CODE: TWideStringField
      FieldName = 'LI_SITE_TYPE_CODE'
      Origin = 'LI_SITE_TYPE_CODE'
      Visible = False
      Size = 50
    end
  end
  object dsLkupSiteTypes: TDataSource
    DataSet = FDQueryLkupSiteTypes
    Left = 520
    Top = 48
  end
  object dsLkupSiteRoles: TDataSource
    DataSet = FDQueryLkupSiteRoles
    Left = 520
    Top = 112
  end
  object FDQueryLkupSiteRoles: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * '
      'FROM ROLE')
    Left = 624
    Top = 112
    object FDQueryLkupSiteRolesID: TWideStringField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      Size = 36
    end
    object FDQueryLkupSiteRolesROLE: TWideStringField
      DisplayLabel = 'Role'
      DisplayWidth = 30
      FieldName = 'ROLE'
      Origin = '"ROLE"'
      Required = True
      Size = 100
    end
  end
end
