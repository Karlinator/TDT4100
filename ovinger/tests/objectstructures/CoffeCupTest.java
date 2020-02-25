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
}
