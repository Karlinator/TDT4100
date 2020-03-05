package interfaces.twitter;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

public class TwitterAccount {
	private String username;
	private List<Tweet> tweets = new ArrayList<Tweet>();
	private List<TwitterAccount> followedAccounts = new ArrayList<TwitterAccount>();
	private List<TwitterAccount> followers = new ArrayList<TwitterAccount>();
	
	
	public TwitterAccount(String name) {
		username = name;
	}
	
	public String getUserName() {
		return username;
	}
	public void follow(TwitterAccount account) {
		if (!followedAccounts.contains(account)) {
			followedAccounts.add(account);
			account.addFollower(this);
		}
	}
	private void addFollower(TwitterAccount account) {
		followers.add(account);
	}

	public void unfollow(TwitterAccount account) {
		followedAccounts.remove(account);
		account.removeFollower(this);
	}
	
	private void removeFollower(TwitterAccount account) {
		followers.remove(account);
	}

	public boolean isFollowing(TwitterAccount account) {
		return followedAccounts.contains(account);
	}
	public boolean isFollowedBy(TwitterAccount account) {
		return account.isFollowing(this);
	}
	public void tweet(String text) {
		tweets.add(new Tweet(this, text));
	}
	public void retweet(Tweet tweet) {
		if (tweet.getOriginalTweet() == null) {
			tweets.add(new Tweet(this, tweet));
		} else {
			tweets.add(new Tweet(this, tweet.getOriginalTweet()));
		}
	}
	Tweet getTweet(int i) {
		return tweets.get(tweets.size()-i);
	}
	public int getTweetCount() {
		return tweets.size();
	}
	public int getRetweetCount() {
		return tweets.stream().mapToInt(t -> t.getRetweetCount()).sum();
	}
	public int getFollowerCount() {
		return followers.size();
	}
	
	public List<TwitterAccount> getFollowers(Comparator<TwitterAccount> comparator) {
		List<TwitterAccount> sorted = List.copyOf(followers);
		Collections.sort(sorted, comparator);
		return sorted;
	}
	
	
	public static void main(String[] args) {
		TwitterAccount karl = new TwitterAccount("karl");
		TwitterAccount per = new TwitterAccount("per");
		TwitterAccount ola = new TwitterAccount("ola");
		karl.follow(ola);
		karl.tweet("Jeg har en ny ting!");
		per.retweet(karl.getTweet(1));
		ola.retweet(per.getTweet(1));
		System.out.println(ola.getTweet(1).getText());
	}
}
