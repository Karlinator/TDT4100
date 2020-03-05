package interfaces.twitter;

import java.util.Comparator;

public class TwitterAccountComparator  implements Comparator<TwitterAccount> {
	public int compare(TwitterAccount acc1, TwitterAccount acc2) {
		if (acc2.getFollowerCount()-acc1.getFollowerCount() == 0) {
			if (acc2.getTweetCount()-acc1.getTweetCount() == 0) {
				return acc1.getUserName().compareTo(acc2.getUserName());
			} else {
				return acc2.getTweetCount()-acc1.getTweetCount();
			}
		} else {
			return acc2.getFollowerCount()-acc1.getFollowerCount();
		}
	}
}
