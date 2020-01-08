#!/usr/bin/perl -w
use strict;
LINE:
		while (<>)	{
      	print "$. - $_";
	  } continue {
       print || die;
		} 
