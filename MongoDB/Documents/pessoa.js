db.pessoa.insertMany([
    {
        _id: 1,
        nome : "Andre Victor",
        cpf : "999.888.777-66",
        idade : 15,
        email : "andre@gmail.com.br",
        telefone : 81999998888,
        sexo : "M",
        endereco_principal: 0,
        enderecos: [1]
    },
    {
        _id: 2,
        nome : "Henrique sakane",
        cpf : "706.124.236-92",
        idade : 23,
        email : "henriqueS@gmail.com.br",
        telefone : 8177778888,
        sexo : "M",
        endereco_principal: 0,
        enderecos: [2]
    },
    {
        _id: 3,
        nome : "Samuel",
        cpf : "111.222.333-98",
        idade : 50,
        email : "SSmuelC@gmail.com.br",
        telefone : 81987541923,
        sexo : "M",
        endereco_principal: 0,
        enderecos: [3]
    },
    {
        _id: 4,
        nome : "Fernando Lima",
        cpf : "222.333.444-90",
        idade : 32,
        email : "FLThor@gmail.com.br",
        telefone : 81986541890,
        sexo : "F",
        endereco_principal: 0,
        enderecos: [4]
    },
    {
        _id: 5,
        nome : "Fernanda",
        cpf : "555.444.333-22",
        idade : 75,
        email : "Fernanda0205@gmail.com.br",
        telefone : 8173458888,
        sexo : "F",
        endereco_principal: 0,
        enderecos: [5]
    },
    {
        _id: 6,
        nome : "Luana Lima",
        cpf : "999.111.222-78",
        idade : 19,
        email : "LuanaVS@gmail.com.br",
        telefone : 8197734562,
        sexo : "F",
        endereco_principal: 1,
        enderecos: [2,6]
    },
    {
        _id: 7,
        nome : "Carla Jorde",
        cpf : "456.999.111-23",
        idade : 48,
        email : "Cjorde@gmail.com.br",
        telefone : 81988324567,
        sexo : "F",
        endereco_principal: 0,
        enderecos: [7]
    },
    {
        _id: 8,
        nome : "Felipe Oliveira",
        cpf : "340.111.222-29",
        idade : 28,
        email : "FelipeDvcO@gmail.com.br",
        telefone : 81988010267,
        sexo : "M",
        endereco_principal: 1,
        enderecos: [1,8]
    },
    {
        _id: 9,
        nome : "Manuel pedro",
        cpf : "233.122.899-90",
        idade : 32,
        email : "Mpedro23@gmail.com.br",
        telefone : 81923232323,
        sexo : "M",
        endereco_principal: 0,
        enderecos: [7]
    },
    {
        _id: 10,
        nome : "Matheus Vilaça",
        cpf : "555.111.999-87",
        idade : 65,
        email : "Matheus23Vila@gmail.com.br",
        telefone : 81988885555,
        sexo : "M",
        endereco_principal: 0,
        enderecos: [4]
    },
])

db.pessoa.update({nome: "Samuel"}, {$set: {nome: "Samuel Chaves"}})
db.pessoa.update({cpf: "555.444.333-22"}, {$set: {email: "nandaC@gmail.com.br"}})
db.pessoa.update({nome: "Fernando Lima"}, {$set: {sexo: "M"}})
