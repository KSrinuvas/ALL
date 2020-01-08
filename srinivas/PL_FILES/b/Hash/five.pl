#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;


my $hash_ref = {
          'aa' => {
                    'bb' => {
                              'cc' => {
                                        'dd' => {
                                                  'id' => 74,
                                                  'agee' => 45,
                                                  'city' => 'krl',
                                                  'name' => 'uu',
                                                  'work' => 'bng'
                                                },
                                        'yy' => {
                                                  'work' => 'del',
                                                  'name' => 'pp',
                                                  'agee' => 25,
                                                  'city' => 'kkd',
                                                  'id' => 52
                                                },
                                        'xx' => {
                                                  'city' => 'bng',
                                                  'agee' => 22,
                                                  'id' => 32,
                                                  'work' => 'hyd',
                                                  'name' => 'ss'
                                                },
                                        'ee' => {
                                                  'work' => 'lgd',
                                                  'name' => 'mm',
                                                  'agee' => 22,
                                                  'city' => 'vbn',
                                                  'id' => 14
                                                },
                                        'zz' => {
                                                  'name' => 'qq',
                                                  'work' => 'kol',
                                                  'id' => 62,
                                                  'city' => 'chi',
                                                  'agee' => 35
                                                }
                                      }
                            }
                  }
        };





print Dumper($hash_ref);

my %five_dim = ();

## five_dim in dynamic way


$five_dim{'aa'}{'bb'}{'cc'}{'xx'}{'name'} = 'ss';
$five_dim{'aa'}{'bb'}{'cc'}{'xx'}{'agee'} = 22;
$five_dim{'aa'}{'bb'}{'cc'}{'xx'}{'city'} = 'bng';
$five_dim{'aa'}{'bb'}{'cc'}{'xx'}{'work'} = 'hyd';
$five_dim{'aa'}{'bb'}{'cc'}{'xx'}{'id'} = 32;

$five_dim{'aa'}{'bb'}{'cc'}{'yy'}{'name'} = 'pp';
$five_dim{'aa'}{'bb'}{'cc'}{'yy'}{'agee'} = 25;
$five_dim{'aa'}{'bb'}{'cc'}{'yy'}{'city'} = 'kkd';
$five_dim{'aa'}{'bb'}{'cc'}{'yy'}{'work'} = 'del';
$five_dim{'aa'}{'bb'}{'cc'}{'yy'}{'id'} = 52;

$five_dim{'aa'}{'bb'}{'cc'}{'zz'}{'name'} = 'qq';
$five_dim{'aa'}{'bb'}{'cc'}{'zz'}{'agee'} = 35;
$five_dim{'aa'}{'bb'}{'cc'}{'zz'}{'city'} = 'chi';
$five_dim{'aa'}{'bb'}{'cc'}{'zz'}{'work'} = 'kol';
$five_dim{'aa'}{'bb'}{'cc'}{'zz'}{'id'} = 62;

$five_dim{'aa'}{'bb'}{'cc'}{'dd'}{'name'} = 'uu';
$five_dim{'aa'}{'bb'}{'cc'}{'dd'}{'agee'} = 45;
$five_dim{'aa'}{'bb'}{'cc'}{'dd'}{'city'} = 'krl';
$five_dim{'aa'}{'bb'}{'cc'}{'dd'}{'work'} = 'bng';
$five_dim{'aa'}{'bb'}{'cc'}{'dd'}{'id'} = 74;

$five_dim{'aa'}{'bb'}{'cc'}{'ee'}{'name'} = 'mm';
$five_dim{'aa'}{'bb'}{'cc'}{'ee'}{'agee'} = 22;
$five_dim{'aa'}{'bb'}{'cc'}{'ee'}{'city'} = 'vbn';
$five_dim{'aa'}{'bb'}{'cc'}{'ee'}{'work'} = 'lgd';
$five_dim{'aa'}{'bb'}{'cc'}{'ee'}{'id'} = 14;

print Dumper(\%five_dim);
						
#=c
## i iterating the five dim hash

while( my ($k,$v) = each (%five_dim))	{
		print"$k => {\n";
		if (ref($v) eq "HASH")	{
				while(my ($k1,$v1) = each (%{$v}))	{
						print"\t $k1 => {\n";
						if (ref($v1) eq "HASH")	{
								while(my ($k2,$v2) = each (%{$v1}))	{
										print"\t\t $k2 => {\n";
										if (ref($v2) eq 'HASH')	{
												while(my ($k3,$v3) = each (%{$v2}))	{
														print"\t\t\t $k3 => {\n";
														if (ref($v3) eq 'HASH')	{
																while (my ($k4,$v4) = each (%{$v3}))	{
																		print"\t\t\t\t $k4 => $v4\n";
																}
														}
														print"\t\t\t        }\n";
												}
										}
										print"\t\t        }\n";
								}
						}
						print"\t        }\n";
				}
		
		}
		print"      }\n";
}


		



#=cut


	
