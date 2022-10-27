// use('locadora')

// encontra as pessoas registradas antes do dia 1 de outubro de 2022
db.cliente.find({ dataRegistro: { $lt: new Date('2022-10-01') } }).pretty();

// encontra funcionarios de salario maiores ou iguais a 2000
db.funcionario.find({ salario: { $gte: 2000 }  }).pretty();

// função que encontra a media de salario dos funcionarios, agrupados pelo cargo
db.funcionario.aggregate([{ $group: {_id:"$cargo", MediaSalarial: {$avg:"$salario"}} }]);

// cria um banco chamado pessoa_mapreduce que contem a média das idades das pessoas, agrupadas pelo sexo
db.pessoa.mapReduce(
    function(){
        emit(this.sexo, this.idade);
    },
    function(key, values) {
        return Array.avg( values )
    },
    {
        'out': 'pessoa_mapreduce'
    }
)

db.pessoa_mapreduce().find()
// Encontra todas as pessoas do sexo Feminino
db.pessoa.createIndex({sexo: "text"})

db.pessoa.find({
    $text: {
      $search: "F",
    },
}).pretty();

// Listar informações dos endereços de PE ordenados por numero ascendente
db.enderecos.aggregate([
    { $match: { estado: "PE"} },
    { $sort: { numero: 1 } },
    { $project:  { _id: 0, cep : 1, logradouro : 1, bairro : 1, cidade : 1, estado : 1, numero: 1, complemento: 1, referencia: 1}},
  ]).pretty();

// Listar CEP e numero total de enderecos
db.pessoa.aggregate([
    {
        $lookup: {
            from: "enderecos",
            localField: "enderecos",
            foreignField: "_id",
            as: "enderecos_info",
        }
    },
    {
        $unwind: "$enderecos_info",
    },
    {
        $group: {
            _id: "$enderecos_info.cep",
            total_enderecos: { $count: {} },
        },
    },
    {
        $project: {
            _id: 0,
            cep: "$_id",
            total_enderecos: 1,
        },
    },
]).pretty();

// Encontre os enderecos que pertence a pessoa de id 6
db.pessoa.find({ enderecos: { $exists: true, $all: [6] } }).pretty();

// Listar CPF, nome, email da pessoa de CPF "706.124.236-92"
db.pessoa.findOne({ cpf: "706.124.236-92" }, { _id: 0, nome: 1, cpf: 1, email: 1})

// Pegar os três funcionarios de maior salario
db.funcionario.find().sort({ valor: -1 }).limit(3);

// Alugueis com 3 jogos, agrupados pela situação de entrega (devolvido ou não) e calculando seus preços medios 
db.aluguel.aggregate([
    {
        jogos_id: { $size: 3 }
    },
    {
        $group: {   
            _id: "$devolvido",
            precoMedio: { $avg: "$preco" },
            count: { $sum: 1 }
        }
    }
]).pretty()

// Função que computa se aquele aluguel merece um desconto, caso tenha valor superior a R$30,00
db.aluguel.aggregate([
    {
        $addFields: {
            deserveDiscount: {
                $function: {
                    body: function(preco){
                        return preco >= 30.00
                    },
                    args: ["$preco"],
                    lang: "js"
                }
            }
        }
    }
]).pretty()

// Retorna os alugueis com id do aluguel, id_cliente
// e participaPromocao que guarda true caso o aluguel seja do dia 22 em diante
db.aluguel.aggregate([
    {
        $project: {
            id_cliente: 1,
            participaPromocao: {
                $cond: {  if: { $gte: ["$data_de_aluguel", ISODate("2022-10-22")]}, then: true, else: false}
            }
        }
    }
])

// Pesquisa de text com $search
db.pessoa.createIndex({nome: "text"})

db.pessoa.find({ "$text" : { "$search" : "manuel" } } )


// MAX 
// Encontra o salário máximo para cada cargo
db.funcionario.aggregate([
    {
        $group: {
            _id: "$cargo", MaxSalario:{$max: "$salario"}
        }
    }
]);

//SET
// Atualizar o salario do funcionario com o cargo de "gerente"
db.funcionario.update({ cargo: "Gerente" }, { $set: { salario:  2600.00} });

// Retorna os funcionários com o cargo de "vendedor"
db.funcionario.find({
    $where: function() {
        return ((this.cargo) == "Vendedor")
    }
});

// SAVE
// novos dados para o vendedor André Victor
 db.funcionario.save({
   pessoa: 1, 
   cargo: "Vendedor Chefe",
   dataContratacao: new Date("2022-09-05"),
   salario: 2350.00   
 });

// Adiciona uma plataforma a mais para o jogo God of War
db.jogo.updateOne(
    {_id: 9}, 
    {$addToSet: {plataformas: "PC"} } 
);


//agrupa os jogos por desenvolvedora e conta quantos jogos de cada desenvolvedora tem cadastrado
 db.jogo.aggregate([
    { $group : { _id : '$desenvolvedora', totaljogos : { $sum : 1 } } }
  ]).pretty()

//lista os filmes em ordem alfabetica
db.filme.aggregate([{ $sort : { titulo : 1, _id: 1 } }])

//indica os jogos que possuem como uma das plataformas o PlayStation 5
db.jogo.aggregate([
    {
        $project: {
            plataformas: {
               $filter: {
                  input: "$plataformas",
                  as: "plataforma",
                  cond: {  $eq : ["$$plataforma","PlayStation 5"]  } 
               }
            }
         }
    }
])

//lista os filmes que possuem o mesmo ano de lancamento com algum jogo
db.filme.aggregate( [
    {
      $lookup:
        {
          from: "jogo",
          localField: "anoLancamento",
          foreignField: "anoLancamento",
          as: "Datas_lancamento_parecidos"
        }
   }
 ] )

// muda o nome da banco cliente para "fregues"
db.cliente.renameCollection("Fregues");
