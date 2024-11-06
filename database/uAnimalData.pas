unit uAnimalData;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Aurelius.Bind.BaseDataset,
  Aurelius.Bind.Dataset, Aurelius.Linq, Aurelius.Criteria.Base,
  Aurelius.Criteria.Linq,
  Aurelius.Criteria.Projections;

type
  TAnimalData = class(TDataModule)
    dsSpecies: TDataSource;
    AureliusDatasetSpecies: TAureliusDataset;
    AureliusDatasetSpeciesId: TStringField;
    AureliusDatasetSpeciesSpecies: TStringField;
    AureliusDatasetSpeciesLiSpeciesCode: TStringField;
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

uses uDataManager, uAnimalModel;

{$R *.dfm}

procedure TAnimalData.DataModuleCreate(Sender: TObject);
begin
  GetSpeciesList
end;

procedure TAnimalData.GetSpeciesList;
begin
  AureliusDatasetSpecies.SetSourceList
    (DataManager.AureliusManager.Find<TSpecies>.OrderBy('Species').List, True);
  AureliusDatasetSpecies.Open;
end;

end.
