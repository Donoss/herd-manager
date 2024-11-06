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
  TSite = class;
  TSiteContact = class;
  TSiteMark = class;
  TSiteSpecy = class;
  TSpecies = class;
  
  [Entity]
  [Table('SITE')]
  [Description('')]
  [Id('FId', TIdGenerator.None)]
  TSite = class
  private
    [Column('ID', [TColumnProp.Required], 36)]
    [Description('Internal unique id')]
    FId: string;
    
    [Column('SITE_TYPE', [TColumnProp.Required], 50)]
    [Description('The type of site livestock can be moved off or moved onto e.g. Farm, Abattoir, Market etc.')]
    FSitetype: string;
    
    [Column('IDENTIFIER', [TColumnProp.Required], 11)]
    [Description('If the site is an agricultural holding the Country Parish Holding Number.')]
    FIdentifier: string;
    
    [Column('NAME', [TColumnProp.Required], 100)]
    [Description('A user defined name for the site.')]
    FName: string;
    
    [Column('ADDRESS', [TColumnProp.Required], 255)]
    [Description('The address of the site.')]
    FAddress: string;
    
    [Column('POSTCODE', [TColumnProp.Required], 8)]
    [Description('The postcode of the site.')]
    FPostcode: string;
    
    [Column('STATE', [TColumnProp.Required], 15)]
    [Description('The state of the site e.g. Active, Inactive.')]
    FStatus: string;
    
    [Column('OPERATOR_NAME', [], 100)]
    [Description('The operators name, this may be the keeper for an agricultural Holding or the operators namne if an abattoir or rendereing site.')]
    FOperatorname: Nullable<string>;
    
    [Column('OPERATOR_ADDRESS', [], 255)]
    [Description('The operators address, this is the correspondence address and may be different to the site address.')]
    FOperatoraddress: Nullable<string>;
    
    [Column('OPERATOR_POSTCODE', [], 8)]
    [Description('The operators postcode.')]
    FOperatorpostcode: Nullable<string>;
    
    [Column('OPERATOR_FLAG', [])]
    [Description('A flag indicating if the site belongs to the application operator.')]
    FOperatorflag: Nullable<Boolean>;
    
    [ManyValuedAssociation([TAssociationProp.Lazy, TAssociationProp.Required], [TCascadeType.SaveUpdate, TCascadeType.Merge, TCascadeType.Remove], 'FSiteId')]
    FSiteContactList: Proxy<TList<TSiteContact>>;
    function GetSiteContactList: TList<TSiteContact>;
  public
    constructor Create;
    destructor Destroy; override;
    property Id: string read FId write FId;
    property Sitetype: string read FSitetype write FSitetype;
    property Identifier: string read FIdentifier write FIdentifier;
    property Name: string read FName write FName;
    property Address: string read FAddress write FAddress;
    property Postcode: string read FPostcode write FPostcode;
    property Status: string read FStatus write FStatus;
    property Operatorname: Nullable<string> read FOperatorname write FOperatorname;
    property Operatoraddress: Nullable<string> read FOperatoraddress write FOperatoraddress;
    property Operatorpostcode: Nullable<string> read FOperatorpostcode write FOperatorpostcode;
    property Operatorflag: Nullable<Boolean> read FOperatorflag write FOperatorflag;
    property SiteContactList: TList<TSiteContact> read GetSiteContactList;
  end;
  
  [Entity]
  [Table('SITE_CONTACTS')]
  [Description('')]
  [Id('FId', TIdGenerator.None)]
  TSiteContact = class
  private
    [Column('ID', [TColumnProp.Required], 36)]
    [Description('')]
    FId: string;
    
    [Column('NAME', [TColumnProp.Required], 100)]
    [Description('')]
    FName: string;
    
    [Column('LANDLINE', [], 50)]
    [Description('')]
    FLandline: Nullable<string>;
    
    [Column('MOBILE', [], 50)]
    [Description('')]
    FMobile: Nullable<string>;
    
    [Column('EMAIL', [], 255)]
    [Description('')]
    FEmail: Nullable<string>;
    
    [Association([TAssociationProp.Lazy, TAssociationProp.Required], CascadeTypeAll - [TCascadeType.Remove])]
    [JoinColumn('SITE_ID', [TColumnProp.Required], 'ID')]
    [Description('')]
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
  [Description('')]
  [Id('FId', TIdGenerator.None)]
  TSiteMark = class
  private
    [Column('ID', [TColumnProp.Required], 36)]
    [Description('')]
    FId: string;
    
    [Column('MARK', [TColumnProp.Required], 50)]
    [Description('')]
    FMark: string;
    
    [Association([TAssociationProp.Lazy, TAssociationProp.Required], CascadeTypeAll - [TCascadeType.Remove])]
    [JoinColumn('SPECIES_ID', [TColumnProp.Required], 'ID')]
    [Description('')]
    FSpeciedid: Proxy<TSpecies>;
    
    [Association([TAssociationProp.Lazy, TAssociationProp.Required], CascadeTypeAll - [TCascadeType.Remove])]
    [JoinColumn('SITE_ID', [TColumnProp.Required], 'ID')]
    [Description('')]
    FSiteid: Proxy<TSite>;
    function GetSpeciedid: TSpecies;
    procedure SetSpeciedid(const Value: TSpecies);
    function GetSiteid: TSite;
    procedure SetSiteid(const Value: TSite);
  public
    property Id: string read FId write FId;
    property Mark: string read FMark write FMark;
    property Speciedid: TSpecies read GetSpeciedid write SetSpeciedid;
    property Siteid: TSite read GetSiteid write SetSiteid;
  end;
  
  [Entity]
  [Table('SITE_SPECIES')]
  [Description('')]
  [Id('FId', TIdGenerator.None)]
  TSiteSpecy = class
  private
    [Column('ID', [TColumnProp.Required], 36)]
    [Description('')]
    FId: string;
    
    [Association([TAssociationProp.Lazy, TAssociationProp.Required], CascadeTypeAll - [TCascadeType.Remove])]
    [JoinColumn('SPECIES_ID', [TColumnProp.Required], 'ID')]
    [Description('')]
    FSpeciesId: Proxy<TSpecies>;
    
    [Association([TAssociationProp.Lazy, TAssociationProp.Required], CascadeTypeAll - [TCascadeType.Remove])]
    [JoinColumn('SITE_ID', [TColumnProp.Required], 'ID')]
    [Description('')]
    FSiteId: Proxy<TSite>;
    function GetSpeciesId: TSpecies;
    procedure SetSpeciesId(const Value: TSpecies);
    function GetSiteId: TSite;
    procedure SetSiteId(const Value: TSite);
  public
    property Id: string read FId write FId;
    property SpeciesId: TSpecies read GetSpeciesId write SetSpeciesId;
    property SiteId: TSite read GetSiteId write SetSiteId;
  end;
  
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
    
    [ManyValuedAssociation([TAssociationProp.Lazy, TAssociationProp.Required], [TCascadeType.SaveUpdate, TCascadeType.Merge, TCascadeType.Remove], 'FSpeciedid')]
    FSiteMarkList: Proxy<TList<TSiteMark>>;
    function GetSiteMarkList: TList<TSiteMark>;
  public
    constructor Create;
    destructor Destroy; override;
    property Id: string read FId write FId;
    property Species: string read FSpecies write FSpecies;
    property SiteMarkList: TList<TSiteMark> read GetSiteMarkList;
  end;
  
implementation

{ TSite }

constructor TSite.Create;
begin
  inherited;
  FSiteContactList.SetInitialValue(TList<TSiteContact>.Create);
end;

destructor TSite.Destroy;
begin
  FSiteContactList.DestroyValue;
  inherited;
end;

function TSite.GetSiteContactList: TList<TSiteContact>;
begin
  result := FSiteContactList.Value;
end;

{ TSiteContact }

function TSiteContact.GetSiteId: TSite;
begin
  result := FSiteId.Value;
end;

procedure TSiteContact.SetSiteId(const Value: TSite);
begin
  FSiteId.Value := Value;
end;

{ TSiteMark }

function TSiteMark.GetSpeciedid: TSpecies;
begin
  result := FSpeciedid.Value;
end;

procedure TSiteMark.SetSpeciedid(const Value: TSpecies);
begin
  FSpeciedid.Value := Value;
end;

function TSiteMark.GetSiteid: TSite;
begin
  result := FSiteid.Value;
end;

procedure TSiteMark.SetSiteid(const Value: TSite);
begin
  FSiteid.Value := Value;
end;

{ TSiteSpecy }

function TSiteSpecy.GetSpeciesId: TSpecies;
begin
  result := FSpeciesId.Value;
end;

procedure TSiteSpecy.SetSpeciesId(const Value: TSpecies);
begin
  FSpeciesId.Value := Value;
end;

function TSiteSpecy.GetSiteId: TSite;
begin
  result := FSiteId.Value;
end;

procedure TSiteSpecy.SetSiteId(const Value: TSite);
begin
  FSiteId.Value := Value;
end;

{ TSpecies }

constructor TSpecies.Create;
begin
  inherited;
  FSiteMarkList.SetInitialValue(TList<TSiteMark>.Create);
end;

destructor TSpecies.Destroy;
begin
  FSiteMarkList.DestroyValue;
  inherited;
end;

function TSpecies.GetSiteMarkList: TList<TSiteMark>;
begin
  result := FSiteMarkList.Value;
end;

initialization
  RegisterEntity(TSite);
  RegisterEntity(TSiteContact);
  RegisterEntity(TSpecies);
  RegisterEntity(TSiteMark);
  RegisterEntity(TSiteSpecy);

end.
