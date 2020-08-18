Week.destroy_all
List.destroy_all
ListEntry.destroy_all
ListItem.destroy_all
ListEntryListItem.destroy_all
Day.destroy_all
Meal.destroy_all
FoodItem.destroy_all
MealFoodItem.destroy_all

week = Week.create(week_number: 1)

sun = Day.create(week_day: "Sunday", week_id: week.id)
mon = Day.create(week_day: "Monday", week_id: week.id)
tues = Day.create(week_day: "Tuesday", week_id: week.id)
wed = Day.create(week_day: "Wednesday", week_id: week.id)
thurs = Day.create(week_day: "Thursday", week_id: week.id)
fri = Day.create(week_day: "Friday", week_id: week.id)
sat = Day.create(week_day: "Saturday", week_id: week.id)

sun_breakfast = Meal.create(name: "Breakfast", day_id: sun.id)
sun_lunch = Meal.create(name: "Lunch", day_id: sun.id)
sun_dinner = Meal.create(name: "Dinner", day_id: sun.id)
sun_snacks = Meal.create(name: "Snacks", day_id: sun.id)
mon_breakfast = Meal.create(name: "Breakfast", day_id: mon.id)
mon_lunch = Meal.create(name: "Lunch", day_id: mon.id)
mon_dinner = Meal.create(name: "Dinner", day_id: mon.id)
mon_snacks = Meal.create(name: "Snacks", day_id: mon.id)
tues_breakfast = Meal.create(name: "Breakfast", day_id: tues.id)
tues_lunch = Meal.create(name: "Lunch", day_id: tues.id)
tues_dinner = Meal.create(name: "Dinner", day_id: tues.id)
tues_snacks = Meal.create(name: "Snacks", day_id: tues.id)
wed_breakfast = Meal.create(name: "Breakfast", day_id: wed.id)
wed_lunch = Meal.create(name: "Lunch", day_id: wed.id)
wed_dinner = Meal.create(name: "Dinner", day_id: wed.id)
wed_snacks = Meal.create(name: "Snacks", day_id: wed.id)
thurs_breakfast = Meal.create(name: "Breakfast", day_id: thurs.id)
thurs_lunch = Meal.create(name: "Lunch", day_id: thurs.id)
thurs_dinner = Meal.create(name: "Dinner", day_id: thurs.id)
thurs_snacks = Meal.create(name: "Snacks", day_id: thurs.id)
fri_breakfast = Meal.create(name: "Breakfast", day_id: fri.id)
fri_lunch = Meal.create(name: "Lunch", day_id: fri.id)
fri_dinner = Meal.create(name: "Dinner", day_id: fri.id)
fri_snacks = Meal.create(name: "Snacks", day_id: fri.id)
sat_breakfast = Meal.create(name: "Breakfast", day_id: sat.id)
sat_lunch = Meal.create(name: "Lunch", day_id: sat.id)
sat_dinner = Meal.create(name: "Dinner", day_id: sat.id)
sat_snacks = Meal.create(name: "Snacks", day_id: sat.id)

pizza = FoodItem.create(name: "Pizza", )
salmon = FoodItem.create(name: "Salmon")
veggies = FoodItem.create(name: "Roasted Vegetables")

pizza_mm = MealFoodItem.create(meal_id: fri_dinner.id, food_item_id: pizza.id)
salmon_mm = MealFoodItem.create(meal_id: tues_dinner.id, food_item_id: salmon.id)
veggies_mm = MealFoodItem.create(meal_id: tues_dinner.id, food_item_id: veggies.id)

produce = List.create(name: "Produce", week_id: week.id)
meat = List.create(name: "Meat", week_id: week.id)
dairy = List.create(name: "Dairy", week_id: week.id)
dry_goods = List.create(name: "Dry Goods", week_id: week.id)
frozen = List.create(name: "Frozen", week_id: week.id)

milk = ListItem.create(name: "milk")
half_and_half = ListItem.create(name: "half and half")
apple = ListItem.create(name: "apple")

milk_entry = ListEntry.create(quantity: 1, unit_of_measure: "gallon", list_id: dairy.id)
half_and_half_entry = ListEntry.create(quantity: 1, unit_of_measure: "half gallon", list_id: dairy.id)
apple_entry = ListEntry.create(quantity: 3, unit_of_measure: "each", list_id: produce.id)

milk_mm = ListEntryListItem.create(list_entry_id: milk_entry.id, list_item_id: milk.id)
half_and_half_mm = ListEntryListItem.create(list_entry_id: half_and_half_entry.id, list_item_id: half_and_half.id)
apple_mm = ListEntryListItem.create(list_entry_id: apple_entry.id, list_item_id: apple.id)
