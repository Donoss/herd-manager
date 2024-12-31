unit uSiteData;

interface

uses
  System.SysUtils, System.Classes, Generics.Collections, Data.DB, uSiteModel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Phys, FireDAC.Stan.Pool, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait;

type
  TSiteData = class(TDataModule)
    dsSites: TDataSource;
    dsContact: TDataSource;
    dsSiteMarks: TDataSource;
    FDConnection: TFDConnection;
    FDQueryOurSpecies: TFDQuery;
    dsOurSpecies: TDataSource;
    FDQuerySites: TFDQuery;
    FDQuerySitesID: TWideStringField;
    FDQuerySitesSITE_TYPE_ID: TWideStringField;
    FDQuerySitesNAME: TWideStringField;
    FDQuerySitesHOLDING_NUMBER: TWideStringField;
    FDQuerySitesADDRESS: TWideStringField;
    FDQuerySitesPOSTCODE: TWideStringField;
    FDQuerySitesSTATE: TWideStringField;
    FDQuerySitesVW_SITE_TYPE: TWideStringField;
    FDQuerySiteMarks: TFDQuery;
    FDQueryOurSpeciesVW_SPECIES: TWideStringField;
    FDQuerySiteMarksID: TWideStringField;
    FDQuerySiteMarksMARK: TWideStringField;
    FDQuerySiteMarksSITE_ID: TWideStringField;
    FDQuerySiteMarksSPECIES_ID: TWideStringField;
    FDQuerySiteMarksVW_SITE_NAME: TWideStringField;
    FDQuerySiteMarksVW_SPECIES: TWideStringField;
    dsSiteContacts: TDataSource;
    FDQuerySiteContacts: TFDQuery;
    WideStringField1: TWideStringField;
    WideStringField3: TWideStringField;
    FDQuerySiteContactsNAME: TWideStringField;
    FDQuerySiteContactsLANDLINE: TWideStringField;
    FDQuerySiteContactsMOBILE: TWideStringField;
    FDQuerySiteContactsEMAIL: TWideStringField;
    FDQuerySiteContactsROLE_ID: TWideStringField;
    FDQuerySiteContactsVW_ROLE: TWideStringField;
    FDQuerySitesIS_OWNED: TBooleanField;
    FDQueryLkupSiteTypes: TFDQuery;
    dsLkupSiteTypes: TDataSource;
    FDQueryLkupSiteTypesID: TWideStringField;
    FDQueryLkupSiteTypesSITE_TYPE: TWideStringField;
    FDQueryLkupSiteTypesLI_SITE_TYPE_CODE: TWideStringField;
    dsLkupSiteRoles: TDataSource;
    FDQueryLkupSiteRoles: TFDQuery;
    FDQueryLkupSiteRolesID: TWideStringField;
    FDQueryLkupSiteRolesROLE: TWideStringField;
    procedure GetSitesList;
  //  procedure AureliusDatasetSiteCalcFields(DataSet: TDataSet);
  //  procedure GetSiteMarksBySiteId(const SiteId: string);
  //  procedure AureliusDatasetSiteAfterOpen(DataSet: TDataSet);
  //  procedure AureliusDatasetSiteAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  SiteData: TSiteData;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uAnimalData;

{$R *.dfm}


{procedure TSiteData.AureliusDatasetSiteAfterOpen(DataSet: TDataSet);
begin
  if not DataSet.FieldByName('Id').IsNull then
    GetSiteMarksBySiteId(DataSet.FieldByName('Id').AsString);
end;      }

{procedure TSiteData.AureliusDatasetSiteAfterScroll(DataSet: TDataSet);
begin
  if not DataSet.FieldByName('Id').IsNull then
    GetSiteMarksBySiteId(DataSet.FieldByName('Id').AsString);
end;               }

{procedure TSiteData.AureliusDatasetSiteCalcFields(DataSet: TDataSet);
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
end;           }

procedure TSiteData.GetSitesList;
begin
  if FDQuerySites.Active then
    FDQuerySites.Close;
  FDQuerySites.Open;
end;

{procedure TSiteData.GetSiteMarksBySiteId(const SiteId: string);
begin

  AureliusDatasetSiteMark.Close;
  AureliusDatasetSiteMark.SetSourceList(DataManager.AureliusManager.Find<TSiteMark>
    .Where(TLinq.Eq('SiteId.Id', SiteId))
    .List, True);
  AureliusDatasetSiteMark.Open;

end;   }
end.
