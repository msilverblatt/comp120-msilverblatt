require ('couchdb');

server = CouchDB::Server.new "67.23.79.113", 5984
database = CouchDB::Database.new server, "msilverblatt"
database.delete_if_exists!
database.create_if_missing!

document_one = CouchDB::Document.new database, "_id" => "doc_0", "category" => "one"
document_one.save

# [-1] Didn't do any exception handling.  Try running it now...
