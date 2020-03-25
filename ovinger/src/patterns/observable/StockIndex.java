package patterns.observable;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class StockIndex implements StockListener {
	private double index;
	private String name;
	private List<Stock> stocks = new ArrayList<Stock>();

	public StockIndex(String name, Stock...stocks) {
		this.name = name;
		this.stocks.addAll(Arrays.asList(stocks));
		this.stocks.forEach((s) -> s.addStockListener(this));
		index = stocks.length > 0 ? Arrays.stream(stocks).map(Stock::getPrice).reduce((double) 0, (a, b)-> a+b ) : 0;
	}

	@Override
	public void stockPriceChanged(Stock stock, double oldValue, double newValue) {
		index += newValue-oldValue;
	}
	
	public void addStock(Stock stock) {
		if (!stocks.contains(stock)) {
			stocks.add(stock);
			index += stock.getPrice();
			stock.addStockListener(this);
		}
	}
	
	public void removeStock(Stock stock) {
		if (stocks.contains(stock)) {
			stocks.remove(stock);
			index -= stock.getPrice();
			stock.removeStockListener(this);
		}
	}
	
	public double getIndex() {
		return index;
	}
	

}
