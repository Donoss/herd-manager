unit uFrmMaintSite;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.CheckLst, uAppTypes;

type
  TFrmMaintSite = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Panel2: TPanel;
    Button1: TButton;
    Button3: TButton;
    DBComboBox1: TDBComboBox;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    TabSheet3: TTabSheet;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
    FEditMode: TEditMode;
  public
    { Public declarations }
    procedure SetEditMode(AEditMode: TEditMode);
  end;

var
  FrmMaintSite: TFrmMaintSite;

implementation

{$R *.dfm}

uses uDataManager;

procedure TFrmMaintSite.Button5Click(Sender: TObject);
begin
  DataManager.AureliusDatasetSite.Cancel;
end;

procedure TFrmMaintSite.Button6Click(Sender: TObject);
begin
  DataManager.AureliusDatasetSite.Post;
  DataManager.AureliusManager.Flush;
end;

procedure TFrmMaintSite.SetEditMode(AEditMode: TEditMode);
begin
  FEditMode := AEditMode;
  case FEditMode of
    emAdd:
      begin
        Caption := 'Add New Site';
      end;
    emEdit:
      begin
        Caption := 'Edit Site';
      end;
  end;
end;
end.
