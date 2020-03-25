package patterns.delegation.office;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class Printer {
	private HashMap<Employee, List<String>> printHistory = new HashMap<Employee, List<String>>();
	void printDocument(String document, Employee employee) {
		System.out.println(document);
		if (printHistory.get(employee) == null) {
			printHistory.put(employee, new ArrayList<String>());
			
		}
		printHistory.get(employee).add(document);
	}
	
	List<String> getPrintHistory(Employee employee) {
		return printHistory.get(employee) != null ? printHistory.get(employee) : new ArrayList<String>();
	}
}
