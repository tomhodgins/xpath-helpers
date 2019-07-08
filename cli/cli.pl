use strict;
use lib "../lib";
use xpathHelper;

#print "$ARGV[0]\n";

package xpathHelper {
  if ($#ARGV > -1) {
    print eval $ARGV[0];
    print "\n";
  }
}
