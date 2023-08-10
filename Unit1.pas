unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Db, DBTables, Grids, DBGrids, ExtCtrls;

type
  TFormPesquisa = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    TabelaPesquisa: TTable;
    DSTabelaPesquisa: TDataSource;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    procedure FormCreate(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisa: TFormPesquisa;

implementation

{$R *.DFM}

procedure TFormPesquisa.FormCreate(Sender: TObject);
begin
     TabelaPesquisa.cancelRange;
end;

procedure TFormPesquisa.RadioButton1Click(Sender: TObject);
begin
     GroupBox1.Hide;
     GroupBox2.Hide;
     TabelaPesquisa.CancelRange;
end;

procedure TFormPesquisa.RadioButton3Click(Sender: TObject);
begin
     Groupbox1.Show;
      GroupBox2.Hide;
       MaskEdit1.SetFocus;
end;

procedure TFormPesquisa.RadioButton4Click(Sender: TObject);
begin
     Groupbox2.Show;
      GroupBox1.Hide;
       MaskEdit3.SetFocus;      
end;

procedure TFormPesquisa.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key=13 then MaskEdit2.SetFocus;
end;

procedure TFormPesquisa.MaskEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key=13 then MaskEdit4.SetFocus;
end;

procedure TFormPesquisa.MaskEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key=13 then
      if (MaskEdit1.Text<>'  /  /    ') and (MaskEdit2.Text<>'  /  /    ') then begin
       TabelaPesquisa.IndexName:='byData';
        TabelaPesquisa.SetRange([MaskEdit1.Text], [MaskEdit2.Text]);
end;
end;
procedure TFormPesquisa.MaskEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key=13 then
      if (MaskEdit3.Text<>'  :  :  ') and (MaskEdit4.Text<>'  :  :  ') Then begin
       TabelaPesquisa.IndexName:='byHora';
        TabelaPesquisa.SetRange([MaskEdit3.Text], [MaskEdit4.Text]);
end;
end;

procedure TFormPesquisa.RadioButton2Click(Sender: TObject);
begin
     GroupBox1.Hide;
     GroupBox2.Hide;
end;

procedure TFormPesquisa.RadioButton2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  Var
  LocNome:String;
  begin
     LocNome:=InputBox ('Localizar', 'Entre com o nome:', '');
      TabelaPesquisa.IndexName:='byNome';
       TabelaPesquisa.SetRange([LocNome], [LocNome]);

end;

end.
