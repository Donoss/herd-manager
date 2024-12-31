unit uFrmCard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvCardList, DBAdvCardList, Data.DB,  Vcl.Themes,
  AdvSmoothTileList, Vcl.ExtCtrls, DBAdvNavigator;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    DBAdvCardList1: TDBAdvCardList;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uSiteData;

procedure TForm1.FormCreate(Sender: TObject);
begin
  TStyleManager.TrySetStyle('Material Oxford Blue');
end;

end.
