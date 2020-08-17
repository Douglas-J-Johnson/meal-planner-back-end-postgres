Week.destroy_all
List.destroy_all
ListEntry.destroy_all
ListItem.destroy_all
Day.destroy_all
Meal.destroy_all
FoodItem.destroy_all

milk = ListItem.create(name: "milk")
half_and_half = ListItem.create(name: "half and half")
apples = ListItem.create(name: "apple")

milk_in_list = ListEntry.create(quantity: 1, unit_of_measure: "gallon", list_item_id: milk.id)
half_and_half_in_list = ListEntry.create(quantity: 1, unit_of_measure: "half gallon", list_item_id: half_and_half.id)
apples_in_list = ListEntry.create(quantity: 3, unit_of_measure: "each", list_item_id: apples.id)

produce = List.create(name: "Produce", list_entry_id: apples_in_list.id)
meat = List.create(name: "Meat")
dairy = List.create(name: "Dairy", list_entry_id: [milk_in_list.id, half_and_half_in_list.id])
dry_goods = List.create(name: "Dry Goods")
frozen = List.create(name: "Frozen")

pizza = FoodItem.create(name: "Pizza")
salmon = FoodItem.create(name: "Salmon")
roasted_veggies = FoodItem.create(name: "Roasted Vegetables")

sun_breakfast = Meal.create(name: "Breakfast")
sun_lunch = Meal.create(name: "Lunch")
sun_dinner = Meal.create(name: "Dinner")
sun_snacks = Meal.create(name: "Snacks")
mon_breakfast = Meal.create(name: "Breakfast")
mon_lunch = Meal.create(name: "Lunch")
mon_dinner = Meal.create(name: "Dinner")
mon_snacks = Meal.create(name: "Snacks")
tues_breakfast = Meal.create(name: "Breakfast")
tues_lunch = Meal.create(name: "Lunch", food_item_id: pizza.id)
tues_dinner = Meal.create(name: "Dinner")
tues_snacks = Meal.create(name: "Snacks")
wed_breakfast = Meal.create(name: "Breakfast")
wed_lunch = Meal.create(name: "Lunch")
wed_dinner = Meal.create(name: "Dinner")
wed_snacks = Meal.create(name: "Snacks")
thurs_breakfast = Meal.create(name: "Breakfast")
thurs_lunch = Meal.create(name: "Lunch")
thurs_dinner = Meal.create(name: "Dinner")
thurs_snacks = Meal.create(name: "Snacks")
fri_breakfast = Meal.create(name: "Breakfast")
fri_lunch = Meal.create(name: "Lunch")
fri_dinner = Meal.create(name: "Dinner", food_item_id: [salmon.id, roasted_veggies.id])
fri_snacks = Meal.create(name: "Snacks")
sat_breakfast = Meal.create(name: "Breakfast")
sat_lunch = Meal.create(name: "Lunch")
sat_dinner = Meal.create(name: "Dinner")
sat_snacks = Meal.create(name: "Snacks")

sun = Day.create(week_day: "Sunday", meal_id: [sun_breakfast.id, sun_lunch.id, sun_dinner.id, sun_snacks.id])
mon = Day.create(week_day: "Monday", meal_id: [mon_breakfast.id, mon_lunch.id, mon_dinner.id, mon_snacks.id])
tues = Day.create(week_day: "Tuesday", meal_id: [tues_breakfast.id, tues_lunch.id, tues_dinner.id, tues_snacks.id])
wed = Day.create(week_day: "Wednesday", meal_id: [wed_breakfast.id, wed_lunch.id, wed_dinner.id, wed_snacks.id])
thurs = Day.create(week_day: "Thursday", meal_id: [thurs_breakfast.id, thurs_lunch.id, thurs_dinner.id, thurs_snacks.id])
fri = Day.create(week_day: "Friday", meal_id: [fri_breakfast.id, fri_lunch.id, fri_dinner.id, fri_snacks.id])
sat = Day.create(week_day: "Saturday", meal_id: [sat_breakfast.id, sat_lunch.id, sat_dinner.id, sat_snacks.id])

week = Week.create(day_id: [sun.id, mon.id, tues.id, wed.id, thurs.id, fri.id, sat.id], list_id: [produce, meat, dairy, dry_goods, frozen])