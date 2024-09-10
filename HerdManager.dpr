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
  uAppTypes in 'uAppTypes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Calypso');
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDataManager, DataManager);
  Application.CreateForm(TFrmMaintSite, FrmMaintSite);
  Application.Run;
end.
