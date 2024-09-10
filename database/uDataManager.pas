unit uDataManager;

interface

uses
    System.SysUtils
  , System.Classes

  , Aurelius.Engine.ObjectManager
  , Aurelius.Linq
  , Aurelius.Comp.Connection
  , Aurelius.Comp.Manager
  , Aurelius.Engine.DatabaseManager

  , Data.DB

  , FireDAC.Comp.Client
  , FireDAC.Stan.Intf
  , FireDAC.Stan.Option
  , FireDAC.Stan.Error
  , FireDAC.UI.Intf
  , FireDAC.Phys.Intf
  , FireDAC.Stan.Def
  , FireDAC.Phys
  , FireDAC.Stan.Pool
  , FireDAC.Stan.Async
  , FireDAC.VCLUI.Wait, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  Aurelius.Sql.Firebird, Aurelius.Schema.Firebird, Aurelius.Drivers.FireDac,
  Aurelius.Comp.DBSchema, Vcl.BaseImageCollection, Vcl.ImageCollection,
  System.ImageList, Vcl.ImgList, Vcl.VirtualImageList,
  Aurelius.Bind.BaseDataset, Aurelius.Bind.Dataset,

  Aurelius.Criteria.Base,
  Aurelius.Criteria.Linq, Aurelius.Criteria.Projections

  ;

type
  TDataManager = class(TDataModule)
    FDManager: TFDManager;
    FDConnection: TFDConnection;
    AureliusConnection: TAureliusConnection;
    AureliusDBSchema: TAureliusDBSchema;
    VirtualImageList1: TVirtualImageList;
    ImageCollection1: TImageCollection;
    AureliusManager: TAureliusManager;
    dsSite: TDataSource;
    AureliusDatasetSite: TAureliusDataset;
    AureliusDatasetSiteId: TStringField;
    AureliusDatasetSiteSiteType: TStringField;
    AureliusDatasetSiteHoldingNumber: TStringField;
    AureliusDatasetSiteName: TStringField;
    AureliusDatasetSiteAddress: TStringField;
    AureliusDatasetSitePostcode: TStringField;
    AureliusDatasetSiteState: TStringField;
    AureliusDatasetSiteOperatorName: TStringField;
    AureliusDatasetSiteOperatorAddress: TStringField;
    AureliusDatasetSiteOperatorPostcode: TStringField;
    AureliusDatasetSiteOperatorFlag: TBooleanField;
    dsContact: TDataSource;
    AureliusDatasetContact: TAureliusDataset;
    StringField1: TStringField;
    AureliusDatasetSiteSiteDetailsFlag: TBooleanField;
    AureliusDatasetSiteOperatorDetailsFlag: TBooleanField;
    procedure DataModuleCreate(Sender: TObject);
    procedure GetOurSitesList;
  private
    { Private declarations }
    procedure UpdateDatabaseSchema;
  public
    { Public declarations }
  end;

var
  DataManager: TDataManager;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uSiteModel;

{$R *.dfm}

procedure TDataManager.DataModuleCreate(Sender: TObject);
begin
  UpdateDatabaseSchema;
end;

procedure TDataManager.GetOurSitesList;
begin
  AureliusDatasetSite.SetSourceList
    (DataManager.AureliusManager.Find<TSite>.Where(TLinq.Eq('OperatorFlag',
    True)).OrderBy('Name').List, True);
  AureliusDatasetSite.Open;
end;

{ TDataManager }

procedure TDataManager.UpdateDatabaseSchema;
var
  DBManager: TDatabaseManager;
begin
  DBManager := TDatabaseManager.Create(AureliusConnection.CreateConnection);
  try
    // Create or update the database schema
    DBManager.UpdateDatabase;
  finally
    DBManager.Free;
  end;

end;

end.
