object DataManager: TDataManager
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object FDManager: TFDManager
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 64
    Top = 48
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=fb-40-herd-manager')
    LoginPrompt = False
    Left = 64
    Top = 136
  end
  object AureliusConnection: TAureliusConnection
    AdapterName = 'FireDac'
    AdaptedConnection = FDConnection
    SQLDialect = 'Firebird'
    Left = 176
    Top = 184
  end
  object AureliusDBSchema: TAureliusDBSchema
    Connection = AureliusConnection
    Left = 240
    Top = 272
  end
end