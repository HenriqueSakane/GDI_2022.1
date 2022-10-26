


db.createCollection("jogo")

db.createCollection("filme")
db.jogo.insertOne({titulo:"Resident Evil 1", anoLancamento: 1996, desenvolvedora: "Capcom", plataformas:["Playtation 1"] })
db.filme.insertOne({titulo:"Blade Runner 2049", anoLancamento: 2017, midia: "Dvd", diretor:"Denis Villeneuve"})

db.jogo.insertMany([
{titulo:"Far Cry 6", anoLancamento:  2021, desenvolvedora: "Ubisoft", plataformas:["PlayStation 4", "Xbox One","PlayStation 5" , "Xbox Series X e Series S", "Microsoft Windows","Amazon Luna" , "Google Stadia"] },
{titulo:"Resident Evil Village", anoLancamento: 2021, desenvolvedora: "Capcom", plataformas:["PlayStation 4", "Xbox One","PlayStation 5" , "Xbox Series X e Series S", "Microsoft Windows"] },
{titulo:"Mario Kart 8: Deluxe", anoLancamento: 2014, desenvolvedora: "Nintendo", plataformas:["Nintendo Switch", "Wii U"] },
{titulo:"Need For Speed: Underground 2", anoLancamento: 2004 , desenvolvedora: "EA", plataformas:["PlayStation 2", "Xbox","Microsoft Windows"] },
{titulo:"Valorant", anoLancamento: 2020, desenvolvedora: "Riot Games", plataformas:["PC"] },
{titulo:"The Legend of Zelda: Breath of the wild", anoLancamento:2017, desenvolvedora: "Nintendo", plataformas:["Nintendo Switch", "Wii U"] },
{titulo:"Halo Infinite", anoLancamento: 2021, desenvolvedora: "343 Industries", plataformas:["Xbox One" , "Xbox Series X e Series S", "Microsoft Windows"] },
{titulo:"God of War", anoLancamento: 2018, desenvolvedora: "Santa Monica", plataformas:["PlayStation 4", "PlayStation 5" , "Microsoft Windows"] },
{titulo:"Pokemon X", anoLancamento: 2013, desenvolvedora: "Game Freak", plataformas:["Nintendo 3ds"] }])

db.filme.insertMany([
{ titulo: "Fight Club", anoLancamento: 1999, midia: "Dvd", diretor: "David Fincher" }, 
{ titulo: "The GodFather", anoLancamento: 1972, midia: "Fita Cassete", diretor: "Francis Ford Coppola" },
{ titulo: "Titanic", anoLancamento: 1997, midia: "Dvd", diretor: " James Cameron" }, 
{ titulo: "Interestelar", anoLancamento: 2014, midia: "Blu Ray", diretor: "Christopher Nolan" }, 
{ titulo: "Inception", anoLancamento: 2010, midia: "Dvd", diretor: "Christopher Nolan" },
{ titulo: "The Batman", anoLancamento: 2022, midia: "Blu Ray", diretor: "Matt Reeves" }, 
{ titulo: "Pulp Fiction", anoLancamento: 1994, midia: "Dvd", diretor: "Quentin Tarantino" },
{ titulo: "Akira", anoLancamento: 1982, midia: "Fita Cassete", diretor: "Katsuhiro Otomo" }, 
{ titulo:"Joker", anoLancamento: 2019, midia: "Blu Ray", diretor:"Todd Phillips"}])

db.filme.updateOne({titulo: "Akira"},{$set:{midia: "Dvd"}})
db.jogo.deleteOne({titulo:"Resident Evil 1"})