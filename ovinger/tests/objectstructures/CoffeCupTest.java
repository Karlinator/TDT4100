package objectstructures;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class CoffeCupTest {

	@Test
	public void ConstructorTest() {
		assertThrows(IllegalArgumentException.class, () -> {
			new CoffeeCup(-5.82, 0);
		}, "Negative values should throw IllegalArgumentException");
	}
	
	@Test
	public void getCapacityTest() {
		CoffeeCup tester = new CoffeeCup(10.0, 10.0);
		assertEquals(10.0, tester.getCapacity());
		tester = new CoffeeCup(55.8, 12.7);
		assertEquals(55.8, tester.getCapacity());
	}
	
	@Test
	public void getCurrentVolumeTest() {
		CoffeeCup tester = new CoffeeCup(10.0, 10.0);
		assertEquals(10.0, tester.getCurrentVolume());
		tester = new CoffeeCup(87, 3);
		assertEquals(3,  tester.getCurrentVolume());
	}
	
	@Test
	public void increaseCupSizeTest() {
		CoffeeCup tester = new CoffeeCup(10.0, 10.0);
		tester.increaseCupSize(55.8);
		assertEquals(65.8, tester.getCapacity());
	}
	
	@Test
	public void drinkCoffeeTest() {
		CoffeeCup tester = new CoffeeCup(10.0, 10.0);
		assertThrows(IllegalArgumentException.class, () -> {
			tester.drinkCoffee(15.87);
		});
		tester.drinkCoffee(5.1);
		assertEquals(4.9, tester.getCurrentVolume());
	}
	
	@Test
	public void fillCoffeeTest() {
		CoffeeCup tester = new CoffeeCup(10.0, 8.0);
		assertThrows(IllegalArgumentException.class, () -> {
			tester.fillCoffee(15.87);
		});
		//tester.fillCoffee(1.87);
		//assertEquals(9.87, tester.getCurrentVolume()); //This actually produces a floating point rounding error. Oops!
		tester.fillCoffee(0.258);
		assertEquals(8.258, tester.getCurrentVolume());
	}
}
