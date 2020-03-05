package interfaces;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.function.BinaryOperator;

public class BinaryComputingIterator implements Iterator<Double> {
	Iterator<Double> iterator1;
	Iterator<Double> iterator2;
	BinaryOperator<Double> operator;
	Double default1 = null;
	Double default2 = null;
	
	public BinaryComputingIterator(Iterator<Double> iterator1, Iterator<Double> iterator2, BinaryOperator<Double> operator) {
		this.iterator1 = iterator1;
		this.iterator2 = iterator2;
		this.operator = operator;
	}
	
	public BinaryComputingIterator(Iterator<Double> iterator1, Iterator<Double> iterator2, Double default1, Double default2, BinaryOperator<Double> operator) {
		this.iterator1 = iterator1;
		this.iterator2 = iterator2;
		this.operator = operator;
		this.default1 = default1;
		this.default2 = default2;
	}

	@Override
	public boolean hasNext() {
		return (iterator1.hasNext() || default1 != null) && (iterator2.hasNext() || default2 != null) && (iterator1.hasNext() || iterator2.hasNext());
	}

	@Override
	public Double next() {
		if (!hasNext()) {throw new NoSuchElementException();};
		Double next1 = (iterator1.hasNext()) ? iterator1.next() : default1;
		Double next2 = (iterator2.hasNext()) ? iterator2.next() : default2;
		
		return operator.apply(next1, next2);
		
	}

}
