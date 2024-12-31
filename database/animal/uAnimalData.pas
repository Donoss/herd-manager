unit uAnimalData;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Aurelius.Bind.BaseDataset,
  Aurelius.Bind.Dataset, Aurelius.Linq, Aurelius.Criteria.Base,
  Aurelius.Criteria.Linq,
  Aurelius.Criteria.Projections, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Phys, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TAnimalData = class(TDataModule)
    dsSpecies: TDataSource;
    FDManager: TFDManager;
    FDConnection: TFDConnection;
    FDTableSpecies: TFDTable;
    FDTableSpeciesID: TWideStringField;
    FDTableSpeciesSPECIES: TWideStringField;
    FDTableSpeciesLI_SPECIES_CODE: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure GetSpeciesList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AnimalData: TAnimalData;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uAnimalModel;

{$R *.dfm}

procedure TAnimalData.DataModuleCreate(Sender: TObject);
begin
  GetSpeciesList
end;

procedure TAnimalData.GetSpeciesList;
begin
 { AureliusDatasetSpecies.SetSourceList
    (DataManager.AureliusManager.Find<TSpecies>.OrderBy('Species').List, True);
  AureliusDatasetSpecies.Open;   }
end;

end.
