var db;
var database = 'SQLite';
var version = '2.0';
var table = 'favs';
var maxSize = 4048;

db = openDatabase(database, version, table, maxSize);

function viewDB() {
  console.log("teste")
  db.transaction(function(tx){
    tx.executeSql('SELECT * from favs',[],function(transaction, result){
      console.log(result)
      }
    )
  })

}
