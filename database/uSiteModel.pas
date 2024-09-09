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
  [Description('')]
  [Id('FId', TIdGenerator.Uuid36)]
  TSite = class
  private
    [Column('ID', [TColumnProp.Required], 36)]
    [Description('Internal unique id')]
    FId: string;
    
    [Column('SITE_TYPE', [TColumnProp.Required], 50)]
    [Description('The type of site livestock can be moved off or moved onto e.g. Farm, Abattoir, Market etc.')]
    FSiteType: string;

    [Column('IDENTIFIER', [], 50)]
    [Description('Identifier of the site, this may be a CPH, an FSA Number or a Port Number depending on the Type of Site.')]
    FIdentifier: Nullable<string>;
    
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
    FState: string;
    
    [Column('OPERATOR_NAME', [], 100)]
    [Description('The operators name, this may be the keeper for an agricultural Holding or the operators namne if an abattoir or rendereing site.')]
    FOperatorName: Nullable<string>;
    
    [Column('OPERATOR_ADDRESS', [], 255)]
    [Description('The operators address, this is the correspondence address and may be different to the site address.')]
    FOperatorAddress: Nullable<string>;
    
    [Column('OPERATOR_POSTCODE', [], 8)]
    [Description('The operators postcode.')]
    FOperatorPostcode: Nullable<string>;
    
    [Column('OPERATOR_FLAG', [], 5)]
    [Description('A flag indicating if the site belongs to the application operator, vales are True, False.')]
    FOperatorFlag: String;
  public
    property Id: string read FId write FId;
    property SiteType: string read FSiteType write FSiteType;
    property Identifier: Nullable<string> read FIdentifier write FIdentifier;
    property Name: string read FName write FName;
    property Address: string read FAddress write FAddress;
    property Postcode: string read FPostcode write FPostcode;
    property State: string read FState write FState;

    property OperatorName: Nullable<string> read FOperatorName write FOperatorName;
    property OperatorAddress: Nullable<string> read FOperatorAddress write FOperatorAddress;
    property OperatorPostcode: Nullable<string> read FOperatorPostcode write FOperatorPostcode;
    property OperatorFlag: String read FOperatorFlag write FOperatorFlag;
  end;
  
  [Entity]
  [Table('SITE_CONTACT')]
  [Description('')]
  [Id('FId', TIdGenerator.Uuid36)]
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
  
implementation

{ TSiteContact }

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