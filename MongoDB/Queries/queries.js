
// encontra as pessoas registradas antes do dia 1 de outubro de 2022
db.cliente.find({ dataRegistro: { $lt: new Date('2022-10-01') } }).pretty();

// encontra funcionarios de salario maiores ou iguais a 2000
db.funcionario.find({ salario: { $gte: 2000 }  }).pretty();

// função que encontra a media de salario dos funcionarios, agrupados pelo cargo
db.funcionario.aggregate([{ $group: {_id:"$cargo", MediaSalarial: {$avg:"$salario"}} }]);

// Mapreduce não funciona no mongodb atlas atualmente, não testei se funciona.
// aumenta o salario dos funcionarios em 10%
var map = function () {
    emit(this.salario);
};
var reduce = function (salario) {
    novoSalario = (salario)+salario*0.1
    return novoSalario;
};

db.funcionario.mapReduce(map, reduce, { out: "NovoSalario:" });

// Encontra todas as pessoas do sexo Feminino
db.pessoa.createIndex({sexo: "text"})

db.pessoa.find({
    $text: {
      $search: "F",
    },
}).pretty();

// muda o nome da banco cliente para "fregues"
db.cliente.renameCollection("Fregues");

// Listar informações dos endereços de PE ordenados por numero ascendente
db.enderecos.aggregate([
    { $match: { estado: "PE"} },
    { $sort: { numero: 1 } },
    { $project:  { _id: 0, cep : 1, logradouro : 1, bairro : 1, cidade : 1, estado : 1, numero: 1, complemento: 1, referencia: 1}},
  ]).pretty();

// Listar _id e Total de clientes
db.cliente.aggregate([
    {
        $lookup: {
            from: "cliente",
            localField: "cliente",
            foreignField: "_id",
            as: "clientes_info",
        }
    },
    {
        $unwind: "$clientes_info",
    },
    {
        $group: {
            _id: "$clientes_info.nome",
            total_clientes: { $count: {} },
        },
    },
    {
        $project: {
            _id: 0,
            nome: "$_id",
            total_tickets: 1,
        },
    },
]).pretty();

// Encontre os enderecos que pertence a pessoa de id 6
db.enderecos.find({ pessoa: { $exists: true, $all: [6] } }).pretty();

// Listar CPF, nome, email da pessoa de CPF "706.124.236-92"
db.pessoa.findOne({ cpf: "706.124.236-92" }, { _id: 0, nome: 1, cpf: 1, email: 1})

// Pegar os três funcionarios de maior salario
db.funcionario.find().sort({ valor: -1 }).limit(3);

// Alugueis com 2 ou 3 produtos, agrupados pela situação de entrega (devolvido ou não) e calculando seus preços medios 
db.aluguel.aggregate([
    {
        $match: {   $or: [ {id_produtos: {  $size: 2  }}, {id_produtos: {  $size: 3  }} ]   }
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

//
db.aluguel.aggregate([
    {
        $project: {
            id_cliente: 1,
            participaPromocao: {
                $cond: {  $if: { $gte: ["$data_de_aluguel", Date("2022-10-22")]}, then: true, else: false}
            }
        }
    }
])