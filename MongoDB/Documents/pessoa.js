db.pessoa.insertMany([
    {
        _id: 1,
        nome : "Andre Victor",
        cpf : "999.888.777-66",
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
        email : "Fernanda0205@gmail.com.br",
        telefone : 8173458888,
        sexo : "F",
        endereco_principal: 0,
        enderecos: [5]
    },
    {
        _id: 6,
        nome : "Henrique sakane",
        cpf : "706.124.236-92",
        email : "henriqueS@gmail.com.br",
        telefone : 8177778888,
        sexo : "M",
        endereco_principal: 0,
        enderecos: [2]
    },
    {
        _id: 7,
        nome : "Henrique sakane",
        cpf : "706.124.236-92",
        email : "henriqueS@gmail.com.br",
        telefone : 8177778888,
        sexo : "M",
        endereco_principal: 0,
        enderecos: [2]
    },
    {
        _id: 8,
        nome : "Henrique sakane",
        cpf : "706.124.236-92",
        email : "henriqueS@gmail.com.br",
        telefone : 8177778888,
        sexo : "M",
        endereco_principal: 0,
        enderecos: [2]
    },
    {
        _id: 9,
        nome : "Henrique sakane",
        cpf : "706.124.236-92",
        email : "henriqueS@gmail.com.br",
        telefone : 8177778888,
        sexo : "M",
        endereco_principal: 0,
        enderecos: [2]
    },
    {
        _id: 10,
        nome : "Henrique sakane",
        cpf : "706.124.236-92",
        email : "henriqueS@gmail.com.br",
        telefone : 8177778888,
        sexo : "M",
        endereco_principal: 0,
        enderecos: [2]
    },
])

db.pessoa.update({nome: "Samuel"}, {$set: {nome: "Samuel Chaves"}})
db.pessoa.update({cpf: "555.444.333-22"}, {$set: {email: "nandaC@gmail.com.br"}})
db.pessoa.update({nome: "Fernando Lima"}, {$set: {sexo: "M"}})
