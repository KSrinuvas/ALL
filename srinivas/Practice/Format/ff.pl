  #!/usr/bin/perl -w

    use strict;

    sub print_admin_usage_top {

        my $format  = "A D M I N   U S A G E\n\n" .
                       "Date: @<<<<<<<<<<\n\n"    .
                       "Username    Login    Logout   Activity\n" .
                       "--------------------------------------\n";

        $^A = ''; # Clear the accmulator
        formline($format, @_);
        print $^A;
    }



    sub print_admin_usage_data {

        my $format  = "@<<<<<<<    @<<<<<<< @<<<<<<< " .
                      "@<<<<<<<<<<<<<<<<<<<<<<<<<<\n";

        $^A = '';
        formline($format, @_);
        print $^A;
    }


		my $date = '23 Aug 2019';
	
    print_admin_usage_top($date);
    #print_admin_usage_top('19 Nov 2002');
    print_admin_usage_data('J Smith', '9:00', '12:00', 'Low');
    print_admin_usage_data('J Jones', '9:00', '12:00', 'Low');

    __END__
    Prints:


    A D M I N   U S A G E

    Date: 19 Nov 2002

    Username    Login    Logout   Activity
    --------------------------------------
    J Smith     9:00     12:00    Low
    J Jones     9:00     12:00    Low

