unit uSiteDataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Aurelius.Bind.BaseDataset,
  Aurelius.Bind.Dataset, Aurelius.Linq, Aurelius.Criteria.Base,
  Aurelius.Criteria.Linq,
  Aurelius.Criteria.Projections;

type
  TSiteDataModule = class(TDataModule)
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
    AureliusDatasetSiteSiteDetailsFlag: TBooleanField;
    AureliusDatasetSiteOperatorDetailsFlag: TBooleanField;
    dsContact: TDataSource;
    AureliusDatasetContact: TAureliusDataset;
    StringField1: TStringField;
    procedure GetOurSitesList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SiteDataModule: TSiteDataModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDataManager, uSiteModel;

{$R *.dfm}

procedure TSiteDataModule.GetOurSitesList;
begin
  AureliusDatasetSite.SetSourceList
    (DataManager.AureliusManager.Find<TSite>.Where(TLinq.Eq('OperatorFlag',
    True)).OrderBy('Name').List, True);
  AureliusDatasetSite.Open;
end;

end.
