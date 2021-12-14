use dbFilmesturmab;

show tables;

select * from vwListaFilme;

/*

	Functions e procedures

*/

/*

	deterministic - para especificar que o retorno da função será o mesmo tipo
		de dado da entrada de argumentos (caso haja)

	not deterministic - para especificar que o retorno da função será diferente 
		do tipo de dados da entrada dos argumentos

*/

/*

	DELIMITER - especifica qaul será o símbolo para o encerramento da function

*/

DELIMITER $$
create function saudacao(filme char(50)/* usuario char(20), a int */)

	returns char(70) /* Define o tipo de dados de retorno da function*/
	deterministic
    
	BEGIN
    
		/*
    
			Declaração de variáveis da function
    
		*/

		declare horaAtual time;
		declare hora char(2);
        declare mensagem char(100);
    
		/*
        
			Para atribuir dados a uma variável utilizamos o comando set
        
        */
    
		set horaAtual = curtime();
        set hora = hour(horaAtual);
        
        if hora >= 5 and hora < 12 then
			
            set mensagem = concat('Bom Dia!',filme);
            
		elseif hora >= 12 and hora < 18 then
        
			set mensagem = concat('Boa Tarde!', filme);
        
        elseif hora >= 18 and hora <= 23 then
        
			set mensagem = 'Boa Noite!';
        
        else
    
			set mensagem = 'Boa Madrugada!я';
    
		end if;
        
        return mensagem;

	END $$
    
/*

	Chamando uma função

*/

select *, saudacao(nomeFilme) from tblFilme;


/*

	Apaga uma função

*/

drop function saudacao;