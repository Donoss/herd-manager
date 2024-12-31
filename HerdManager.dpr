program HerdManager;



uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  uDataUtils in 'database\uDataUtils.pas',
  uAppTypes in 'uAppTypes.pas',
  uFrameSite in 'uFrameSite.pas' {FrameSites: TFrame},
  uFrmMain in 'uFrmMain.pas' {frmMain},
  uSiteData in 'database\site\uSiteData.pas' {SiteData: TDataModule},
  uSiteModel in 'database\site\uSiteModel.pas',
  uImages in 'resources\uImages.pas' {Images: TDataModule},
  uAnimalData in 'database\animal\uAnimalData.pas' {AnimalData: TDataModule},
  uAnimalModel in 'database\animal\uAnimalModel.pas',
  uUtilities in 'utilities\uUtilities.pas',
  uFrmMain2 in 'uFrmMain2.pas' {Form2},
  HerdManager.dxSettings in 'HerdManager.dxSettings.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TImages, Images);
  Application.CreateForm(TSiteData, SiteData);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
