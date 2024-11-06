unit uSiteModel;

interface

uses
  SysUtils, 
  Generics.Collections, 
  Aurelius.Mapping.Attributes, 
  Aurelius.Types.Blob, 
  Aurelius.Types.DynamicProperties, 
  Aurelius.Types.Nullable, 
  Aurelius.Types.Proxy;

type
  TSpecies = class;
  
  [Entity]
  [Table('SPECIES')]
  [Description('')]
  [Id('FId', TIdGenerator.None)]
  TSpecies = class
  private
    [Column('ID', [TColumnProp.Required], 36)]
    [Description('')]
    FId: string;
    
    [Column('SPECIES', [TColumnProp.Required], 50)]
    [Description('')]
    FSpecies: string;
    
    [Column('LI_SPECIES_CODE', [TColumnProp.Required], 50)]
    [Description('')]
    FLiSpeciesCode: string;
  public
    property Id: string read FId write FId;
    property Species: string read FSpecies write FSpecies;
    property LiSpeciesCode: string read FLiSpeciesCode write FLiSpeciesCode;
  end;
  
implementation

initialization
  RegisterEntity(TSpecies);

end.
