unit uSiteModel;

interface

uses
  SysUtils,
  Generics.Collections,
  Aurelius.Mapping.Attributes,
  Aurelius.Types.Nullable,
  Aurelius.Types.Proxy,
  Aurelius.Validation.Attributes;

type
  TSite = class;
  TSiteContact = class;
  [Automapping]
  [Entity]
  [Table('SITE')]
  [Id('FId', TIdGenerator.Uuid36)]
  TSite = class
  private
    [Column('ID', [TColumnProp.Required, TColumnProp.NoUpdate], 36)]
    [Description('Internal unique id')]
    FId: string;

    [Column('SITE_TYPE', [TColumnProp.Required], 50)]
    [Description('The type of site livestock can be moved off or moved onto e.g. Farm, Abattoir, Market etc.')]
    [Required]
    [DisplayName('Site Type')]
    FSiteType: string;

    [Column('IDENTIFIER', [TColumnProp.Required], 50)]
    [Description('Identifier of the site, this may be a CPH, an FSA Number or a Port Number depending on the Type of Site.')]
    [Required]
    [DisplayName('Holding Number')]
    [SiteIdentifier('You must provide a valid holding number for the site in fiel;d "0:s"')]
    FIdentifier: string;

    [Column('NAME', [TColumnProp.Required], 100)]
    [Description('A user defined name for the site.')]
    [Required]
    [DisplayName('Site Name')]
    FName: string;

    [Column('ADDRESS', [TColumnProp.Required], 255)]
    [Description('The address of the site.')]
    [Required]
    [DisplayName('Site Address')]
    FAddress: string;

    [Column('POSTCODE', [TColumnProp.Required], 8)]
    [Description('The postcode of the site.')]
    [Required]
    [DisplayName('Site Postcode')]
    FPostcode: string;

    [Column('STATE', [TColumnProp.Required], 15)]
    [Description('The state of the site e.g. Active, Inactive.')]
    [Required]
    FState: string;

    [Column('OPERATOR_NAME', [], 100)]
    [Description('The operators name, this may be the keeper for an agricultural Holding or the operators name if an abattoir or rendering site.')]
    FOperatorName: Nullable<string>;

    [Column('OPERATOR_ADDRESS', [], 255)]
    [Description('The operators address, this is the correspondence address and may be different from the site address.')]
    FOperatorAddress: Nullable<string>;

    [Column('OPERATOR_POSTCODE', [], 8)]
    [Description('The operators postcode.')]
    FOperatorPostcode: Nullable<string>;

    [Column('OPERATOR_FLAG', [TColumnProp.Required])]
    [Description('A flag indicating if the site belongs to the application operator, values are True, False.')]
    [Required]
    FOperatorFlag: boolean;

    [ManyValuedAssociation([TAssociationProp.Lazy, TAssociationProp.Required], [TCascadeType.SaveUpdate, TCascadeType.Merge, TCascadeType.Remove], 'FSiteId')]
    FSiteContactList: Proxy<TList<TSiteContact>>;
    function GetSiteContactList: TList<TSiteContact>;

  public
    constructor Create; virtual;
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
    property OperatorFlag: boolean read FOperatorFlag write FOperatorFlag;

    // Use getter for lazy-loaded contacts
    property SiteContactList: TList<TSiteContact> read GetSiteContactList;
  end;

  [Automapping]
  [Entity]
  [Table('SITE_CONTACT')]
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

implementation

{ TSite }

constructor TSite.Create;
begin
  inherited;
  FSiteContactList.SetInitialValue(TList<TSiteContact>.Create);
  FState := 'Active';  // Default state as 'Active'
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

function TSiteContact.GetSiteId: TSite;
begin
  result := FSiteId.Value;
end;

procedure TSiteContact.SetSiteId(const Value: TSite);
begin
  FSiteId.Value := Value;
end;

initialization
  RegisterEntity(TSite);
  RegisterEntity(TSiteContact);

end.
