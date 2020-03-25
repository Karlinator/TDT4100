package patterns.delegation.office;

import java.util.ArrayList;
import java.util.Collection;
import java.util.function.BinaryOperator;

public class Manager implements Employee {
	private Collection<Employee> employees;
	private int taskCount = 0;

	public Manager(Collection<Employee> employees) {
		if (employees.isEmpty()) {throw new IllegalArgumentException();}
		this.employees = employees;
	}

	@Override
	public double doCalculations(BinaryOperator<Double> operation, double value1, double value2) {
		taskCount++;
		return getRandomEmployee().doCalculations(operation, value1, value2);
	}

	@Override
	public void printDocument(String document) {
		taskCount++;
		getRandomEmployee().printDocument(document);
		
	}

	@Override
	public int getTaskCount() {
		return taskCount;
	}

	@Override
	public int getResourceCount() {
		return employees.stream().map(Employee::getResourceCount).reduce(1, (a, b) -> a+b);
	}

	//In the spirit of the exercise, this seems the most realistic model of how managers delegate.
	//By using the first pseudo-random clerk they see.
	private Employee getRandomEmployee() {
		return employees.stream()
	            .skip((int) (employees.size() * Math.random()))
	            .findFirst().get();
	}
	
	public static void main(String[] args) {
		Printer printer = new Printer();
		Collection<Employee> employees = new ArrayList<Employee>();
		employees.add(new Clerk(printer));
		employees.add(new Clerk(printer));
		employees.add(new Clerk(printer));
		employees.add(new Clerk(printer));
		employees.add(new Clerk(printer));
		Manager manager = new Manager(employees);
		manager.doCalculations(Double::sum, 3, 5);
		manager.doCalculations(Double::sum, 3, 15);
		manager.printDocument("Hello World!");
		System.out.print("Efficiency: ");
		System.out.println(Double.valueOf(manager.getTaskCount())/Double.valueOf(manager.getResourceCount()));
		
		Collection<Employee> employees1 = new ArrayList<Employee>();
		employees1.add(new Clerk(printer));
		employees1.add(new Clerk(printer));
		Collection<Employee> employees2 = new ArrayList<Employee>();
		employees2.add(new Clerk(printer));
		employees2.add(new Clerk(printer));
		employees2.add(new Clerk(printer));
		Collection<Employee> middleManagers = new ArrayList<Employee>();
		middleManagers.add(new Manager(employees1));
		middleManagers.add(new Manager(employees2));
		Manager manager1 = new Manager(middleManagers);
		manager1.doCalculations(Double::sum, 3, 5);
		manager1.doCalculations(Double::sum, 3, 15);
		manager1.printDocument("Hello World!");
		System.out.print("Efficiency: ");
		System.out.println(Double.valueOf(manager1.getTaskCount())/Double.valueOf(manager1.getResourceCount()));
		
	}
}
