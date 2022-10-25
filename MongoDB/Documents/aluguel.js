db.aluguel.insertMany([
    {
        _id: 1,
        id_cliente: ObjectId("6356fc576bea5973dc6a030a"), // Pessoa 8
        produtos_id: [10],
        data_de_aluguel: '22-10-2022',
        data_de_devolucao: '25-10-2022',
        devolvido: false
    },
    {
        _id: 2,
        id_cliente: ObjectId("6356fc903a7d479925ec3c54"), // Pessoa 6
        produtos_id: [5],
        data_de_aluguel: '20-10-2022',
        data_de_devolucao: '22-10-2022',
        devolvido: false
    },
    {
        _id: 3,
        id_cliente: ObjectId("6356fc9a9d1b06b500611c94"), // Pessoa 5
        produtos_id: [8, 4],
        data_de_aluguel: '18-10-2022',
        data_de_devolucao: '22-10-2022',
        devolvido: false
    },
    {
        _id: 4,
        id_cliente: ObjectId("6356fca773f81b21dfc5fc19"), // Pessoa 7
        produtos_id: [3, 7, 2],
        data_de_aluguel: '15-10-2022',
        data_de_devolucao: '18-10-2022',
        devolvido: true
    },
    {
        _id: 5,
        id_cliente: ObjectId("6356fcb26483e0787993fc5b"), // Pessoa 10
        produtos_id: [1],
        data_de_aluguel: '20-10-2022',
        data_de_devolucao: '25-10-2022',
        devolvido: false
    },
    {
        _id: 5,
        id_cliente: ObjectId("6356fca773f81b21dfc5fc19"), // Pessoa 7
        produtos_id: [6],
        data_de_aluguel: '22-10-2022',
        data_de_devolucao: '26-10-2022',
        devolvido: false
    }

])