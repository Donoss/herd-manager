unit uImages;

interface

uses
  System.SysUtils, System.Classes, Vcl.BaseImageCollection, Vcl.ImageCollection,
  System.ImageList, Vcl.ImgList, Vcl.VirtualImageList;

type
  TImages = class(TDataModule)
    VirtualImageListHeight48: TVirtualImageList;
    ImageCollection1: TImageCollection;
    VirtualImageListHeight24: TVirtualImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Images: TImages;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
