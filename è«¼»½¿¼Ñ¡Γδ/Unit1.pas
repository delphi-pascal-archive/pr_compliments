{$S-,R-,B-}
unit Unit1;

interface

uses
  Windows, SysUtils, Classes, Forms, StdCtrls, Controls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

const
qf=120; // ????? ????
f: array[1..120] of string=(
// ?????: 1-?? ????? - ??? ?,?,?-???????????
// ??? ??????
// ???????? ??????? ?????
'?? ',
'?? ???????,',
'?? ??? ?????? ??:',
'?? ',
'?? ?????? ?????????? ????, ???',
'?? ???????,',
'?? ?????????? ???? ?? ???? ???? - ',
'?? ',
'?? ??????',
'?? ?????? ??????????,',
'?? ???????? ???,',
'?? ',
'?? ? ???? ???????? ????? ? ????????? ????????',
'?? ????, ???',
'?? ',
// ???????? ???????????
'?? ???? ???????',
'?? ???????????? ???????? ?????? ???????',
'?? ??????????? ???????? ????? ????????',
'?? ???? ?????????? ???',
'?? ???? ???????????? ??????',
'?? ???? ???? ???????? ?????',
'?? ????? ????? ????',
'?? ?????? ?????? ??????? ??????',
'?? ??????????? ???? ????? ????',
'?? ???? ?????, ?? ??????? ???????? ? ??????? ??????????,',
'?? ?????????? ??????? ????? ????????? ?????',
'?? ?????????? ???? ??????',
'?? ???????????? ?????? ????? ?????',
'?? ????? ???? ????? ???????, ? ??????? ?????????? ????,',
'?? ???? ???????? ?????',
// ???????? ???????????????? ?????????????
'?? ????????? ?? ??? ???????? ????',
'?? ????????? ?????? ???? ????? ????????????? ????????? ???????',
'??  - ??? ?????????? ??????, ??????? ?? ???? ??? ??????? ? ????',
'?? ??????? ???????????? ??????????????? ????',
'?? ?????????? ??? ?????',
'?? ?????? ? ??? ??????, ???????? ????',
'?? ?????? ??? ??????? ??????',
'?? ??????????? ? ??????????? ????',
'?? ????????? ? ????? ????????? ?????? ???? ?????????? ????',
'?? ????????? ??? ????????? ??????? ??????',
'?? ?????????',
'?? ????????????',
'?? ??????, ??? ??????',
'?? ?????? ? ???????? ???? ?? ?????',
'?? ???????? ??? ???????????',
// ???????? ??????????? ??????
'?? .',
'?? , ???????? ??????? ?????? ???????????? ?????.',
'?? , ??????? ??????? ?????????? ????.',
'?? .',
'?? , ????? ?????????????, ??? ? ???-???? ???????!',
'?? , ????????? ???? ? ??? ????????, ????? ??????? ???? ????????!',
'?? !',
'?? , ??????? ?????????? ???? ?? ????? ??? ?? ???? ?????.',
'?? , ???????? ????? ???????? ? ?????? ??????.',
'?? , ??????????? ???? ? ??????? ??????.',
'?? .',
'?? , ??????? ??????? ? ?????? ?????? ?????.',
'?? , ???? ??????? ?? ??????? ? ??????????? ? ?????????? ???!',
'?? , ????? ? ????? ? ????.',
'?? !',

// ??? ??????
// ???????? ??????? ?????
'?? ??? ??????????,',
'?? ???????,',
'?? ? ???? ???????? ? ???? ???????:',
'?? ',
'?? ??? ??????,',
'?? ???????,',
'?? ?? ???? ???? ?????????? ???? - ',
'?? ',
'?? ??????',
'?? ?????? ??????????,',
'?? ?????? ???,',
'?? ',
'?? ??? ?????,',
'?? ??????, ',
'?? ?????? ?????????? ????, ???',
// ???????? ???????????
'?? ???? ???????',
'?? ???????????? ???????? ????? ???????',
'?? ???? ??????????? ? ????',
'?? ???? ???? ??????',
'?? ????????????? ????? ??????? ? ?????? ???',
'?? ???? ???????????? ?????',
'?? ????? ????? ????',
'?? ?????? ?????? ??????? ??????',
'?? ????????? ??????? ?????, ?? ??????? ????? ??????????,',
'?? ???? ???????????? ????',
'?? ???? ???? ????????',
'?? ???? ???????? ??????',
'?? ??????? ??????? ?????',
'?? ????? ???? ????? ???????, ????????? ?? ??????????????,',
'?? ???? ???????? ?????',
// ???????? ???????????????? ?????????????
'?? ?????????? ???? ?????????',
'?? ????????? ?????? ???? ????? ????????????? ????????? ???????',
'??  - ??? ?????????? ??????, ??????? ?? ???? ??? ??????? ? ??????',
'?? ?? ??????? ??????????? ??????',
'?? ?????????? ??? ?????',
'?? ?????? ? ??? ????? (??? ????? ????)',
'?? ?????? ??? ?? ?????',
'?? ??????????? ? ??????????? ????',
'?? ????????? ? ????? ????????? ?????? ????? ??????',
'?? ????????? ??? ????',
'?? ????????? ????',
'?? ???????????? ????',
'?? ?????? ????, ??? ??????',
'?? ?????? ? ???????? ???? ?? ?????',
'?? ???????? ??? ???????????',
// ???????? ??????????? ??????
'?? .',
'?? , ???????? ??????? ??? ?????.',
'?? , ??????? ??????? ?????????? ????.',
'?? .',
'?? , ?? ????? ?????? ? ???, ??? ? - ?????? ???.',
'?? , ????????? ? ??? ????????, ????? ??????? ???? ?????????? ????????!',
'?? !',
'?? , ??????? ??????? ??????? ??? ???? ???.',
'?? , ??????????? ???? ?????? ?????? ?????? ? ????????.',
'?? , ??????????? ???? ? ??????? ??????.',
'??  ? ??? ??????? ?????? ????.',
'?? , ??????? ??????? ? ?????? ?????? ?????.',
'?? , ???? ??????? ?? ??????? ? ??????????? ? ?????????? ???!',
'?? , ????? ? ????? ? ?????.',
'?? !');

var
 w: array[1..qf] of boolean;//true ??? ??????? ???? ?? ???????????
 s: string;
 p: char;

{$R *.DFM}

function pf(t:char): string;
var
 i,q,n:integer;
function e:boolean;
 begin
  e:=not w[i] and (f[i][1]=t) and ((f[i][2]=p)or(f[i][2]='?'))
 end;

begin
 //????????? ????? ???? t
 //??????????? ??????? ???????????
 pf:=' ???? ? ?? ???? ??? ??? ??????? ';
 q:=0;
 for i:=1 to qf do
  if e then inc(q);

 //????????? ?????
 n:=random(q)+1;
 for i:=1 to qf do
  if e then begin
 dec(n);
 if n=0
 then
  begin
   pf:=copy(f[i],pos(' ',f[i])+1,$FFFF)+' ';
   w[i]:=true;
   break;
  end;
 end;
end;

procedure komp(wp:char);
var
 i,k:integer;
 t:boolean;
 b:string;
begin
//???????? ??????????? ??? wp
fillChar(w,qf,#0);
p:=wp;
s:='';
for k:=1 to 4 do s:=s+pf('?')+pf('?')+pf('?')+pf('?');

//?????????????? ??????
s:=ansiLowerCase(s);
b:=ansiUpperCase(s);
t:=true;

for i:=1 to length(s) do
 if  s[i] in['.','!'] then t:=true else
 if (s[i] in['?'..'?'])and t then begin s[i]:=b[i];t:=false end else
 if (i<length(s)-1)and(s[i+1]=' ')and(s[i+2] in['.',',','!']) then begin
   s[i+1]:=s[i+2]; s[i+2]:=' ';
 end;

while pos('  ',s)>0 do delete(s,pos('  ',s),1);

form1.memo1.Clear;
form1.memo1.Lines.Add(s);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
color:=$D4E4F4;
form1.memo1.color:=$DFEFFF;
randomize;
end;

procedure TForm1.Label2Click(Sender: TObject);
begin
 komp('?');
 label2.Font.color:=$4444FF;
 label3.Font.color:=$FF8888;
end;

procedure TForm1.Label3Click(Sender: TObject);
begin
 komp('?');
 label3.Font.color:=$4444FF;
 label2.Font.color:=$FF8888;
end;

end.
