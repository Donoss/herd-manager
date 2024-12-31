object AnimalData: TAnimalData
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object dsSpecies: TDataSource
    DataSet = FDTableSpecies
    Left = 160
    Top = 104
  end
  object FDManager: TFDManager
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 48
    Top = 32
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=fb40-herd-manager-01')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 104
  end
  object FDTableSpecies: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDConnection
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'SPECIES'
    Left = 256
    Top = 104
    object FDTableSpeciesID: TWideStringField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 36
    end
    object FDTableSpeciesSPECIES: TWideStringField
      FieldName = 'SPECIES'
      Origin = 'SPECIES'
      Required = True
      Size = 100
    end
    object FDTableSpeciesLI_SPECIES_CODE: TWideStringField
      FieldName = 'LI_SPECIES_CODE'
      Origin = 'LI_SPECIES_CODE'
      Size = 50
    end
  end
end
