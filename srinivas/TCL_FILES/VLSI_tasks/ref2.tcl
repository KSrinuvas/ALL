

#Dictionary keys can be nested.

if 0 {

dict set mycars mustang color green
dict set mycars mustang horsepower 500
dict set mycars prius-c color orange
dict set mycars prius-c horsepower 99
set car [dict get $mycars mustang]
# $car is: color green horsepower 500

dict for {car cardetails} $mycars {
  puts $car
  dict for {key value} $cardetails {
    puts "  $key: $value"
  }
}

}


dict set hello a 100 200

puts [dict get $hello a]



