unit uDataUtils;

interface

uses
  System.RegularExpressions;

type
  TDataUtils = class
  public
    class function ValidateAttributeFormat(AAttributeKind, AValue: string; out ValidationMessage: string): Boolean;
  end;

implementation

class function TDataUtils.ValidateAttributeFormat(AAttributeKind, AValue: string; out ValidationMessage: string): Boolean;
var
  RegexPattern: string;
begin
  // Select regex pattern based on AAttributeKind
  if AAttributeKind = 'holdingNumber' then
    RegexPattern := '^\d{2}/\d{3}/\d{4}$'  // Format: 99/999/9999 - Holding Number
  else if AAttributeKind = 'postcode' then
    RegexPattern := '^[A-Z]{1,2}[0-9][A-Z0-9]? ?[0-9][A-Z]{2}$'  // UK Postcode format
  else if AAttributeKind = 'portNumber' then
    RegexPattern := '^\d{2}/\d{4}$'  // Example: Port Number as 5 digits
  else if AAttributeKind = 'fsaNumber' then
    RegexPattern := '^\d{4}-\d{4}$'  // Example: FSA Number as 9999-9999
  else
  begin
    ValidationMessage := 'Unknown Attribute Kind';
    Exit(False);  // If an unknown AAttributeKind is provided
  end;

  // Perform validation using the selected pattern
  Result := TRegEx.IsMatch(AValue, RegexPattern);

  // Set the appropriate validation message based on the result
  if not Result then
  begin
    if AAttributeKind = 'holdingNumber' then
      ValidationMessage := 'Holding Number does not have the correct format e.g. 50/900/9555'
    else if AAttributeKind = 'postcode' then
      ValidationMessage := 'Postcode does not have the correct format e.g. S36 2BS'
    else if AAttributeKind = 'portNumber' then
      ValidationMessage := 'Port Number does not have the correct format e.g. 10/4456'
    else if AAttributeKind = 'fsaNumber' then
      ValidationMessage := 'FSA Number does not have the correct format e.g. 2234-6654';
  end;
end;

end.

