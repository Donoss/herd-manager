program HerdManager;



uses
  Vcl.Forms,
  uFrmMain in 'uFrmMain.pas' {frmMain},
  Vcl.Themes,
  Vcl.Styles,
  uDataManager in 'database\uDataManager.pas' {DataManager: TDataModule},
  uSiteModel in 'database\uSiteModel.pas',
  uFrameSite in 'uFrameSite.pas' {FrameOurSites: TFrame},
  uFrmMaintSite in 'uFrmMaintSite.pas' {FrmMaintSite},
  uAppTypes in 'uAppTypes.pas',
  uSiteData in 'database\uSiteData.pas' {SiteData: TDataModule},
  uDataUtils in 'database\uDataUtils.pas',
  uAnimalModel in 'database\uAnimalModel.pas',
  uAnimalData in 'database\uAnimalData.pas' {AnimalData: TDataModule},
  uFrmMarkDialog in 'uFrmMarkDialog.pas' {FrmMarkDialog};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Material Oxford Blue');
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDataManager, DataManager);
  Application.CreateForm(TSiteData, SiteData);
  Application.CreateForm(TAnimalData, AnimalData);
  Application.CreateForm(TFrmMaintSite, FrmMaintSite);
  Application.CreateForm(TFrmMarkDialog, FrmMarkDialog);
  Application.Run;
end.
