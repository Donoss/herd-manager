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
    TabSheet3: TTabSheet;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Memo1: TMemo;
    Memo2: TMemo;
    Panel4: TPanel;
    Button2: TButton;
    Button4: TButton;
    Button10: TButton;
    Memo3: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
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

procedure TFrmMaintSite.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  // Hide tabs for all TabSheets in PageControl1
  for i := 0 to PageControl1.PageCount - 1 do
  begin
    PageControl1.Pages[i].TabVisible := False;
  end;

  // Set the first TabSheet as active
  PageControl1.ActivePage := TabSheet1;
end;


procedure TFrmMaintSite.Button10Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
end;

procedure TFrmMaintSite.Button3Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
end;

procedure TFrmMaintSite.Button5Click(Sender: TObject);
begin
  DataManager.AureliusDatasetSite.Cancel;
end;

procedure TFrmMaintSite.Button6Click(Sender: TObject);
begin
  DataManager.AureliusDatasetSite.Post;
  DataManager.AureliusManager.Flush;
end;

procedure TFrmMaintSite.Button7Click(Sender: TObject);
begin
   PageControl1.ActivePageIndex := 2;
end;

procedure TFrmMaintSite.Button8Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

procedure TFrmMaintSite.FormShow(Sender: TObject);
begin
  //PageControl1.TabVisible := False;
end;

procedure TFrmMaintSite.SetEditMode(AEditMode: TEditMode);
begin
  FEditMode := AEditMode;
  case FEditMode of
    emAdd:
      begin
        Caption := 'Add New Site';
        DataManager.dsSite.DataSet.Insert;
        DataManager.dsSite.DataSet.FieldByName('SiteType').AsString := 'Farm';
        DataManager.dsSite.DataSet.FieldByName('State').AsString := 'Active';
      end;
    emEdit:
      begin
        Caption := 'Edit Site';
        DataManager.dsSite.DataSet.Edit;
      end;
  end;
end;
end.
