package patterns.observable;

import java.util.ArrayList;
import java.util.List;

public class Stock {
	private String ticker;
	private double price;
	private List<StockListener> listeners = new ArrayList<StockListener>();
	
	public Stock(String ticker, double price) {
		this.ticker = ticker;
		this.price = price;
	}
	
	public void setPrice(double newPrice) {
		listeners.forEach( (l) -> l.stockPriceChanged(this, price, newPrice));
		price = newPrice;
	}
	public String getTicker() {
		return ticker;
	}
	public double getPrice() {
		return price;
	}
	
	public void addStockListener(StockListener listener) {
		listeners.add(listener);
	}
	
	public void removeStockListener(StockListener listener) {
		listeners.remove(listener);
	}
}
