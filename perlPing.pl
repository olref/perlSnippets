#!/usr/bin/perl
#
#
use Net::Ping;

my $ip = '127.0.0.1';
my $ping = Net::Ping->new("tcp");
my $result = $ping->ping($ip);

if ($result) {
    print "OK\n";
} else {
    print "NOK\n"
}
