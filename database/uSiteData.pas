unit uSiteData;

interface

uses
  System.SysUtils, System.Classes, Generics.Collections, Data.DB, Aurelius.Bind.BaseDataset,
  Aurelius.Bind.Dataset, Aurelius.Linq, Aurelius.Criteria.Base,
  Aurelius.Criteria.Linq,
  Aurelius.Criteria.Projections, uSiteModel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TSiteData = class(TDataModule)
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
    dsSiteMark: TDataSource;
    AureliusDatasetSiteMark: TAureliusDataset;
    AureliusDatasetSiteMarkId: TStringField;
    AureliusDatasetSiteMarkMark: TStringField;
    AureliusDatasetSiteMarkSpeciedId: TStringField;
    AureliusDatasetSiteMarkSiteId: TStringField;
    AureliusDatasetSiteMarkSpecies: TStringField;
    FDTableSite: TFDTable;
    FDTableSiteID: TStringField;
    FDTableSiteSITE_TYPE: TStringField;
    FDTableSiteIDENTIFIER: TStringField;
    FDTableSiteNAME: TStringField;
    FDTableSiteADDRESS: TStringField;
    FDTableSitePOSTCODE: TStringField;
    FDTableSiteSTATE: TStringField;
    FDTableSiteOPERATOR_NAME: TStringField;
    FDTableSiteOPERATOR_ADDRESS: TStringField;
    FDTableSiteOPERATOR_POSTCODE: TStringField;
    FDTableSiteOPERATOR_FLAG: TStringField;
    procedure GetOurSitesList;
    procedure AureliusDatasetSiteCalcFields(DataSet: TDataSet);
    procedure GetSiteMarksBySiteId(const SiteId: string);
    procedure AureliusDatasetSiteAfterOpen(DataSet: TDataSet);
    procedure AureliusDatasetSiteAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  SiteData: TSiteData;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDataManager, uAnimalData;

{$R *.dfm}


procedure TSiteData.AureliusDatasetSiteAfterOpen(DataSet: TDataSet);
begin
  if not DataSet.FieldByName('Id').IsNull then
    GetSiteMarksBySiteId(DataSet.FieldByName('Id').AsString);
end;

procedure TSiteData.AureliusDatasetSiteAfterScroll(DataSet: TDataSet);
begin
  if not DataSet.FieldByName('Id').IsNull then
    GetSiteMarksBySiteId(DataSet.FieldByName('Id').AsString);
end;

procedure TSiteData.AureliusDatasetSiteCalcFields(DataSet: TDataSet);
begin
  // Check Site
  if (not DataSet.FieldByName('SiteType').IsNull) and (DataSet.FieldByName('SiteType').AsString <> '') and
     (not DataSet.FieldByName('Identifier').IsNull) and (DataSet.FieldByName('Identifier').AsString <> '') and
     (not DataSet.FieldByName('Name').IsNull) and (DataSet.FieldByName('Name').AsString <> '') and
     (not DataSet.FieldByName('Address').IsNull) and (DataSet.FieldByName('Address').AsString <> '') and
     (not DataSet.FieldByName('Postcode').IsNull) and (DataSet.FieldByName('Postcode').AsString <> '') then
  begin
    AureliusDatasetSite.FieldByName('SiteDetailsFlag').AsBoolean := True;
  end
  else
  begin
    AureliusDatasetSite.FieldByName('SiteDetailsFlag').AsBoolean := False;
  end;

  // Check Keeper/Operator
  if (not DataSet.FieldByName('OperatorName').IsNull) and (DataSet.FieldByName('OperatorName').AsString <> '') and
     (not DataSet.FieldByName('OperatorAddress').IsNull) and (DataSet.FieldByName('OperatorAddress').AsString <> '') and
     (not DataSet.FieldByName('OperatorPostcode').IsNull) and (DataSet.FieldByName('OperatorPostcode').AsString <> '') then
  begin
    // All fields are populated, set flag to True
    AureliusDatasetSite.FieldByName('OperatorDetailsFlag').AsBoolean := True;
  end
  else
  begin
    // At least one field is not populated, set flag to False
    AureliusDatasetSite.FieldByName('OperatorDetailsFlag').AsBoolean := False;
  end;
end;

procedure TSiteData.GetOurSitesList;
begin
  AureliusDatasetSite.SetSourceList
    (DataManager.AureliusManager.Find<TSite>.Where(TLinq.Eq('OperatorFlag',
    True)).OrderBy('Name').List, True);
  AureliusDatasetSite.Open;
end;

procedure TSiteData.GetSiteMarksBySiteId(const SiteId: string);
begin

  AureliusDatasetSiteMark.Close;
  AureliusDatasetSiteMark.SetSourceList(DataManager.AureliusManager.Find<TSiteMark>
    .Where(TLinq.Eq('SiteId.Id', SiteId))
    .List, True);
  AureliusDatasetSiteMark.Open;

end;
end.
