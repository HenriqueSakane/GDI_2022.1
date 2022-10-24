
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
