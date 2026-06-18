program SistemaCadastro;

uses crt;

var
    nome: array[1..100] of string;
    idade: array[1..100] of integer;
    opcao: integer;
    i, total: integer;

begin
    total := 0;

    repeat
        clrscr;
        writeln('===== MENU =====');
        writeln('1 - Cadastrar Pessoa');
        writeln('2 - Listar Cadastros');
        writeln('3 - Sair');
        writeln;
        write('Escolha uma opcao: ');
        readln(opcao);

        case opcao of
            1:
            begin
                total := total + 1;

                write('Nome: ');
                readln(nome[total]);

                write('Idade: ');
                readln(idade[total]);

                writeln('Cadastro realizado!');
                readln;
            end;

            2:
            begin
                writeln;
                writeln('===== PESSOAS CADASTRADAS =====');

                if total = 0 then
                    writeln('Nenhum cadastro encontrado.')
                else
                    for i := 1 to total do
                    begin
                        writeln('Cadastro ', i);
                        writeln('Nome : ', nome[i]);
                        writeln('Idade: ', idade[i]);
                        writeln('-----------------------');
                    end;

                readln;
            end;
        end;

    until opcao = 3;

    writeln('Sistema encerrado.');
end.