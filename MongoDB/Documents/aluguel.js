// Inserção de documentos

db.aluguel.insertMany([
    {
        _id: 6,
        id_cliente: ObjectId("6356fc576bea5973dc6a030a"), // Pessoa 8
        jogos_id: [10],
        filmes_id: [],
        data_de_aluguel: new Date("2022-10-22"),
        data_de_devolucao: new Date("2022-10-25"),
        devolvido: false,
        preco: 20.00
    },
    {
        _id: 3,
        id_cliente: ObjectId("6356fc903a7d479925ec3c54"), // Pessoa 6
        jogos_id: [5],
        filmes_id: [1, 10],
        data_de_aluguel: new Date("2022-10-20"),
        data_de_devolucao: new Date("2022-10-22"),
        devolvido: true,
        preco: 47.00
    },
    {
        _id: 2,
        id_cliente: ObjectId("6356fc9a9d1b06b500611c94"), // Pessoa 5
        jogos_id: [8, 4],
        filmes_id: [],
        data_de_aluguel: new Date("2022-10-18"),
        data_de_devolucao: new Date("2022-10-22"),
        devolvido: false,
        preco: 35.00
    },
    {
        _id: 1,
        id_cliente: ObjectId("6356fca773f81b21dfc5fc19"), // Pessoa 7
        jogos_id: [3, 7, 2],
        filmes_id: [],
        data_de_aluguel: new Date("2022-10-15"),
        data_de_devolucao: new Date("2022-10-18"),
        devolvido: true,
        preco: 48.00
    },
    {
        _id: 4,
        id_cliente: ObjectId("6356fcb26483e0787993fc5b"), // Pessoa 10
        jogos_id: [1],
        filmes_id: [5],
        data_de_aluguel: new Date("2022-10-20"),
        data_de_devolucao: new Date("2022-10-25"),
        devolvido: false,
        preco: 25.00
    },
    {
        _id: 7,
        id_cliente: ObjectId("6356fc903a7d479925ec3c54"), // Pessoa 6
        jogos_id: [],
        filmes_id: [7, 4],
        data_de_aluguel: new Date("2022-10-23"),
        data_de_devolucao: new Date("2022-10-26"),
        devolvido: false,
        preco: 36.00
    },
    // Alugueis a serem atualizados
    {
        _id: 8,
        id_cliente: ObjectId("6356fca773f81b21dfc5fc19"), // Pessoa 7
        jogos_id: [6],
        filmes_id: [],
        data_de_aluguel: new Date("2022-10-24"),
        data_de_devolucao: new Date("2022-10-26"),
        devolvido: false,
        preco: 19.00
    },
    {
        _id: 5,
        id_cliente: ObjectId("6356fc9a9d1b06b500611c94"), // Pessoa 5
        jogos_id: [6],
        filmes_id: [3, 8],
        data_de_aluguel: new Date("2022-10-21"),
        data_de_devolucao: new Date("2022-10-22"),
        devolvido: true,
        preco: 47.00
    },
    {
        _id: 9,
        id_cliente: ObjectId("6356fc576bea5973dc6a030a"), // Pessoa 8
        jogos_id: [2, 3],
        filmes_id: [10],
        data_de_aluguel: new Date("2022-10-25"),
        data_de_devolucao: new Date("2022-10-27"),
        devolvido: false,
        preco: 33.00
    },
    // Aluguel a ser removido
    {
        _id: 10,
        id_cliente: ObjectId("6356fca773f81b21dfc5fc19"), // Pessoa 7
        jogos_id: [1],
        filmes_id: [3],
        data_de_aluguel: new Date("2022-10-22"),
        data_de_devolucao: new Date("2022-10-26"),
        devolvido: false,
        preco: 25.00
    }

])

// Remoção de documento

db.aluguel.remove({ _id: 10  })

// Atualização de documento

db.aluguel.update(
    {   jogos_id: [6]   },
    {
        $push: {
            jogos_id: {
                $each: [5, 7]
            }
        }
    },
    {   multi: true     }
)

db.aluguel.update( {data_de_devolucao: ISODate("2022-10-27")}, {$set: {data_de_devolucao: new Date("2022-10-28")}} )

db.aluguel.update(
    {   data_de_aluguel: ISODate("2022-10-20")   },
    {
        $set: {
            data_de_aluguel: new Date("2022-10-21"),
            data_de_devolucao: new Date("2022-10-26")
        }
    }
)