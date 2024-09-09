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
  System.ImageList, Vcl.ImgList, Vcl.VirtualImageList

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
    procedure DataModuleCreate(Sender: TObject);
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

{$R *.dfm}

procedure TDataManager.DataModuleCreate(Sender: TObject);
begin
  UpdateDatabaseSchema;
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
