package kollokvie4.underveis;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class Farm implements Iterable<Animal> {

	private List<Animal> animals = new ArrayList<>();
	
	public void addAnimal(Animal animal) {
		if (animals.contains(animal)) {
			throw new IllegalStateException("The given animal is already in the farm");
		}
		animals.add(animal);
	}
	
	public List<Animal> getAnimals() {
		return new ArrayList<>(animals);
	}
	
	public Animal getAnimal(int index) {
		return animals.get(index);
	}
	
	public int numberOfAnimals() {
		return animals.size();
	}

	@Override
	public Iterator<Animal> iterator() {
		return new FarmIterator(this);
	}
	
	/*public static void main(String[] args) {
		List<Animal> animals = Arrays.asList(new Dog("Ludo", 12), new Dog("Fido", 0), new Chicken("Peter", 1),
				new Chicken("Albert", 4));
		
		Collections.sort(animals, 
				(animal1, animal2) -> animal1.getName().compareTo(animal2.getName()));

		
		for (Animal animal : animals) {
			System.out.println(animal.makeSound());
		}
	}*/
	
	public static void main(String[] args) {
		Farm farm = new Farm();
		farm.addAnimal(new Dog("Ludo", 12));
		farm.addAnimal(new Dog("Fido", 0));
		farm.addAnimal(new Chicken("Peter", 1));
		farm.addAnimal(new Chicken("Albert", 4));
		
		Iterator<Animal> iterator = new YoungAnimalsIterator(farm);
		while (iterator.hasNext()) {
			System.out.println(iterator.next().makeSound());
		}
		
		farm.getAnimal(1).incrementAge();
		farm.getAnimal(2).incrementAge();
		System.out.println();
		
		iterator = new YoungAnimalsIterator(farm);
		while (iterator.hasNext()) {
			System.out.println(iterator.next().makeSound());
		}
	}
	
}
