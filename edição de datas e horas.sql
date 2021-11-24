
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







