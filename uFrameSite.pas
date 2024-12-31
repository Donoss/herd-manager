unit uFrameSite;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.WinXCtrls, Vcl.Grids,
  Vcl.DBGrids, uAppTypes, Vcl.ComCtrls,

  Vcl.CheckLst, System.Notification, Vcl.Menus, AdvMenus, Vcl.ToolWin;


type
  TFrameSites = class(TFrame)
    dsContacts: TDataSource;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    SplitView2: TSplitView;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    GroupBox4: TGroupBox;
    SplitView4: TSplitView;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Panel1: TPanel;
    Panel3: TPanel;
    btnCancelContact: TSpeedButton;
    btnSaveContact: TSpeedButton;
    Panel2: TPanel;
    Panel4: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBGrid2: TDBGrid;
    SplitView1: TSplitView;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    CheckBox1: TCheckBox;
    ToolBar3: TToolBar;
    ToolButton7: TToolButton;
    ToolButton5: TToolButton;
    
  private
    { Private declarations }

  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uFrmMain, uFrmMaintSite, uSiteData, uDataUtils, uSiteModel, uImages;



end.
