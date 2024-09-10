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

  [Entity]
  [Table('SITE')]
  [Description('Site entity representing a location.')]
  [Id('FId', TIdGenerator.Uuid36)]
  TSite = class
  private
    [Column('ID', [TColumnProp.Required], 36)]
    FId: string;

    [Column('SITE_TYPE', [TColumnProp.Required], 50)]
    FSiteType: string;

    [Column('IDENTIFIER', [], 50)]
    FIdentifier: Nullable<string>;

    [Column('NAME', [TColumnProp.Required], 100)]
    FName: string;

    [Column('ADDRESS', [TColumnProp.Required], 255)]
    FAddress: string;

    [Column('POSTCODE', [TColumnProp.Required], 8)]
    FPostcode: string;

    [Column('STATE', [TColumnProp.Required], 15)]
    FState: string;

    [Association([TAssociationProp.Lazy], CascadeTypeAll)]
    FContacts: Proxy<TList<TSiteContact>>; // One-to-Many relationship
    function GetContacts: TList<TSiteContact>;
  public
    property Id: string read FId write FId;
    property SiteType: string read FSiteType write FSiteType;
    property Identifier: Nullable<string> read FIdentifier write FIdentifier;
    property Name: string read FName write FName;
    property Address: string read FAddress write FAddress;
    property Postcode: string read FPostcode write FPostcode;
    property State: string read FState write FState;
    property Contacts: TList<TSiteContact> read GetContacts;
  end;

  [Entity]
  [Table('SITE_CONTACT')]
  [Description('Site contact entity representing contact information for a site.')]
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
    FSite: Proxy<TSite>; // Proxy to TSite
    function GetSite: TSite;
    procedure SetSite(const Value: TSite);
  public
    property Id: string read FId write FId;
    property Name: string read FName write FName;
    property Landline: Nullable<string> read FLandline write FLandline;
    property Mobile: Nullable<string> read FMobile write FMobile;
    property Email: Nullable<string> read FEmail write FEmail;
    property Site: TSite read GetSite write SetSite; // Expose TSite via Proxy
  end;

implementation

{ TSite }

function TSite.GetContacts: TList<TSiteContact>;
begin
  Result := FContacts.Value;
end;

{ TSiteContact }

function TSiteContact.GetSite: TSite;
begin
  Result := FSite.Value;
end;

procedure TSiteContact.SetSite(const Value: TSite);
begin
  FSite.Value := Value;
end;

initialization
  RegisterEntity(TSite);
  RegisterEntity(TSiteContact);

end.
