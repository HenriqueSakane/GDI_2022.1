db.funcionario.insertMany([
  { 
    _id: 1,
    pessoa: 2,
    cargo: "Gerente",
    dataContratacao: new Date("2022-09-02"),
    salario: 2500.00,
  },
  { 
    _id: 2, 
    pessoa: 1, 
    cargo: "Vendedor",
    dataContratacao: new Date("2022-09-05"),
    salario: 2200.50,
  },
  { 
    _id: 3, 
    pessoa: 3, 
    cargo: "Vendedor",
    dataContratacao: new Date("2022-09-20"),
    salario: 2200.50, 
  },
  { 
    _id: 4, 
    pessoa: 4, 
    cargo: "Vendedor",
    dataContratacao: new Date("2022-10-10"),
    salario: 1950.00, 
  },
  { 
    _id: 5, 
    pessoa: 9, 
    cargo: "Zelador",
    dataContratacao: new Date("2022-09-15"),
    salario: 1500.00, 
  },
]);
