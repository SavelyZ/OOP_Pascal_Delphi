unit Matr;

interface

uses
  Classes, SysUtils, Dialogs;

type
  TAnswer = array[0..3] of double;
  TMatr = array[0..3, 0..4] of double;

  function GaussAnswer(m: TMatr): TAnswer;

implementation

function GaussAnswer(m: TMatr): TAnswer;
var
  i, j, k, q: integer;
  c: double;
  a: TAnswer;
begin
  for i := 0 to 2 do
  begin
    k := i;
    for j := i + 1 to 3 do
    begin
      if m[j][k] = 0
      then c := 0
      else c := m[i][k] / m[j][k];
      for q := i to 4 do
      begin
        m[j][q] := m[j][q] * c - m[i][q];
      end;
    end;
  end;
  //-----
  for i := 3 downto 1 do
  begin
    k := i;
    for j := i-1 downto 0 do
    begin
      if m[j][k] = 0
      then c := 0
      else c := m[i][k] / m[j][k];
      for q := 0 to 4 do
        m[j][q] := m[j][q] * c - m[i][q];
    end;
  end;
  //------
  for i := 0 to 3 do a[i] := 0;
  a[0] := m[3][4] / m[3][3];
  if m[2][2] <> 0
  then a[1] := m[2][4] / m[2][2];
  if m[1][1] <> 0
  then a[2] := m[1][4] / m[1][1];
  if m[0][0] <> 0
  then a[3] := m[0][4] / m[0][0];

  //------
  result := a;



end;

end.

