db.cliente.insertMany([
  { 
    _id: 1,
    pessoa: 8,
    vip: true,
    dataRegistro: new Date('2022-09-25T08:00:00Z') 
  },
  { 
    _id: 2, 
    pessoa: 6, 
    vip: true, 
    dataRegistro: new Date('2022-09-30T09:00:00Z') 
  },
  { 
    _id: 3, 
    pessoa: 5, 
    vip: false, 
    dataRegistro: new Date('2022-10-01T09:00:00Z') 
  },
  { 
    _id: 4, 
    pessoa: 7, 
    vip: false, 
    dataRegistro: new Date('2022-10-01T11:21:39.736Z') 
  },
  { 
    _id: 5, 
    pessoa: 10, 
    vip: true, 
    dataRegistro: new Date('2022-10-04T21:23:13.331Z') 
  },
]);
