
#list a CVS file recursively
sub lsFolderRecursive {
    my $dir = $_[0];
    my $record;
    my $path;
    local *DIR;

    unless ( opendir( DIR, $dir ) ) {
        return;
    }
    while ( defined( $record = readdir(DIR) ) ) {
        next
          if ( $record eq "."
            or $record eq ".."
            or $record eq "CVS" );
            $path = $dir . "/" . $record;
        if ( -d $path ) {
            lsFolderRecursive($path);
        }
        else {
            push( @files, $path );
        }
    }
}


#sort files by name (lowercase)
@files = sort { lc $a cmp lc $b } @files;
