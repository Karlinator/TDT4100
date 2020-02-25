package objectstructures;


public class Tweet {
	
	private String text;
	private Tweet originalTweet;
	private TwitterAccount owner;
	private int retweetCount = 0;
	
	public Tweet(TwitterAccount account, String text) {
		originalTweet = null;
		owner = account;
		this.text = text;
	}
	public Tweet(TwitterAccount account, Tweet tweet) {
		if (account == tweet.getOwner()) {
			throw new RuntimeException();
		}
		text = tweet.getText();
		owner = account;
		originalTweet = tweet;
		tweet.addRetweet();
	}
	
	public String getText() {
		return text;
	}
	public TwitterAccount getOwner() {
		return owner;
	}
	public Tweet getOriginalTweet() {
		return originalTweet;
	}
	public int getRetweetCount() {
		return retweetCount;
	}
	public void addRetweet() {
		retweetCount++;
	}
}
