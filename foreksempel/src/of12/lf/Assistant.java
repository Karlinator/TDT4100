package of12.lf;

public class Assistant extends Employee {

	public Assistant(String name) {
		super(name, "Assistant");
	}

	public static void main(String[] args) {
		//Employee employee = new Employee("Magnus", "Vitass");
		//employee.performTask("Test");
		
		
		Employee assistant = new Assistant("Halvard");
		
		assistant.performTask("Arrange meeting");
		
		assistant.performTask("Test");
	}

	@Override
	public boolean canPerformTask(String task) {
		return task.equals("Arrange meeting") || task.equals("Send email");
	}
	
}
