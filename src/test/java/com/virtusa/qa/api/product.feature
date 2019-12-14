Feature: Testing all the product rest APIs
  
    @smoke
    @regression
  Scenario: Get the full product list
		Given url 'http://10.62.125.4:8091/product/list'
		When method GET
		Then status 200
		#And  And match response[0].description == 'Spring Framework Guru Shirt'
	
	@addFeature	
  Scenario: Add a new product to the list
		Given url 'http://10.62.125.4:8091/product/add'
		And request {"description": "Pen","id": 4,"imageUrl": "string","price": 10,"productId": "arg1","version": 1}
		When method POST
		Then status 200
		
	#@deleteFeature	
 # Scenario: Delete the 3rd product from the product list
		#Given url 'http://10.62.125.4:8091/product/delete/3'
		#When method DELETE
		#Then status 200
		
	@editFeature
	@regression
  Scenario: Update the price of the first product in the list
		Given url 'http://10.62.125.4:8091/product/update/1'
		And request {"id": 1,"version": 0,"productId": "235268845711068308","description": "Spring Framework Guru Shirt","imageUrl": "https://springframework.guru/wp-content/uploads/2015/04/spring_framework_guru_shirt-rf412049699c14ba5b68bb1c09182bfa2_8nax2_512.jpg","price": 20}
		When method PUT
		Then status 200
