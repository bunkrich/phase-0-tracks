#Restaurant Menu split into DRINKS then FOOD

menu = {
	drinks: {
		cocktails: {
			old_fashioned: 13,
			martini: 14,
			mojito: 14,
			maragarita: 13,
			manhattan: 15,
			sour: 11,
			negroni: 14,
			fizz: 11,
			well_drink: 9,
			cosmo: 12,
			sazerac: 14
		},
		draft_beers: {
		  ale: 7,
			lager: 6,
			stout: 6,
			pale_ale: 8,
			wheat_bear: 8,
			porter: 7
		},
		bottle_beers: [
			'pilsner',
			'cider',
			'ale'
		], #beer prices are always the same 
		wines: {
			riesling: 9,
			chardonnay: 12,
			sauvignon_blanc: 10,
			pinot_noir: 12,
			shiraz: 14,
			grenache: 16,
			malbec: 8,
			champagne: 19,
			cuve: 10
		}
	},
	food: {
		snacks: {
			shrimp_cocktail: 12,
			deviled_eggs: 7,
			fries: 7,
			cheese_plate: 15
		},
		pizzas: {
			cheese: 18,
			pepperoni: 20,
			mushroom: 19,
			veggie: 22
		},
		salads: [
			'iceberg',
			'waldorf',
			'caesar',
			'garden'	
		] #salads are all the same price 
	}
}
# puts out all of the pizzas and their prices
	puts menu[:food][:pizzas]
#puts out all the wine and their prices
	puts menu[:drinks][:wines]
#puts out the name of the first kind of bottle of beer 
	puts menu[:drinks][:bottle_beers][0]
#puts out the price of the cuve wine 
	puts menu[:drinks][:wines][:cuve]
#puts out a reverse order of salads	
	puts menu[:food][:salads].reverse
#puts the first salad added to the menu
	puts menu[:food][:salads].first
