
/*

	Retorna a data atual do servidor

*/

select curdate() as dataAtual;
select current_date() as dataAtual;

/*

	Retorna a hora atual do servidor

*/

select curtime() as horaAtual;
select current_time() as horaAtual;


/*

	Retorna a data e a hora atual do servidor

*/

select current_timestamp() as dataHoraAtual;

/*

	Funções de formatação de hora

*/

select time_format(curtime(), '%H') as hora;
select time_format(curtime(), '%i') as minuto;
select time_format(curtime(), '%s') as segundo;
select time_format(curtime(), '%H:%i') as horaMinuto;
select time_format(curtime(), '%r') as horaAMPM;
select time_format(curtime(), '%T') as hora24h;

/*

	hour(), minute(), second()

*/

select hour(curtime()) as hora;
select minute(curtime()) as minuto;
select second(curtime()) as segundo;

/*

	timediff() - calcula a diferença entre hora

*/

select timediff(curtime(), '06:00:00') as diferencaHora;

/*

Funções de formatação de data

*/

select date_format(curdate(), '%W') as diaSemana;

/*

	 segunda = 1 e domingo = 0

*/

select date_format(curdate(), '%w') as diaSemanaNumero;

select date_format(curdate(), '%a') as diaSemanaAbreviado;

select date_format(curdate(), '%m') as numeroMes;

select date_format(curdate(), '%b') as mesAbreviado;

select date_format(curdate(), '%M') as nomeMes;

select date_format(curdate(), '%d') as diaDoMes;

select date_format(curdate(), '%y') as doisDigitosAno;

select date_format(curdate(), '%Y') as ano;

select date_format(curdate(), '%Y-%m-%d') as dataFormatada;
select date_format(curdate(), '%d/%m/%Y') as dataFormatada;

/*

	day(), month(), year()

*/

select day(curdate()) as dia;
select month(curdate()) as numeroMes;
select year(curdate()) as ano;

/*

	datediff() - calcula a diferenças entre datas

*/

select datediff(curdate(), '2021-11-23') as diferencaData;

/*



*/

select week(curdate()) as numeroDaSemana;

/*

	segunda = 0 e domingo = 6

*/

select weekday(curdate()) as numeroDaSemana;
select weekofyear(curdate()) as numeroDaSemana;

/*

	Retorna o ano e o número da semana daquele dia

*/

select yearweek(curdate()) as anoNumeroSemana;

select dayofyear(curdate()) as numeroDiaAno;