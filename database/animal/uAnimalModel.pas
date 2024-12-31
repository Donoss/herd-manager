unit uAnimalModel;

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
  [Id('FId', TIdGenerator.Uuid36)]
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
    constructor Create;  // Constructor declaration
    destructor Destroy; override;  // Destructor declaration
    property Id: string read FId write FId;
    property Species: string read FSpecies write FSpecies;
    property LiSpeciesCode: string read FLiSpeciesCode write FLiSpeciesCode;

  end;

implementation

{ TSpecies }

constructor TSpecies.Create;
begin
  inherited Create;  // Call inherited constructor
  // No specific initialization is needed as of now.
end;

destructor TSpecies.Destroy;
begin
  // Clean up any owned resources here if applicable (none in this case)
  inherited Destroy;  // Call inherited destructor
end;

initialization
  RegisterEntity(TSpecies);

end.
