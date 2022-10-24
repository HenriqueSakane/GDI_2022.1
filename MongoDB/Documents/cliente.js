db.cliente.insertMany([
  { 
    _id: ObjectId("6356fc576bea5973dc6a030a"),
    pessoa: 8,
    vip: true,
    dataRegistro: new Date('2022-09-25T08:00:00Z') 
  },
  { 
    _id: ObjectId("6356fc903a7d479925ec3c54"), 
    pessoa: 6, 
    vip: true, 
    dataRegistro: new Date('2022-09-30T09:00:00Z') 
  },
  { 
    _id: ObjectId("6356fc9a9d1b06b500611c94"), 
    pessoa: 5, 
    vip: false, 
    dataRegistro: new Date('2022-10-01T09:00:00Z') 
  },
  { 
    _id: ObjectId("6356fca773f81b21dfc5fc19"), 
    pessoa: 7, 
    vip: false, 
    dataRegistro: new Date('2022-10-01T11:21:39.736Z') 
  },
  { 
    _id: ObjectId("6356fcb26483e0787993fc5b"), 
    pessoa: 10, 
    vip: true, 
    dataRegistro: new Date('2022-10-04T21:23:13.331Z') 
  },
]);
