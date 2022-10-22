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
        nome : "Henrique sakane",
        cpf : "706.124.236-92",
        email : "henriqueS@gmail.com.br",
        telefone : 8177778888,
        sexo : "M",
        endereco_principal: 0,
        enderecos: [2]
    },
    {
        _id: 4,
        nome : "Henrique sakane",
        cpf : "706.124.236-92",
        email : "henriqueS@gmail.com.br",
        telefone : 8177778888,
        sexo : "M",
        endereco_principal: 0,
        enderecos: [2]
    },
    {
        _id: 5,
        nome : "Henrique sakane",
        cpf : "706.124.236-92",
        email : "henriqueS@gmail.com.br",
        telefone : 8177778888,
        sexo : "M",
        endereco_principal: 0,
        enderecos: [2]
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

db.visitantes.update({nome: "Leticia Torres"}, {$set: {nome: "Letycia Torres"}})
db.visitantes.update({cpf: "555.444.333-22"}, {$set: {email: "nandoC@gmail.com.br"}})
db.visitantes.update({nome: "Fernando Chaves"}, {$set: {sexo: "M"}})
