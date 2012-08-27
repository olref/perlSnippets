#postgreSQL with perl

use DBI;

my $dbDBIConnection="DBI:Pg:dbname=mydatabase;host=localhost;port=5432";
my $dbUser="myUser";
my $dbPass="passwd";

#database connection
my $dbh = DBI->connect($dbDBIConnection, $dbUser, $dbPass, {'RaiseError' => 1});

#insert / delete and update
my $update = "UPDATE/INSERT blablablabla;";
my $rows = $dbh->do($update);


#select
my $select  = "SELECT blablabalbalbaabl";
my $sth = $dbh->prepare($select);
$sth->execute();
my $ref = $sth->fetchrow_hashref();


#disconnection
$dbh->disconnect();
