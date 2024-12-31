unit uUtilities;

interface

function GetGUID: string;

implementation

uses
  System.SysUtils;

function GetGUID: string;
var
  LGuid: TGUID;
begin
  CreateGUID(LGuid);
  Result := LowerCase(GUIDToString(LGuid).Replace('{', '').Replace('}', ''));
end;

end.
