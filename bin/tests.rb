require_relative '../lib/building'
require 'pry'

jake = Tenant.new(name: "Jake Austin", age: 21, cred: 600)

dan = Tenant.new(name: "Dan Oleary", age: 21, cred: 600)

chris = Tenant.new(name: "Chris Garcia", age: 21, cred: 700)

konrad = Tenant.new(name: "Konrad Gessler", age: 21, cred: 650)

amazing = Tenant.new(name: "Amazing", age: 5, cred: 800)

puts jake.inspect

appt_one = Apartment.new(number: 1, sq_footage: 2000, num_beds: 4, num_baths: 1, rent: 4500 )
appt_two = Apartment.new(number: 2, sq_footage: 500, num_beds: 4, num_baths: 1, rent: 5000)
appt_three = Apartment.new(number: 3, sq_footage: 1000, num_beds: 4, num_baths: 1, rent: 5500)
appt_four = Apartment.new(number: 4, sq_footage: 7000, num_beds: 4, num_baths: 1, rent: 6000)
appt_five = Apartment.new(number: 5, sq_footage: 3000, num_beds: 4, num_baths: 1, rent: 6500)
appt_six = Apartment.new(number: 6, sq_footage: 6000, num_beds: 4, num_baths: 1, rent: 7000)

appt_one.add_tenant(jake)
appt_one.add_tenant(chris)
appt_one.add_tenant(konrad)
appt_one.add_tenant(dan)

appt_two.add_tenant(jake)
appt_two.add_tenant(chris)
appt_two.add_tenant(konrad)
appt_two.add_tenant(dan)

appt_three.add_tenant(jake)
appt_three.add_tenant(chris)
appt_three.add_tenant(konrad)
appt_three.add_tenant(dan)

appt_four.add_tenant(jake)
appt_four.add_tenant(chris)
appt_four.add_tenant(konrad)
appt_four.add_tenant(dan)

appt_five.add_tenant(amazing)
appt_five.add_tenant(amazing)
appt_five.add_tenant(amazing)
appt_five.add_tenant(amazing)

complex = Building.new(address: '123 Main Street')
complex.add_appt(appt_one)
complex.add_appt(appt_two)
complex.add_appt(appt_three)
complex.add_appt(appt_four)
complex.add_appt(appt_five)

puts complex.inspect
# complex.remove_appt(appt_three.number)
# complex.remove_appt(appt_four.number)
# complex.remove_appt(appt_five.number)




binding.pry
