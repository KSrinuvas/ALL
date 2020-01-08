#!/usr/bin/perl -w
use strict;
use warnings;
use Text::CSV;

##############################################
# CSV prep utility    v1.0                   #
#                                            #
# This utility will take a CSV file export   #
# and prepare it for input into our Exchange #
# 2003 Server as a mail enabled contact.     #
##############################################

# Source CSV file will look like this:
# HEADER: Obj-Dist-Name (DN),Display Name (cn),E-Mail Addresses (rfc822Mailbox),Company (Company),Department (department),Office (physicalDeliveryOfficeName),Phone Number (telephoneNumber),First Name (givenName),Initials (initials),Last Name (sn),Title (title)
# RECORD: /o=DOMAIN/ou=LOCATION/cn=Recipients/cn=BobMarley,"Marley, Bob",bobm@rasta.org,Rasta Inc,Voice Services,"Kingston, Jamaica",777-555-1234,Bob,B,Marley,rastafarian

# Define the files that will be used. Future revision may prompt for these with the values here as a default.
my $infile = 'c:\work\input.csv';
my $outfile = 'c:\work\output.csv';

# Create CSV instances for input and output using the TEXT::CSV module
my $csv = Text::CSV->new();
my $csvout = Text::CSV->new();

# Open the infile and create the outfile.
open (CSV, "<", $infile) or die $!;
open my $csv_fh, ">", $outfile or die $!;

# Create an array with the fieldnames. Write this as the header for the output CSV file. 
my @fields = ('DN','objectClass','cn','distinguishedName','instanceType','displayName','targetAddress','mailNickname','name','objectCategory','mail','sn','givenName','showInAddressBook',
'Company','Department','physicalDeliveryOfficeName','telephoneNumber','title');
if ($csv->combine (@fields)) {
      my $string = $csv->string;
      print $csv_fh "$string\n";
      }
  else {
      my $err = $csv->error_input;
      print "combine () failed on argument: ", $err, "\n";
      }

# Begin parsing through the source file. Store the fields in variables denoted by the inFieldName.
while (<CSV>) {
    if ($csv->parse($_)) {
        my @columns = $csv->fields();
        my $inDN = $columns[0];
        my $inCN = $columns[1];
        my $inrfc822Mailbox = $columns[2];
        my $inCompany = $columns[3];
        my $inDepartment = $columns[4];
        my $inphysicalDeliveryOfficeName = $columns[5];
        my $intelephoneNumber = $columns[6];
        my $ingivenName = $columns[7];
        my $inInitials = $columns[8];
        my $insn = $columns[9];
        my $intitle = $columns[10];        
        
        #Now that we have the input fields, prepare the data for our output file.
        # break the incoming DN down to get just the CN from it.
        my @ary=split('/',$inDN);
        my $cntmp=$ary[-1];
        @ary=split('=',$cntmp);
        
        #now create the fields for output.
        my $DN="CN=$ary[-1],OU=test,DC=domain,DC=local";
        print $DN;
        print "\n";
        my $objectClass = "contact";
        my $cn = $ary[-1];
        my $distinguishedName = "OU=test,DC=domain,DC=local";
        my $instanceType = "4";
        my $displayName = "$ingivenName $inInitials $insn";
        my $targetAddress = "SMTP:$inrfc822Mailbox";
        my $mailNickname = "$ingivenName$insn$inInitials";
        my $name = $displayName;
        my $objectCategory = "CN=Person,CN=Schema,CN=Configuration,DC=domain,DC=local";
        my $mail = $inrfc822Mailbox;
        my $sn = $insn;
        my $givenName = $ingivenName;
        my $showInAddressBook = "CN=Default Global Address List,CN=All Global Address Lists,CN=Address Lists Container,CN=Org Name,CN=Microsoft Exchange,CN=Services,CN=Configuration,DC=domain,DC=local;CN=All Contacts,CN=All Address Lists,CN=Address Lists Container,CN=Organization Name,CN=Microsoft Exchange,CN=Services,CN=Configuration,DC=domain,DC=local";
        my $Company = $inCompany;
        my $Department = $inDepartment;
        my $physicalDeliveryOfficeName = $inphysicalDeliveryOfficeName;
        my $telephoneNumber = $intelephoneNumber;
        my $title = $intitle;
        
        # Now create an array containing the output data.
        my @fields = ($DN,$objectClass,$cn,$distinguishedName,$instanceType,$displayName,$targetAddress,$mailNickname,$name,$objectCategory,$mail,$sn,$givenName,$showInAddressBook,$Company,$Department,$physicalDeliveryOfficeName,$telephoneNumber,$title);
        
        #write it to the output file
        if ($csv->combine (@fields)) {
          my $string = $csv->string;
          print $csv_fh "$string\n";
          }
        else {
            my $err = $csv->error_input;
            print "combine () failed on argument: ", $err, "\n";
        }

    } else {
        my $err = $csv->error_input;
        print "Failed to parse line: $err";
    }
}
# close open handles and you are done.
close $csv_fh;
close CSV;

### The resultant file can now be imported to Active Directory using
### csvde -i -f c:\work\output.csv -v -j c:\log
### from the exchange system console.
