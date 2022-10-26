


db.createCollection("jogo")

db.createCollection("filme")
db.jogo.insertOne({_id:1 , titulo:"Resident Evil 1", anoLancamento: 1996, desenvolvedora: "Capcom", plataformas:["Playtation 1"] })
db.filme.insertOne({_id:1 ,titulo:"Blade Runner 2049", anoLancamento: 2017, midia: "Dvd", diretor:"Denis Villeneuve"})

db.jogo.insertMany([
{_id:2, titulo:"Far Cry 6", anoLancamento:  2021, desenvolvedora: "Ubisoft", plataformas:["PlayStation 4", "Xbox One","PlayStation 5" , "Xbox Series X e Series S", "Microsoft Windows","Amazon Luna" , "Google Stadia"] },
{_id:3, titulo:"Resident Evil Village", anoLancamento: 2021, desenvolvedora: "Capcom", plataformas:["PlayStation 4", "Xbox One","PlayStation 5" , "Xbox Series X e Series S", "Microsoft Windows"] },
{_id:4, titulo:"Mario Kart 8: Deluxe", anoLancamento: 2014, desenvolvedora: "Nintendo", plataformas:["Nintendo Switch", "Wii U"] },
{_id:5, titulo:"Need For Speed: Underground 2", anoLancamento: 2004 , desenvolvedora: "EA", plataformas:["PlayStation 2", "Xbox","Microsoft Windows"] },
{_id:6, titulo:"Valorant", anoLancamento: 2020, desenvolvedora: "Riot Games", plataformas:["PC"] },
{_id:7, titulo:"The Legend of Zelda: Breath of the wild", anoLancamento:2017, desenvolvedora: "Nintendo", plataformas:["Nintendo Switch", "Wii U"] },
{_id:8, titulo:"Halo Infinite", anoLancamento: 2021, desenvolvedora: "343 Industries", plataformas:["Xbox One" , "Xbox Series X e Series S", "Microsoft Windows"] },
{_id:9, titulo:"God of War", anoLancamento: 2018, desenvolvedora: "Santa Monica", plataformas:["PlayStation 4", "PlayStation 5" , "Microsoft Windows"] },
{_id:10, titulo:"Pokemon X", anoLancamento: 2013, desenvolvedora: "Game Freak", plataformas:["Nintendo 3ds"] }])

db.filme.insertMany([
{ _id:2,titulo: "Fight Club", anoLancamento: 1999, midia: "Dvd", diretor: "David Fincher" }, 
{ _id:3,titulo: "The GodFather", anoLancamento: 1972, midia: "Fita Cassete", diretor: "Francis Ford Coppola" },
{ _id:4,titulo: "Titanic", anoLancamento: 1997, midia: "Dvd", diretor: " James Cameron" }, 
{ _id:5,titulo: "Interestelar", anoLancamento: 2014, midia: "Blu Ray", diretor: "Christopher Nolan" }, 
{ _id:6,titulo: "Inception", anoLancamento: 2010, midia: "Dvd", diretor: "Christopher Nolan" },
{ _id:7,titulo: "The Batman", anoLancamento: 2022, midia: "Blu Ray", diretor: "Matt Reeves" }, 
{ _id:8,titulo: "Pulp Fiction", anoLancamento: 1994, midia: "Dvd", diretor: "Quentin Tarantino" },
{ _id:9,titulo: "Akira", anoLancamento: 1982, midia: "Fita Cassete", diretor: "Katsuhiro Otomo" }, 
{ _id:10,titulo:"Joker", anoLancamento: 2019, midia: "Blu Ray", diretor:"Todd Phillips"}])

db.filme.updateOne({titulo: "Akira"},{$set:{midia: "Dvd"}})
db.jogo.deleteOne({titulo:"Resident Evil 1"})