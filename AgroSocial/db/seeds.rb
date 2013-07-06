# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Notice.create(title: 'Portugal vai ter de devolver 310 mil euros do setor agrícola a Bruxelas',
              date_time: DateTime.new(2001,2,3),
              content:'No caso de Portugal, a devolução de fundos da Política Agrícola Comum (PAC) deve-se a restituições à exportação e organização comum do mercado do açúcar, correção proposta por deficiências nos procedimentos de seleção das declarações de exportação para os controlos físicos, segundo a Comissão Europeia.
As principais correções são imputadas à Grécia, que tem de devolver 107,6 milhões de euros pela redução não conforme do rendimento mínimo para as uvas secas e deficiências nos registos de efetivos e nos controlos no local relativamente aos prémios "animais", à Polónia, 79,9 milhões por deficiências no controlo do pedido inicial e na aprovação do plano empresarial das explorações agrícolas em regime de semissubsistência, e ao Reino Unido, 10,3 milhões cobrados também por deficiências na identificação dos animais e nos controlos no local no que respeita aos prémios "animais".
Ao abrigo desta decisão, serão recuperados fundos de 14 Estados-membros: Bélgica, República Checa, Alemanha, Irlanda, Grécia, Espanha, Lituânia, Hungria, Malta, Polónia, Portugal, Eslovénia, Eslováquia e Reino Unido, num total de 230 milhões de euros de despesas da PAC.',
              author:'Miguel Martins')

Notice.create(title: 'Agricultores que ganhem mais de 10 mil euros anuais vão pagar IVA',
              date_time: DateTime.new(2002,2,3),
              content:'As associações empresariais pedem ao Governo um período de adaptação, sem multas mas com pedagogia das autoridades.
As novas regras obrigam a uma comunicação prévia às Finanças do que vai ser transportado nas carrinhas ou camiões. Quem representa as empresas garante que muitas não estão preparadas para as novas regras.
O governo já adiou a nova lei por dois meses, mas os empresários dizem que não é suficiente. Muitas empresas ainda não conseguiram o software para avançar com o processo. Algumas associações alertam que podem acabar por faltar produtos nas lojas e supermercados.
Para contestar a lei e pedir um período de adaptação de pelo menos seis meses, noce associações, de vários setores (supermercados, panificação e pastelarias, imprensa ou restaurantes), fazem hoje uma conferência de imprensa, em Lisboa.
Um dos setores mais afetados pelas novas regras de transporte de mercadorias é a agricultura. Depois de muitas queixas, o Governo criou um regime especial que agrada a quem trabalha no campo.',
              author:'Antonio Lopez')
Notice.create(title: 'Empresários pedem tempo para adaptação à nova lei de transporte de mercadorias',
              date_time: DateTime.new(2013,3,5),
              content:'Paulo Portas diz que defender a agricultura não é crime, delito ou pecado. Por isso não compreende as críticas que foram feitas ao Presidente da República, no discurso do 10 de junho.
O ministro de Estado e dos Negócios Estrangeiros, que esteve este sábado de manhã presente na 50ª edição da Feira Nacional da Agricultura com a ministra Assunção Cristas, quis centrar-se exclusivamente nas questões da agricultura e recusou-se a falar de quaisquer outros assuntos de atualidade.
Durante várias horas deu a volta completa ao recinto numa visita que mais parecia uma campanha eleitoral.
Ainda assim, Paulo Portas aproveitou para anunciar que, em dois anos, Portugal conseguiu a abertura de mais 50 novos mercados à agricultura portuguesa, o que, diz o ministro, favorece as exportações e a economia portuguesa',
              author:'Paulo Portas')

Event.create(name: 'Feira do Fumeiro',
	start_date: DateTime.new(2013,7,5),
	end_date: DateTime.new(2013,9,2),
	description: 'Maior feira de fumeiro de sempre',
	local: 'Montalegre' )

Event.create(name: 'Feira do Bacalhau de Cebolada em Ponte de Lima',
	start_date: DateTime.new(2013,2,6),
	end_date: DateTime.new(2013,2,7),
	description: 'A Feira do Bacalhau de Cebolada em Ponte de Lima correspondeu às expetativas, foram milhares de pessoas que rumaram até à Vila de Ponte de Lima, para degustarem as iguarias típicas confeccionadas com bacalhau.
Integrada no projeto "Em época baixa Ponte de Lima em Alta" cujo objetivo é contrariar as dinâmicas da tendência sazonal, a Feira do Bacalhau de Cebolada relança uma iguaria gastronómica emblemática da região. O bacalhau prato típico nas feiras quinzenais, continua a sê-lo nos dias que correm nas tabernas e nos restaurantes de Ponte de Lima.
Esta significativa afluência refletiu-se também nos restaurantes da Vila, que como é habitual, recebem aos fins-de-semana, milhares de forasteiros, sendo de realçar que a procura aumentou neste fim-de-semana, pois à semelhança do sucesso do Arroz de Sarrabulho, também o bacalhau atrai novos públicos, contribuindo para o aumento de turistas/visitantes, com particular destaque para os espanhóis da vizinha Galiza.
O prato de bacalhau, que foi Rei ao longo de todo o evento, registou um volume de negócios significativo, traduzindo-se num movimento de cerca de 3.000kg de bacalhau, entre a venda e o que se consumiu nos restaurantes presentes na feira.
O projeto "Ponte de Lima em Alta" arrancou a 26 de janeiro prolongando-se até 3 de março com outra iguaria gastronómica a Feira do Porco e as Delícias do Sarrabulho. Desta forma, Ponte de Lima tem se afirmado no panorama gastronómico regional e a gastronomia ocupa já um lugar de destaque incontornável na economia local.',
	local: 'Ponte de Lima' )

Event.create(name: 'Festival da Cereja',
	start_date: DateTime.new(2013,5,5),
	end_date: DateTime.new(2013,6,2),
	description: 'O Porto Canal vai transmitir, no dia 8 de junho, sábado, entre as 15h30 e as 18h00, um programa especial dedicado ao Festival da Cereja.
“Resende em Festa” é o programa da RTP que vai estar no Festival da Cereja, no dia 9 de junho, domingo, entre as 14h00 e as 19h00, com apresentação de João Baião.
Duas tardes de emissão que vão apresentar o melhor que o concelho de Resende tem para oferecer!',
	local: 'Resende' )

Event.create(name: 'Festival da Carne',
	start_date: DateTime.new(2013,5,5),
	end_date: DateTime.new(2013,6,2),
	description: 'O Porto Canal vai transmitir, no dia 8 de junho, sábado, entre as 15h30 e as 18h00, um programa especial dedicado ao Festival da Cereja.
“Resende em Festa” é o programa da RTP que vai estar no Festival da Cereja, no dia 9 de junho, domingo, entre as 14h00 e as 19h00, com apresentação de João Baião.
Duas tardes de emissão que vão apresentar o melhor que o concelho de Resende tem para oferecer!',
	local: 'Vila Real' )

Feed.create(name:'JN',
	url:'http://www.jn.pt/RSS/rss.aspx?Feed=agricultura&Source=Tag')
Feed.create(name: 'TSF',
	url:'http://feeds.tsf.pt/TSF-Portugal')