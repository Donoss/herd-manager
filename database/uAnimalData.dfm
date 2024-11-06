object AnimalData: TAnimalData
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object dsSpecies: TDataSource
    DataSet = AureliusDatasetSpecies
    Left = 80
    Top = 56
  end
  object AureliusDatasetSpecies: TAureliusDataset
    FieldDefs = <>
    CreateSelfField = False
    RecordCountMode = Retrieve
    Left = 168
    Top = 56
    DesignClass = 'Sphinx.Entities.TUser'
    object AureliusDatasetSpeciesId: TStringField
      FieldName = 'Id'
      Visible = False
      Size = 36
    end
    object AureliusDatasetSpeciesSpecies: TStringField
      DisplayWidth = 15
      FieldName = 'Species'
      Size = 50
    end
    object AureliusDatasetSpeciesLiSpeciesCode: TStringField
      FieldName = 'LiSpeciesCode'
      Visible = False
      Size = 50
    end
  end
end
