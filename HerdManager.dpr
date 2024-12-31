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
  Unit1 in 'Unit1.pas' {Form1},
  Unit3 in 'Unit3.pas' {TMSForm3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Material Oxford Blue');
  Application.CreateForm(TImages, Images);
  Application.CreateForm(TSiteData, SiteData);
  Application.CreateForm(TTMSForm3, TMSForm3);
  Application.Run;
end.
