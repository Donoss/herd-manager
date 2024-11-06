unit uSiteModel;

interface

uses
  SysUtils,
  Generics.Collections,
  Aurelius.Mapping.Attributes,
  Aurelius.Types.Blob,
  Aurelius.Types.DynamicProperties,
  Aurelius.Types.Nullable,
  Aurelius.Types.Proxy,
  Aurelius.Validation.Attributes,
  uAnimalModel;  // Import TSpecies from uAnimalModel

type
  TSite = class;
  TSiteContact = class;
  TSiteMark = class;

  [Entity]
  [Table('SITE')]
  [Id('FId', TIdGenerator.Uuid36)]
  TSite = class
  private
    [Column('ID', [TColumnProp.Required, TColumnProp.NoUpdate], 36)]
    FId: string;

    [Column('SITE_TYPE', [TColumnProp.Required], 50)]
    [Required]
    FSiteType: string;

    [Column('IDENTIFIER', [TColumnProp.Required], 50)]
    [Required]
    FIdentifier: string;

    [Column('NAME', [TColumnProp.Required], 100)]
    [Required]
    FName: string;

    [Column('ADDRESS', [TColumnProp.Required], 255)]
    [Required]
    FAddress: string;

    [Column('POSTCODE', [TColumnProp.Required], 8)]
    [Required]
    FPostcode: string;

    [Column('STATE', [TColumnProp.Required], 15)]
    [Required]
    FState: string;

    [Column('OPERATOR_NAME', [], 100)]
    FOperatorName: Nullable<string>;

    [Column('OPERATOR_ADDRESS', [], 255)]
    FOperatorAddress: Nullable<string>;

    [Column('OPERATOR_POSTCODE', [], 8)]
    FOperatorPostcode: Nullable<string>;

    [Column('OPERATOR_FLAG', [TColumnProp.Required])]
    [Required]
    FOperatorFlag: Boolean;

    [ManyValuedAssociation([TAssociationProp.Lazy, TAssociationProp.Required], [TCascadeType.SaveUpdate, TCascadeType.Merge, TCascadeType.Remove], 'FSiteId')]
    FSiteContactList: Proxy<TList<TSiteContact>>;

    [ManyValuedAssociation([TAssociationProp.Lazy, TAssociationProp.Required], [TCascadeType.SaveUpdate, TCascadeType.Merge, TCascadeType.Remove], 'FSiteId')]
    FSiteMarkList: Proxy<TList<TSiteMark>>;

    function GetSiteContactList: TList<TSiteContact>;
    function GetSiteMarkList: TList<TSiteMark>;

  public
    constructor Create;
    destructor Destroy; override;
    property Id: string read FId write FId;
    property SiteType: string read FSiteType write FSiteType;
    property Identifier: string read FIdentifier write FIdentifier;
    property Name: string read FName write FName;
    property Address: string read FAddress write FAddress;
    property Postcode: string read FPostcode write FPostcode;
    property State: string read FState write FState;
    property OperatorName: Nullable<string> read FOperatorName write FOperatorName;
    property OperatorAddress: Nullable<string> read FOperatorAddress write FOperatorAddress;
    property OperatorPostcode: Nullable<string> read FOperatorPostcode write FOperatorPostcode;
    property OperatorFlag: Boolean read FOperatorFlag write FOperatorFlag;
    property SiteContactList: TList<TSiteContact> read GetSiteContactList;
    property SiteMarkList: TList<TSiteMark> read GetSiteMarkList;
  end;

  [Entity]
  [Table('SITE_CONTACTS')]
  [Id('FId', TIdGenerator.Uuid36)]
  TSiteContact = class
  private
    [Column('ID', [TColumnProp.Required], 36)]
    FId: string;

    [Column('NAME', [TColumnProp.Required], 100)]
    FName: string;

    [Column('LANDLINE', [], 50)]
    FLandline: Nullable<string>;

    [Column('MOBILE', [], 50)]
    FMobile: Nullable<string>;

    [Column('EMAIL', [], 255)]
    FEmail: Nullable<string>;

    [Association([TAssociationProp.Lazy, TAssociationProp.Required], CascadeTypeAll - [TCascadeType.Remove])]
    [JoinColumn('SITE_ID', [TColumnProp.Required], 'ID')]
    FSiteId: Proxy<TSite>;

    function GetSiteId: TSite;
    procedure SetSiteId(const Value: TSite);

  public
    property Id: string read FId write FId;
    property Name: string read FName write FName;
    property Landline: Nullable<string> read FLandline write FLandline;
    property Mobile: Nullable<string> read FMobile write FMobile;
    property Email: Nullable<string> read FEmail write FEmail;
    property SiteId: TSite read GetSiteId write SetSiteId;
  end;

  [Entity]
  [Table('SITE_MARK')]
  [Id('FId', TIdGenerator.Uuid36)]
  TSiteMark = class
  private
    [Column('ID', [TColumnProp.Required], 36)]
    FId: string;

    [Column('MARK', [TColumnProp.Required], 50)]
    FMark: string;

    [Association([TAssociationProp.Lazy, TAssociationProp.Required], CascadeTypeAll - [TCascadeType.Remove])]
    [JoinColumn('SITE_ID', [TColumnProp.Required], 'ID')]
    FSiteId: Proxy<TSite>;

    [Association([TAssociationProp.Lazy, TAssociationProp.Required], CascadeTypeAll - [TCascadeType.Remove])]
    [JoinColumn('SPECIES_ID', [TColumnProp.Required], 'ID')]
    FSpeciesId: Proxy<TSpecies>;  // Use TSpecies from uAnimalModel

    function GetSiteId: TSite;
    procedure SetSiteId(const Value: TSite);
    function GetSpeciesId: TSpecies;
    procedure SetSpeciesId(const Value: TSpecies);
    function GetSpecies: String;

  public
    property Id: string read FId write FId;
    property Mark: string read FMark write FMark;
    property SiteId: TSite read GetSiteId write SetSiteId;
    property SpeciesId: TSpecies read GetSpeciesId write SetSpeciesId;
    property Species: string read GetSpecies;
  end;

implementation

{ TSite }

constructor TSite.Create;
begin
  inherited;
  FSiteContactList.SetInitialValue(TList<TSiteContact>.Create);
  FSiteMarkList.SetInitialValue(TList<TSiteMark>.Create);
end;

destructor TSite.Destroy;
begin
  FSiteContactList.DestroyValue;
  FSiteMarkList.DestroyValue;
  inherited;
end;

function TSite.GetSiteContactList: TList<TSiteContact>;
begin
  Result := FSiteContactList.Value;
end;

function TSite.GetSiteMarkList: TList<TSiteMark>;
begin
  Result := FSiteMarkList.Value;
end;

{ TSiteContact }

function TSiteContact.GetSiteId: TSite;
begin
  Result := FSiteId.Value;
end;

procedure TSiteContact.SetSiteId(const Value: TSite);
begin
  FSiteId.Value := Value;
end;

{ TSiteMark }

function TSiteMark.GetSiteId: TSite;
begin
  Result := FSiteId.Value;
end;

procedure TSiteMark.SetSiteId(const Value: TSite);
begin
  FSiteId.Value := Value;
end;

function TSiteMark.GetSpeciesId: TSpecies;
begin
  Result := FSpeciesId.Value;
end;

procedure TSiteMark.SetSpeciesId(const Value: TSpecies);
begin
  FSpeciesId.Value := Value;
end;

function TSiteMark.GetSpecies: string;
begin
  if Assigned(FSpeciesId.Value) then
    Result := FSpeciesId.Value.Species  // Access the 'Species' field from TSpecies
  else
    Result := '';
end;

initialization
  RegisterEntity(TSite);
  RegisterEntity(TSiteContact);
  RegisterEntity(TSiteMark);

end.
