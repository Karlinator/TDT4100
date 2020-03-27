<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Java classes">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Edit source code for Java classes."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" resourcePath="/ovinger/src/*" className="*"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Launch Java classes."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="*"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run JUnit tests."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="*"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Handle debug events."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="*" action="*.*"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use debug commands"/>
        <a xsi:type="workbench:CommandExecutionAnswer" elementId="*" action="executeSuccess"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use editors and views"/>
        <a xsi:type="workbench:PartTaskAnswer" elementId="*" action="*"/>
      </tasks>
    </parts>
  </exercise:Exercise>
  <exercise:ExerciseProposals exercise="/0">
    <proposals exercisePart="/0/@parts.0">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.0/@q" answer="/0/@parts.0/@tasks.0/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580822524286" resourcePath="/ovinger/src/encapsulation/Card.java" sizeMeasure="36" className="encapsulation.Card">
          <edit xsi:type="exercise:StringEdit" storedString="package encapsulation;&#xA;&#xA;public class Card {&#xA;&#xA;&#x9;private char suit;&#xA;&#x9;private int face;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public Card(char suit, int face) {&#xA;&#x9;&#x9;try {&#xA;&#x9;&#x9;&#x9;if (&quot;SHDC&quot;.indexOf(suit) == -1) {&#xA;&#x9;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Suit not recognised!&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;if (!(0 &lt; face &amp;&amp; face &lt; 14)) {&#xA;&#x9;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Face must be between 1 and 13!&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;this.suit = suit;&#xA;&#x9;&#x9;&#x9;this.face = face;&#xA;&#x9;&#x9;} finally {&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getFace() {&#xA;&#x9;&#x9;return face;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public char getSuit() {&#xA;&#x9;&#x9;return suit;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return suit + Integer.toString(face);&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580822718540" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="48" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.ArrayList;&#xA;&#xA;public class CardDeck {&#xA;&#x9;&#xA;&#x9;private ArrayList&lt;Card> deck = new ArrayList&lt;Card>();&#xA;&#x9;&#xA;&#x9;public CardDeck(int n) {&#xA;&#x9;&#x9;char[] Suits = {'S', 'H', 'D', 'C'};&#xA;&#x9;&#x9;for (char suit : Suits) {&#xA;&#x9;&#x9;&#x9;for (int i = 1; i &lt; n+1; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;deck.add(new Card(suit, i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getCardCount() {&#xA;&#x9;&#x9;return deck.size();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public Card getCard(int n) {&#xA;&#x9;&#x9;if (n > getCardCount()) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;There aren't that many cards!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return deck.get(n);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void shufflePerfectly() {&#xA;&#x9;&#x9;ArrayList&lt;Card> top = new ArrayList&lt;Card>(deck.subList(0, (getCardCount()/2)-1));&#xA;&#x9;&#x9;ArrayList&lt;Card> bottom = new ArrayList&lt;Card>(deck.subList(getCardCount()/2, getCardCount()-1));&#xA;&#x9;&#x9;ArrayList&lt;Card> newDeck = new ArrayList&lt;Card>();&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;for (int i = 0; i &lt; getCardCount()/2-1; i++) {&#xA;&#x9;&#x9;&#x9;newDeck.add(top.get(i));&#xA;&#x9;&#x9;&#x9;newDeck.add(bottom.get(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;deck = newDeck;&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;CardDeck d = new CardDeck(8);&#xA;&#x9;&#x9;d.shufflePerfectly();&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="24" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580822737527" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="49" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#x9;System.out.println(d);&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="1034" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580822827261" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="51" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="d.getCardCount();&#xA;&#x9;&#x9;d.getCard(1);&#xA;&#x9;&#x9;d.getCard(2" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="1036" end="-11"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580822918486" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="51" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(d.getCardCount());&#xA;&#x9;&#x9;System.out.println(d.getCard(0));&#xA;&#x9;&#x9;System.out.println(d.getCard(1)" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="1036" end="-11"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580822977761" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="51" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=";" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="836" end="-315"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580823116166" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="51" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="));&#xA;&#x9;&#x9;ArrayList&lt;Card> bottom = new ArrayList&lt;Card>(deck.subList(getCardCount()/2, getCardCount()));&#xA;&#x9;&#x9;ArrayList&lt;Card> newDeck = new ArrayList&lt;Card>();&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;for (int i = 0; i &lt; getCardCount()/2-1" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="640" end="-316"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580823145517" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="52" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(d.getCardCount());&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="1008" end="-142"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580823163889" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="52" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="-1" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="720" end="-470"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580823174652" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="52" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="+1" edit="/1/@proposals.0/@proposals.0/@attempts.8/@edit" start="738" end="-454"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580823298249" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="52" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=")" edit="/1/@proposals.0/@proposals.0/@attempts.9/@edit" start="738" end="-453"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580823539631" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="52" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="," edit="/1/@proposals.0/@proposals.0/@attempts.10/@edit" start="720" end="-469"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580823693539" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="52" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=";" edit="/1/@proposals.0/@proposals.0/@attempts.11/@edit" start="832" end="-355"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580833298713" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="52" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.12/@edit" start="1187"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580833316864" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="52" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.13/@edit" start="1187"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580833318047" resourcePath="/ovinger/src/encapsulation/Card.java" sizeMeasure="36" className="encapsulation.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public class Card {&#xA;&#xA;&#x9;private char suit;&#xA;&#x9;private int face;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public Card(char suit, int face) {&#xA;&#x9;&#x9;try {&#xA;&#x9;&#x9;&#x9;if (&quot;SHDC&quot;.indexOf(suit) == -1) {&#xA;&#x9;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Suit not recognised!&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;if (!(0 &lt; face &amp;&amp; face &lt; 14)) {&#xA;&#x9;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Face must be between 1 and 13!&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;this.suit = suit;&#xA;&#x9;&#x9;&#x9;this.face = face;&#xA;&#x9;&#x9;} finally {&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getFace() {&#xA;&#x9;&#x9;return face;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public char getSuit() {&#xA;&#x9;&#x9;return suit;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return suit + Integer.toString(face);" edit="/1/@proposals.0/@proposals.0/@attempts.14/@edit" start="24" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580833320771" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="5" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Account {" edit="/1/@proposals.0/@proposals.0/@attempts.15/@edit" start="37" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580839074712" resourcePath="/ovinger/src/debugging/CoffeeCupProgram.java" sizeMeasure="59" warningCount="1" className="debugging.CoffeeCupProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="debugging;&#xA;&#xA;import java.util.Random;&#xA;&#xA;public class CoffeeCupProgram {&#xA;&#xA;&#x9;private CoffeeCup cup;&#xA;&#x9;private Random r;&#xA;&#x9;&#xA;&#x9;public void init(){&#xA;&#x9;&#x9;cup = new CoffeeCup();&#xA;&#x9;&#x9;r = new Random(123456789L);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void run(){&#xA;&#x9;&#x9;//part1();&#xA;&#x9;&#x9;part2();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private void part1(){&#xA;&#x9;&#x9;cup.increaseCupSize(40.0);&#xA;&#x9;&#x9;cup.fillCoffee(20.5);&#xA;&#x9;&#x9;cup.drinkCoffee(Math.floor(r.nextDouble()*20.5));&#xA;&#x9;&#x9;cup.fillCoffee(32.5);&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*38.9));&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*42));&#xA;&#x9;&#x9;cup.increaseCupSize(17);&#xA;&#x9;&#x9;cup.drinkCoffee(40);&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*42));&#xA;&#x9;&#x9;cup.drinkCoffee(Math.floor(r.nextDouble()*20.5));&#xA;&#x9;&#x9;cup.fillCoffee(32.5);&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*38.9));&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*42));&#xA;&#x9;&#x9;cup.increaseCupSize(17);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private void part2(){&#xA;&#x9;&#x9;cup = new CoffeeCup(40.0, 20.5);&#xA;&#x9;&#x9;r = new Random(987654321L);&#xA;&#x9;&#x9;cup.drinkCoffee(Math.floor(r.nextDouble()*20.5));&#xA;&#x9;&#x9;cup.fillCoffee(Math.floor(r.nextDouble()*30));&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*38.9));&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*42));&#xA;&#x9;&#x9;cup.increaseCupSize(Math.floor(r.nextDouble()*26));&#xA;&#x9;&#x9;cup.fillCoffee(Math.ceil(r.nextDouble()*59));&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*42));&#xA;&#x9;&#x9;cup.increaseCupSize(Math.floor(r.nextDouble()*35));&#xA;&#x9;&#x9;cup.fillCoffee(Math.floor(r.nextDouble()*30));&#xA;&#x9;&#x9;cup.increaseCupSize(Math.floor(r.nextDouble()*26));&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;CoffeeCupProgram program = new CoffeeCupProgram();&#xA;&#x9;&#x9;program.init();&#xA;&#x9;&#x9;program.run();&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.16/@edit" start="8" end="-5"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="20" charStart="287" charEnd="294" severity="1" problemCategory="120" problemType="603979894"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580856684979" resourcePath="/ovinger/src/debugging/CoffeeCupProgram.java" sizeMeasure="59" warningCount="1" className="debugging.CoffeeCupProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" " edit="/1/@proposals.0/@proposals.0/@attempts.17/@edit" start="1155" end="-399"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="20" charStart="287" charEnd="294" severity="1" problemCategory="120" problemType="603979894"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583366785529" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="66" warningCount="1" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="objectstructures;&#xA;&#xA;import java.util.ArrayList;&#xA;import java.util.List;&#xA;&#xA;public class TwitterAccount {&#xA;&#x9;private String username;&#xA;&#x9;private List&lt;Tweet> tweets = new ArrayList&lt;Tweet>();&#xA;&#x9;private List&lt;TwitterAccount> followedAccounts = new ArrayList&lt;TwitterAccount>();&#xA;&#x9;private List&lt;TwitterAccount> followers = new ArrayList&lt;TwitterAccount>();&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public TwitterAccount(String name) {&#xA;&#x9;&#x9;username = name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getUserName() {&#xA;&#x9;&#x9;return username;&#xA;&#x9;}&#xA;&#x9;public void follow(TwitterAccount account) {&#xA;&#x9;&#x9;if (!followedAccounts.contains(account)) {&#xA;&#x9;&#x9;&#x9;followedAccounts.add(account);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;public void unfollow(TwitterAccount account) {&#xA;&#x9;&#x9;followedAccounts.remove(account);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean isFollowing(TwitterAccount account) {&#xA;&#x9;&#x9;return followedAccounts.contains(account);&#xA;&#x9;}&#xA;&#x9;public boolean isFollowedBy(TwitterAccount account) {&#xA;&#x9;&#x9;return account.isFollowing(this);&#xA;&#x9;}&#xA;&#x9;public void tweet(String text) {&#xA;&#x9;&#x9;tweets.add(new Tweet(this, text));&#xA;&#x9;}&#xA;&#x9;public void retweet(Tweet tweet) {&#xA;&#x9;&#x9;if (tweet.getOriginalTweet() == null) {&#xA;&#x9;&#x9;&#x9;tweets.add(new Tweet(this, tweet));&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;tweets.add(new Tweet(this, tweet.getOriginalTweet()));&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;Tweet getTweet(int i) {&#xA;&#x9;&#x9;return tweets.get(tweets.size()-i);&#xA;&#x9;}&#xA;&#x9;public int getTweetCount() {&#xA;&#x9;&#x9;return tweets.size();&#xA;&#x9;}&#xA;&#x9;public int getRetweetCount() {&#xA;&#x9;&#x9;return tweets.stream().mapToInt(t -> t.getRetweetCount()).sum();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;TwitterAccount karl = new TwitterAccount(&quot;karl&quot;);&#xA;&#x9;&#x9;TwitterAccount per = new TwitterAccount(&quot;per&quot;);&#xA;&#x9;&#x9;TwitterAccount ola = new TwitterAccount(&quot;ola&quot;);&#xA;&#x9;&#x9;karl.follow(ola);&#xA;&#x9;&#x9;karl.tweet(&quot;Jeg har en ny ting!&quot;);&#xA;&#x9;&#x9;per.retweet(karl.getTweet(1));&#xA;&#x9;&#x9;ola.retweet(per.getTweet(1));&#xA;&#x9;&#x9;System.out.println(ola.getTweet(1).getText());&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.18/@edit" start="8" end="-4"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="310" charEnd="319" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583366830913" resourcePath="/ovinger/src/interfaces/twitter/UserNameComparator.java" sizeMeasure="5" className="interfaces.twitter.UserNameComparator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="interfaces.twitter;&#xA;&#xA;public class UserNameComparator {&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.19/@edit" start="8" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583367380223" resourcePath="/ovinger/src/interfaces/twitter/UserNameComparator.java" sizeMeasure="11" className="interfaces.twitter.UserNameComparator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.Comparator;&#xA;&#xA;import objectstructures.TwitterAccount;&#xA;&#xA;public class UserNameComparator implements Comparator&lt;TwitterAccount> {&#xA;&#x9;public int compare(TwitterAccount acc1, TwitterAccount acc2) {&#xA;&#x9;&#x9;return acc1.getUserName().compareTo(acc2.getUserName());&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.20/@edit" start="29" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583367426578" resourcePath="/ovinger/src/interfaces/twitter/Tweet.java" sizeMeasure="41" className="interfaces.twitter.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;public class Tweet {&#xA;&#x9;&#xA;&#x9;private String text;&#xA;&#x9;private Tweet originalTweet;&#xA;&#x9;private TwitterAccount owner;&#xA;&#x9;private int retweetCount = 0;&#xA;&#x9;&#xA;&#x9;public Tweet(TwitterAccount account, String text) {&#xA;&#x9;&#x9;originalTweet = null;&#xA;&#x9;&#x9;owner = account;&#xA;&#x9;&#x9;this.text = text;&#xA;&#x9;}&#xA;&#x9;public Tweet(TwitterAccount account, Tweet tweet) {&#xA;&#x9;&#x9;if (account == tweet.getOwner()) {&#xA;&#x9;&#x9;&#x9;throw new RuntimeException();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;text = tweet.getText();&#xA;&#x9;&#x9;owner = account;&#xA;&#x9;&#x9;originalTweet = tweet;&#xA;&#x9;&#x9;tweet.addRetweet();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getText() {&#xA;&#x9;&#x9;return text;&#xA;&#x9;}&#xA;&#x9;public TwitterAccount getOwner() {&#xA;&#x9;&#x9;return owner;&#xA;&#x9;}&#xA;&#x9;public Tweet getOriginalTweet() {&#xA;&#x9;&#x9;return originalTweet;&#xA;&#x9;}&#xA;&#x9;public int getRetweetCount() {&#xA;&#x9;&#x9;return retweetCount;&#xA;&#x9;}&#xA;&#x9;public void addRetweet() {&#xA;&#x9;&#x9;retweetCount++" edit="/1/@proposals.0/@proposals.0/@attempts.21/@edit" start="29" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583367443048" resourcePath="/ovinger/src/interfaces/twitter/UserNameComparator.java" sizeMeasure="9" className="interfaces.twitter.UserNameComparator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.Comparator;&#xA;&#xA;public class UserNameComparator implements Comparator&lt;TwitterAccount> {&#xA;&#x9;public int compare(TwitterAccount acc1, TwitterAccount acc2) {&#xA;&#x9;&#x9;return acc1.getUserName().compareTo(acc2.getUserName())" edit="/1/@proposals.0/@proposals.0/@attempts.22/@edit" start="29" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583367762296" resourcePath="/ovinger/src/interfaces/twitter/FollowerCountComparator.java" sizeMeasure="5" className="interfaces.twitter.FollowerCountComparator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public class FollowerCountComparator {&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.23/@edit" start="29" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583367793199" resourcePath="/ovinger/src/interfaces/twitter/TweetsCountComparator.java" sizeMeasure="5" className="interfaces.twitter.TweetsCountComparator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Tweets" edit="/1/@proposals.0/@proposals.0/@attempts.24/@edit" start="42" end="-22"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583367904078" resourcePath="/ovinger/src/interfaces/twitter/TweetsCountComparator.java" sizeMeasure="9" errorCount="2" className="interfaces.twitter.TweetsCountComparator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.Comparator;&#xA;&#xA;public class TweetsCountComparator implements Comparator&lt;TwitterAccount> {&#xA;&#x9;public int compare(TwitterAccount acc1, TwitterAccount acc2) {&#xA;&#x9;&#x9;return &#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.25/@edit" start="29" end="-4"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="7" charStart="206" charEnd="212" severity="2" problemCategory="50" problemType="603979884"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583367954816" resourcePath="/ovinger/src/interfaces/twitter/TweetsCountComparator.java" sizeMeasure="9" className="interfaces.twitter.TweetsCountComparator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="acc1.getTweetCount()-acc2.getTweetCount();" edit="/1/@proposals.0/@proposals.0/@attempts.26/@edit" start="207" end="-7"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583367997768" resourcePath="/ovinger/src/interfaces/twitter/TweetsCountComparator.java" sizeMeasure="9" className="interfaces.twitter.TweetsCountComparator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="2.getTweetCount()-acc1" edit="/1/@proposals.0/@proposals.0/@attempts.27/@edit" start="210" end="-24"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583368112018" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="68" errorCount="2" warningCount="1" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="objectstructures;&#xA;&#xA;import java.util.ArrayList;&#xA;import java.util.List;&#xA;&#xA;public class TwitterAccount {&#xA;&#x9;private String username;&#xA;&#x9;private List&lt;Tweet> tweets = new ArrayList&lt;Tweet>();&#xA;&#x9;private List&lt;TwitterAccount> followedAccounts = new ArrayList&lt;TwitterAccount>();&#xA;&#x9;private List&lt;TwitterAccount> followers = new ArrayList&lt;TwitterAccount>();&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public TwitterAccount(String name) {&#xA;&#x9;&#x9;username = name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getUserName() {&#xA;&#x9;&#x9;return username;&#xA;&#x9;}&#xA;&#x9;public void follow(TwitterAccount account) {&#xA;&#x9;&#x9;if (!followedAccounts.contains(account)) {&#xA;&#x9;&#x9;&#x9;followedAccounts.add(account);&#xA;&#x9;&#x9;&#x9;account.addFollower(this);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;public void unfollow(TwitterAccount account) {&#xA;&#x9;&#x9;followedAccounts.remove(account);&#xA;&#x9;&#x9;account.removeFollower(this);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean isFollowing(TwitterAccount account) {&#xA;&#x9;&#x9;return followedAccounts.contains(account);&#xA;&#x9;}&#xA;&#x9;public boolean isFollowedBy(TwitterAccount account) {&#xA;&#x9;&#x9;return account.isFollowing(this);&#xA;&#x9;}&#xA;&#x9;public void tweet(String text) {&#xA;&#x9;&#x9;tweets.add(new Tweet(this, text));&#xA;&#x9;}&#xA;&#x9;public void retweet(Tweet tweet) {&#xA;&#x9;&#x9;if (tweet.getOriginalTweet() == null) {&#xA;&#x9;&#x9;&#x9;tweets.add(new Tweet(this, tweet));&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;tweets.add(new Tweet(this, tweet.getOriginalTweet()));&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;Tweet getTweet(int i) {&#xA;&#x9;&#x9;return tweets.get(tweets.size()-i);&#xA;&#x9;}&#xA;&#x9;public int getTweetCount() {&#xA;&#x9;&#x9;return tweets.size();&#xA;&#x9;}&#xA;&#x9;public int getRetweetCount() {&#xA;&#x9;&#x9;return tweets.stream().mapToInt(t -> t.getRetweetCount()).sum();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;TwitterAccount karl = new TwitterAccount(&quot;karl&quot;);&#xA;&#x9;&#x9;TwitterAccount per = new TwitterAccount(&quot;per&quot;);&#xA;&#x9;&#x9;TwitterAccount ola = new TwitterAccount(&quot;ola&quot;);&#xA;&#x9;&#x9;karl.follow(ola);&#xA;&#x9;&#x9;karl.tweet(&quot;Jeg har en ny ting!&quot;);&#xA;&#x9;&#x9;per.retweet(karl.getTweet(1));&#xA;&#x9;&#x9;ola.retweet(per.getTweet(1));&#xA;&#x9;&#x9;System.out.println(ola.getTweet(1).getText()" edit="/1/@proposals.0/@proposals.0/@attempts.28/@edit" start="8" end="-9"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="28" charStart="748" charEnd="762" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583368189658" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="77" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="rivate void addFollower(TwitterAccount account) {&#xA;&#x9;&#x9;followers.add(account);&#xA;&#x9;}&#xA;&#xA;&#x9;public void unfollow(TwitterAccount account) {&#xA;&#x9;&#x9;followedAccounts.remove(account);&#xA;&#x9;&#x9;account.removeFollower(this);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private void removeFollower(TwitterAccount account) {&#xA;&#x9;&#x9;followers.remove(account);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.29/@edit" start="629" end="-1064"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583368193278" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="76" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}" edit="/1/@proposals.0/@proposals.0/@attempts.30/@edit" start="915" end="-1065"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583368262652" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="79" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public int getFollowerCount() {&#xA;&#x9;&#x9;return followers.size();&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.31/@edit" start="1607" end="-374"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583368278376" resourcePath="/ovinger/src/interfaces/twitter/FollowerCountComparator.java" sizeMeasure="9" errorCount="2" className="interfaces.twitter.FollowerCountComparator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="interfaces.twitter;&#xA;&#xA;import java.util.Comparator;&#xA;&#xA;public class FollowerCountComparator implements Comparator&lt;TwitterAccount> {&#xA;&#x9;public int compare(TwitterAccount acc1, TwitterAccount acc2) {&#xA;&#x9;&#x9;return acc2.getFollowerCount()-acc1.getFollowerCount(" edit="/1/@proposals.0/@proposals.0/@attempts.32/@edit" start="8" end="-9"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="7" charStart="244" charEnd="260" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583368323629" resourcePath="/ovinger/src/interfaces/twitter/TwitterAccount.java" sizeMeasure="79" errorCount="1" className="interfaces.twitter.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="objectstructures;&#xA;&#xA;import java.util.ArrayList;&#xA;import java.util.List;&#xA;&#xA;public class TwitterAccount {&#xA;&#x9;private String username;&#xA;&#x9;private List&lt;Tweet> tweets = new ArrayList&lt;Tweet>();&#xA;&#x9;private List&lt;TwitterAccount> followedAccounts = new ArrayList&lt;TwitterAccount>();&#xA;&#x9;private List&lt;TwitterAccount> followers = new ArrayList&lt;TwitterAccount>();&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public TwitterAccount(String name) {&#xA;&#x9;&#x9;username = name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getUserName() {&#xA;&#x9;&#x9;return username;&#xA;&#x9;}&#xA;&#x9;public void follow(TwitterAccount account) {&#xA;&#x9;&#x9;if (!followedAccounts.contains(account)) {&#xA;&#x9;&#x9;&#x9;followedAccounts.add(account);&#xA;&#x9;&#x9;&#x9;account.addFollower(this);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;private void addFollower(TwitterAccount account) {&#xA;&#x9;&#x9;followers.add(account);&#xA;&#x9;}&#xA;&#xA;&#x9;public void unfollow(TwitterAccount account) {&#xA;&#x9;&#x9;followedAccounts.remove(account);&#xA;&#x9;&#x9;account.removeFollower(this);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private void removeFollower(TwitterAccount account) {&#xA;&#x9;&#x9;followers.remove(account);&#xA;&#x9;}&#xA;&#xA;&#x9;public boolean isFollowing(TwitterAccount account) {&#xA;&#x9;&#x9;return followedAccounts.contains(account);&#xA;&#x9;}&#xA;&#x9;public boolean isFollowedBy(TwitterAccount account) {&#xA;&#x9;&#x9;return account.isFollowing(this);&#xA;&#x9;}&#xA;&#x9;public void tweet(String text) {&#xA;&#x9;&#x9;tweets.add(new Tweet(this, text));&#xA;&#x9;}&#xA;&#x9;public void retweet(Tweet tweet) {&#xA;&#x9;&#x9;if (tweet.getOriginalTweet() == null) {&#xA;&#x9;&#x9;&#x9;tweets.add(new Tweet(this, tweet));&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;tweets.add(new Tweet(this, tweet.getOriginalTweet()));&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;Tweet getTweet(int i) {&#xA;&#x9;&#x9;return tweets.get(tweets.size()-i);&#xA;&#x9;}&#xA;&#x9;public int getTweetCount() {&#xA;&#x9;&#x9;return tweets.size();&#xA;&#x9;}&#xA;&#x9;public int getRetweetCount() {&#xA;&#x9;&#x9;return tweets.stream().mapToInt(t -> t.getRetweetCount()).sum();&#xA;&#x9;}&#xA;&#x9;public int getFollowerCount() {&#xA;&#x9;&#x9;return followers.size();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;TwitterAccount karl = new TwitterAccount(&quot;karl&quot;);&#xA;&#x9;&#x9;TwitterAccount per = new TwitterAccount(&quot;per&quot;);&#xA;&#x9;&#x9;TwitterAccount ola = new TwitterAccount(&quot;ola&quot;);&#xA;&#x9;&#x9;karl.follow(ola);&#xA;&#x9;&#x9;karl.tweet(&quot;Jeg har en ny ting!&quot;);&#xA;&#x9;&#x9;per.retweet(karl.getTweet(1));&#xA;&#x9;&#x9;ola.retweet(per.getTweet(1));&#xA;&#x9;&#x9;System.out.println(ola.getTweet(1).getText()" edit="/1/@proposals.0/@proposals.0/@attempts.33/@edit" start="8" end="-9"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="1" charStart="8" charEnd="24" severity="2" problemCategory="60" problemType="536871240"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583368350311" resourcePath="/ovinger/src/interfaces/twitter/FollowerCountComparator.java" sizeMeasure="9" errorCount="1" className="interfaces.twitter.FollowerCountComparator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="interfaces.twitter;&#xA;&#xA;import java.util.Comparator;&#xA;&#xA;public class FollowersCountComparator implements Comparator&lt;TwitterAccount> {&#xA;&#x9;public int compare(TwitterAccount acc1, TwitterAccount acc2) {&#xA;&#x9;&#x9;return acc2.getFollowerCount()-acc1.getFollowerCount(" edit="/1/@proposals.0/@proposals.0/@attempts.34/@edit" start="8" end="-9"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="5" charStart="76" charEnd="100" severity="2" problemCategory="40" problemType="16777541"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583368375484" resourcePath="/ovinger/src/interfaces/twitter/FollowersCountComparator.java" sizeMeasure="9" className="interfaces.twitter.FollowersCountComparator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.35/@edit" start="264"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583368398133" resourcePath="/ovinger/src/interfaces/twitter/TwitterAccount.java" sizeMeasure="79" className="interfaces.twitter.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ArrayList;&#xA;import java.util.List;&#xA;&#xA;public class TwitterAccount {&#xA;&#x9;private String username;&#xA;&#x9;private List&lt;Tweet> tweets = new ArrayList&lt;Tweet>();&#xA;&#x9;private List&lt;TwitterAccount> followedAccounts = new ArrayList&lt;TwitterAccount>();&#xA;&#x9;private List&lt;TwitterAccount> followers = new ArrayList&lt;TwitterAccount>();&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public TwitterAccount(String name) {&#xA;&#x9;&#x9;username = name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getUserName() {&#xA;&#x9;&#x9;return username;&#xA;&#x9;}&#xA;&#x9;public void follow(TwitterAccount account) {&#xA;&#x9;&#x9;if (!followedAccounts.contains(account)) {&#xA;&#x9;&#x9;&#x9;followedAccounts.add(account);&#xA;&#x9;&#x9;&#x9;account.addFollower(this);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;private void addFollower(TwitterAccount account) {&#xA;&#x9;&#x9;followers.add(account);&#xA;&#x9;}&#xA;&#xA;&#x9;public void unfollow(TwitterAccount account) {&#xA;&#x9;&#x9;followedAccounts.remove(account);&#xA;&#x9;&#x9;account.removeFollower(this);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private void removeFollower(TwitterAccount account) {&#xA;&#x9;&#x9;followers.remove(account);&#xA;&#x9;}&#xA;&#xA;&#x9;public boolean isFollowing(TwitterAccount account) {&#xA;&#x9;&#x9;return followedAccounts.contains(account);&#xA;&#x9;}&#xA;&#x9;public boolean isFollowedBy(TwitterAccount account) {&#xA;&#x9;&#x9;return account.isFollowing(this);&#xA;&#x9;}&#xA;&#x9;public void tweet(String text) {&#xA;&#x9;&#x9;tweets.add(new Tweet(this, text));&#xA;&#x9;}&#xA;&#x9;public void retweet(Tweet tweet) {&#xA;&#x9;&#x9;if (tweet.getOriginalTweet() == null) {&#xA;&#x9;&#x9;&#x9;tweets.add(new Tweet(this, tweet));&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;tweets.add(new Tweet(this, tweet.getOriginalTweet()));&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;Tweet getTweet(int i) {&#xA;&#x9;&#x9;return tweets.get(tweets.size()-i);&#xA;&#x9;}&#xA;&#x9;public int getTweetCount() {&#xA;&#x9;&#x9;return tweets.size();&#xA;&#x9;}&#xA;&#x9;public int getRetweetCount() {&#xA;&#x9;&#x9;return tweets.stream().mapToInt(t -> t.getRetweetCount()).sum();&#xA;&#x9;}&#xA;&#x9;public int getFollowerCount() {&#xA;&#x9;&#x9;return followers.size();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;TwitterAccount karl = new TwitterAccount(&quot;karl&quot;);&#xA;&#x9;&#x9;TwitterAccount per = new TwitterAccount(&quot;per&quot;);&#xA;&#x9;&#x9;TwitterAccount ola = new TwitterAccount(&quot;ola&quot;);&#xA;&#x9;&#x9;karl.follow(ola);&#xA;&#x9;&#x9;karl.tweet(&quot;Jeg har en ny ting!&quot;);&#xA;&#x9;&#x9;per.retweet(karl.getTweet(1));&#xA;&#x9;&#x9;ola.retweet(per.getTweet(1));&#xA;&#x9;&#x9;System.out.println(ola.getTweet(1).getText()" edit="/1/@proposals.0/@proposals.0/@attempts.36/@edit" start="46" end="-9"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583369002731" resourcePath="/ovinger/src/interfaces/twitter/TwitterAccount.java" sizeMeasure="88" warningCount="1" className="interfaces.twitter.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Collections;&#xA;import java.util.Comparator;&#xA;import java.util.List;&#xA;import java.util.stream.Collectors;&#xA;&#xA;public class TwitterAccount {&#xA;&#x9;private String username;&#xA;&#x9;private List&lt;Tweet> tweets = new ArrayList&lt;Tweet>();&#xA;&#x9;private List&lt;TwitterAccount> followedAccounts = new ArrayList&lt;TwitterAccount>();&#xA;&#x9;private List&lt;TwitterAccount> followers = new ArrayList&lt;TwitterAccount>();&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public TwitterAccount(String name) {&#xA;&#x9;&#x9;username = name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getUserName() {&#xA;&#x9;&#x9;return username;&#xA;&#x9;}&#xA;&#x9;public void follow(TwitterAccount account) {&#xA;&#x9;&#x9;if (!followedAccounts.contains(account)) {&#xA;&#x9;&#x9;&#x9;followedAccounts.add(account);&#xA;&#x9;&#x9;&#x9;account.addFollower(this);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;private void addFollower(TwitterAccount account) {&#xA;&#x9;&#x9;followers.add(account);&#xA;&#x9;}&#xA;&#xA;&#x9;public void unfollow(TwitterAccount account) {&#xA;&#x9;&#x9;followedAccounts.remove(account);&#xA;&#x9;&#x9;account.removeFollower(this);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private void removeFollower(TwitterAccount account) {&#xA;&#x9;&#x9;followers.remove(account);&#xA;&#x9;}&#xA;&#xA;&#x9;public boolean isFollowing(TwitterAccount account) {&#xA;&#x9;&#x9;return followedAccounts.contains(account);&#xA;&#x9;}&#xA;&#x9;public boolean isFollowedBy(TwitterAccount account) {&#xA;&#x9;&#x9;return account.isFollowing(this);&#xA;&#x9;}&#xA;&#x9;public void tweet(String text) {&#xA;&#x9;&#x9;tweets.add(new Tweet(this, text));&#xA;&#x9;}&#xA;&#x9;public void retweet(Tweet tweet) {&#xA;&#x9;&#x9;if (tweet.getOriginalTweet() == null) {&#xA;&#x9;&#x9;&#x9;tweets.add(new Tweet(this, tweet));&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;tweets.add(new Tweet(this, tweet.getOriginalTweet()));&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;Tweet getTweet(int i) {&#xA;&#x9;&#x9;return tweets.get(tweets.size()-i);&#xA;&#x9;}&#xA;&#x9;public int getTweetCount() {&#xA;&#x9;&#x9;return tweets.size();&#xA;&#x9;}&#xA;&#x9;public int getRetweetCount() {&#xA;&#x9;&#x9;return tweets.stream().mapToInt(t -> t.getRetweetCount()).sum();&#xA;&#x9;}&#xA;&#x9;public int getFollowerCount() {&#xA;&#x9;&#x9;return followers.size();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public List&lt;TwitterAccount> getFollowers(Comparator&lt;TwitterAccount> comparator) {&#xA;&#x9;&#x9;List&lt;TwitterAccount> sorted = List.copyOf(followers);&#xA;&#x9;&#x9;Collections.sort(sorted, comparator);&#xA;&#x9;&#x9;return sorted" edit="/1/@proposals.0/@proposals.0/@attempts.37/@edit" start="74" end="-380"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="7" charStart="152" charEnd="179" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583369053044" resourcePath="/ovinger/src/interfaces/twitter/TwitterAccountComparator.java" sizeMeasure="5" className="interfaces.twitter.TwitterAccountComparator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public class TwitterAccountComparator {&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.38/@edit" start="29" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583369282059" resourcePath="/ovinger/src/interfaces/twitter/FollowersCountComparator.java" sizeMeasure="9" errorCount="1" className="interfaces.twitter.FollowersCountComparator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.Comparator;&#xA;&#xA;public class FollowersCountComparator implements Comparator&lt;TwitterAccount> {&#xA;&#x9;public static int compare(TwitterAccount acc1, TwitterAccount acc2) {&#xA;&#x9;&#x9;return acc2.getFollowerCount()-acc1.getFollowerCount();&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.39/@edit" start="29" end="-4"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="161" charEnd="210" severity="2" problemCategory="50" problemType="67109271"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583369291270" resourcePath="/ovinger/src/interfaces/twitter/FollowersCountComparator.java" sizeMeasure="9" className="interfaces.twitter.FollowersCountComparator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="i" edit="/1/@proposals.0/@proposals.0/@attempts.40/@edit" start="145" end="-119"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583369293569" resourcePath="/ovinger/src/interfaces/twitter/TwitterAccountComparator.java" sizeMeasure="13" errorCount="3" className="interfaces.twitter.TwitterAccountComparator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="TwitterAccountComparator  implements Comparator&lt;TwitterAccount> {&#xA;&#x9;public int compare(TwitterAccount acc1, TwitterAccount acc2) {&#xA;&#x9;&#x9;if (FollowersCountComparator.compare(acc1, acc2) == 0) {&#xA;&#x9;&#x9;&#x9;if&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;return acc2.getFollowerCount()-acc1.getFollowerCount()&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.41/@edit" start="72" end="-7"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="343" charEnd="344" severity="2" problemCategory="20" problemType="1610612976"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583369393262" resourcePath="/ovinger/src/interfaces/twitter/TwitterAccountComparator.java" sizeMeasure="17" className="interfaces.twitter.TwitterAccountComparator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="acc2.getFollowerCount()-acc1.getFollowerCount() == 0) {&#xA;&#x9;&#x9;&#x9;if (acc2.getTweetCount()-acc1.getTweetCount() == 0) {&#xA;&#x9;&#x9;&#x9;&#x9;return acc1.getUserName().compareTo(acc2.getUserName());&#xA;&#x9;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;&#x9;return acc2.getTweetCount()-acc1.getTweetCount();&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;return acc2.getFollowerCount()-acc1.getFollowerCount();" edit="/1/@proposals.0/@proposals.0/@attempts.42/@edit" start="208" end="-11"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583429408145" resourcePath="/ovinger/src/interfaces/BinaryComputingIterator.java" sizeMeasure="5" className="interfaces.BinaryComputingIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=";&#xA;&#xA;public class BinaryComputingIterator {&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.43/@edit" start="18" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583437446541" resourcePath="/ovinger/src/interfaces/BinaryComputingIterator.java" sizeMeasure="41" errorCount="1" className="interfaces.BinaryComputingIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.Iterator;&#xA;import java.util.function.BinaryOperator;&#xA;&#xA;import sun.tools.jstat.Operator;&#xA;&#xA;public class BinaryComputingIterator implements Iterator&lt;Double> {&#xA;&#x9;Iterator&lt;Double> iterator1;&#xA;&#x9;Iterator&lt;Double> iterator2;&#xA;&#x9;BinaryOperator&lt;Double> operator;&#xA;&#x9;Double default1;&#xA;&#x9;Double default2;&#xA;&#x9;&#xA;&#x9;public BinaryComputingIterator(Iterator&lt;Double> iterator1, Iterator&lt;Double> iterator2, BinaryOperator&lt;Double> operator) {&#xA;&#x9;&#x9;this.iterator1 = iterator1;&#xA;&#x9;&#x9;this.iterator2 = iterator2;&#xA;&#x9;&#x9;this.operator = operator;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public BinaryComputingIterator(Iterator&lt;Double> iterator1, Iterator&lt;Double> iterator2, Double default1, Double default2, BinaryOperator&lt;Double> operator) {&#xA;&#x9;&#x9;this.iterator1 = iterator1;&#xA;&#x9;&#x9;this.iterator2 = iterator2;&#xA;&#x9;&#x9;this.operator = operator;&#xA;&#x9;&#x9;this.default1 = default1;&#xA;&#x9;&#x9;this.default2 = default2;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public boolean hasNext() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return false;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public Double next() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return operator.apply(iterator1.next(), iterator2.next());&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.44/@edit" start="21" end="-5"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="103" charEnd="118" severity="2" problemCategory="30" problemType="268436910"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583437450891" resourcePath="/ovinger/src/interfaces/BinaryComputingIterator.java" sizeMeasure="39" errorCount="1" className="interfaces.BinaryComputingIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="return false;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public Double next() {" edit="/1/@proposals.0/@proposals.0/@attempts.45/@edit" start="884" end="-69"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="103" charEnd="118" severity="2" problemCategory="30" problemType="268436910"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583438626399" resourcePath="/ovinger/src/interfaces/BinaryComputingIterator.java" sizeMeasure="43" errorCount="1" className="interfaces.BinaryComputingIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Double next1 = (iterator1.hasNext()) ? iterator1.next() : default1;&#xA;&#x9;&#x9;Double next2 = (iterator2.hasNext()) ? iterator2.next() : default1;&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;return operator.apply(next1, next2);&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.46/@edit" start="939" end="-8"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="103" charEnd="118" severity="2" problemCategory="30" problemType="268436910"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583439034830" resourcePath="/ovinger/src/interfaces/BinaryComputingIterator.java" sizeMeasure="43" className="interfaces.BinaryComputingIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="NoSuchElementException;&#xA;import java.util.function.BinaryOperator;&#xA;&#xA;public class BinaryComputingIterator implements Iterator&lt;Double> {&#xA;&#x9;Iterator&lt;Double> iterator1;&#xA;&#x9;Iterator&lt;Double> iterator2;&#xA;&#x9;BinaryOperator&lt;Double> operator;&#xA;&#x9;Double default1;&#xA;&#x9;Double default2;&#xA;&#x9;&#xA;&#x9;public BinaryComputingIterator(Iterator&lt;Double> iterator1, Iterator&lt;Double> iterator2, BinaryOperator&lt;Double> operator) {&#xA;&#x9;&#x9;this.iterator1 = iterator1;&#xA;&#x9;&#x9;this.iterator2 = iterator2;&#xA;&#x9;&#x9;this.operator = operator;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public BinaryComputingIterator(Iterator&lt;Double> iterator1, Iterator&lt;Double> iterator2, Double default1, Double default2, BinaryOperator&lt;Double> operator) {&#xA;&#x9;&#x9;this.iterator1 = iterator1;&#xA;&#x9;&#x9;this.iterator2 = iterator2;&#xA;&#x9;&#x9;this.operator = operator;&#xA;&#x9;&#x9;this.default1 = default1;&#xA;&#x9;&#x9;this.default2 = default2;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public boolean hasNext() {&#xA;&#x9;&#x9;return (iterator1.hasNext() || default1 != null) &amp;&amp; (iterator2.hasNext() || default2 != null) &amp;&amp; (iterator1.hasNext() || iterator2.hasNext());&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public Double next() {&#xA;&#x9;&#x9;if (!hasNext()) {throw new NoSuchElementException();};" edit="/1/@proposals.0/@proposals.0/@attempts.47/@edit" start="65" end="-193"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583439102762" resourcePath="/ovinger/src/interfaces/BinaryComputingIterator.java" sizeMeasure="43" className="interfaces.BinaryComputingIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" = null;&#xA;&#x9;Double default2 = null" edit="/1/@proposals.0/@proposals.0/@attempts.48/@edit" start="307" end="-997"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583440418974" resourcePath="/ovinger/src/interfaces/BinaryComputingIterator.java" sizeMeasure="43" className="interfaces.BinaryComputingIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="2" edit="/1/@proposals.0/@proposals.0/@attempts.49/@edit" start="1281" end="-54"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583440501460" resourcePath="/ovinger/src/interfaces/BinaryComputingIterator.java" sizeMeasure="43" className="interfaces.BinaryComputingIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.50/@edit" start="1335"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583440758294" resourcePath="/ovinger/src/debugging/StringMergingIterator.java" sizeMeasure="52" className="debugging.StringMergingIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="debugging;&#xA;&#xA;import java.util.Iterator;&#xA;import java.util.NoSuchElementException;&#xA;&#xA;public class StringMergingIterator implements Iterator&lt;String> {&#xA;&#xA;&#x9;private Iterator&lt;String> first;&#xA;&#x9;private Iterator&lt;String> second;&#xA;&#x9;private boolean turnSwitch;&#xA;&#xA;&#x9;public StringMergingIterator(Iterator&lt;String> first, Iterator&lt;String> second){&#xA;&#x9;&#x9;this.first = first;&#xA;&#x9;&#x9;this.second = second;&#xA;&#x9;&#x9;this.turnSwitch = true;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public boolean hasNext() {&#xA;&#x9;&#x9;return first.hasNext() || second.hasNext();&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String next() {&#xA;&#xA;&#x9;&#x9;if(! hasNext()){ throw new NoSuchElementException(); }&#xA;&#xA;&#x9;&#x9;String result = null;&#xA;&#xA;&#x9;&#x9;if(! first.hasNext()){&#xA;&#x9;&#x9;&#x9;result = second.next();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if(! second.hasNext()){&#xA;&#x9;&#x9;&#x9;result = first.next();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;if(turnSwitch){&#xA;&#x9;&#x9;&#x9;&#x9;result = first.next();&#xA;&#x9;&#x9;&#x9;&#x9;turnSwitch = false;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;if(!turnSwitch){&#xA;&#x9;&#x9;&#x9;&#x9;result = second.next();&#xA;&#x9;&#x9;&#x9;&#x9;turnSwitch = true;&#xA;&#x9;&#x9;&#x9;}&#xA;&#xA;&#x9;&#x9;}&#xA;&#xA;&#x9;&#x9;return result;&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.51/@edit" start="8" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583440777503" resourcePath="/ovinger/src/debugging/StringMergingIterator.java" sizeMeasure="51" className="debugging.StringMergingIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="else " edit="/1/@proposals.0/@proposals.0/@attempts.52/@edit" start="816" end="-89"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583441782058" resourcePath="/ovinger/src/debugging/StringMergingIterator.java" sizeMeasure="52" className="debugging.StringMergingIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="first.next();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if(! second.hasNext()){&#xA;&#x9;&#x9;&#x9;result = second.next();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;if(turnSwitch){&#xA;&#x9;&#x9;&#x9;&#x9;result = first.next();&#xA;&#x9;&#x9;&#x9;&#x9;turnSwitch = false;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;if(!turnSwitch)" edit="/1/@proposals.0/@proposals.0/@attempts.53/@edit" start="653" end="-89"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583442017235" resourcePath="/ovinger/src/debugging/CoffeeCupProgram.java" sizeMeasure="59" warningCount="1" className="debugging.CoffeeCupProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Random;&#xA;&#xA;public class CoffeeCupProgram {&#xA;&#xA;&#x9;private CoffeeCup cup;&#xA;&#x9;private Random r;&#xA;&#x9;&#xA;&#x9;public void init(){&#xA;&#x9;&#x9;cup = new CoffeeCup();&#xA;&#x9;&#x9;r = new Random(123456789L);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void run(){&#xA;&#x9;&#x9;part1();&#xA;&#x9;&#x9;part2();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private void part1(){&#xA;&#x9;&#x9;cup.increaseCupSize(40.0);&#xA;&#x9;&#x9;cup.fillCoffee(20.5);&#xA;&#x9;&#x9;cup.drinkCoffee(Math.floor(r.nextDouble()*20.5));&#xA;&#x9;&#x9;cup.fillCoffee(32.5);&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*38.9));&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*42));&#xA;&#x9;&#x9;cup.increaseCupSize(17);&#xA;&#x9;&#x9;cup.drinkCoffee(40);&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*42));&#xA;&#x9;&#x9;cup.drinkCoffee(Math.floor(r.nextDouble()*20.5));&#xA;&#x9;&#x9;cup.fillCoffee(32.5);&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*38.9));&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*42));&#xA;&#x9;&#x9;cup.increaseCupSize(17);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private void part2(){&#xA;&#x9;&#x9;cup = new CoffeeCup(40.0, 20.5);&#xA;&#x9;&#x9;r = new Random(987654321L);&#xA;&#x9;&#x9;cup.drinkCoffee(Math.floor(r.nextDouble()*20.5));&#xA;&#x9;&#x9;cup.fillCoffee(Math.floor(r.nextDouble()*30));&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*38.9));&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*42));&#xA;&#x9;&#x9;cup.increaseCupSize(Math.floor(r.nextDouble()*26));&#xA;&#x9;&#x9;cup.fillCoffee(Math.ceil(r.nextDouble()*59));&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*42));&#xA;&#x9;&#x9;cup.increaseCupSize(Math.floor(r.nextDouble()*35));&#xA;&#x9;&#x9;cup.fillCoffee(Math.floor(r.nextDouble()*30));&#xA;&#x9;&#x9;cup.increaseCupSize(Math.floor(r.nextDouble()*26));&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;CoffeeCupProgram program = new CoffeeCupProgram();&#xA;&#x9;&#x9;program.init();&#xA;&#x9;&#x9;program.run();&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.54/@edit" start="37" end="-5"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="20" charStart="287" charEnd="294" severity="1" problemCategory="120" problemType="603979894"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583442236729" resourcePath="/ovinger/src/interfaces/BinaryComputingIterator.java" sizeMeasure="43" className="interfaces.BinaryComputingIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="interfaces;&#xA;&#xA;import java.util.Iterator;&#xA;import java.util.NoSuchElementException;&#xA;import java.util.function.BinaryOperator;&#xA;&#xA;public class BinaryComputingIterator implements Iterator&lt;Double> {&#xA;&#x9;Iterator&lt;Double> iterator1;&#xA;&#x9;Iterator&lt;Double> iterator2;&#xA;&#x9;BinaryOperator&lt;Double> operator;&#xA;&#x9;Double default1 = null;&#xA;&#x9;Double default2 = null;&#xA;&#x9;&#xA;&#x9;public BinaryComputingIterator(Iterator&lt;Double> iterator1, Iterator&lt;Double> iterator2, BinaryOperator&lt;Double> operator) {&#xA;&#x9;&#x9;this.iterator1 = iterator1;&#xA;&#x9;&#x9;this.iterator2 = iterator2;&#xA;&#x9;&#x9;this.operator = operator;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public BinaryComputingIterator(Iterator&lt;Double> iterator1, Iterator&lt;Double> iterator2, Double default1, Double default2, BinaryOperator&lt;Double> operator) {&#xA;&#x9;&#x9;this.iterator1 = iterator1;&#xA;&#x9;&#x9;this.iterator2 = iterator2;&#xA;&#x9;&#x9;this.operator = operator;&#xA;&#x9;&#x9;this.default1 = default1;&#xA;&#x9;&#x9;this.default2 = default2;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public boolean hasNext() {&#xA;&#x9;&#x9;return (iterator1.hasNext() || default1 != null) &amp;&amp; (iterator2.hasNext() || default2 != null) &amp;&amp; (iterator1.hasNext() || iterator2.hasNext());&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public Double next() {&#xA;&#x9;&#x9;if (!hasNext()) {throw new NoSuchElementException();};&#xA;&#x9;&#x9;Double next1 = (iterator1.hasNext()) ? iterator1.next() : default1;&#xA;&#x9;&#x9;Double next2 = (iterator2.hasNext()) ? iterator2.next() : default2;&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;return operator.apply(next1, next2);&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.55/@edit" start="8" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583442266964" resourcePath="/ovinger/src/debugging/StringMergingIterator.java" sizeMeasure="51" className="debugging.StringMergingIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="debugging;&#xA;&#xA;import java.util.Iterator;&#xA;import java.util.NoSuchElementException;&#xA;&#xA;public class StringMergingIterator implements Iterator&lt;String> {&#xA;&#xA;&#x9;private Iterator&lt;String> first;&#xA;&#x9;private Iterator&lt;String> second;&#xA;&#x9;private boolean turnSwitch;&#xA;&#xA;&#x9;public StringMergingIterator(Iterator&lt;String> first, Iterator&lt;String> second){&#xA;&#x9;&#x9;this.first = first;&#xA;&#x9;&#x9;this.second = second;&#xA;&#x9;&#x9;this.turnSwitch = true;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public boolean hasNext() {&#xA;&#x9;&#x9;return first.hasNext() || second.hasNext();&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String next() {&#xA;&#xA;&#x9;&#x9;if(! hasNext()){ throw new NoSuchElementException(); }&#xA;&#xA;&#x9;&#x9;String result = null;&#xA;&#xA;&#x9;&#x9;if(! first.hasNext()){&#xA;&#x9;&#x9;&#x9;result = second.next();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if(! second.hasNext()){&#xA;&#x9;&#x9;&#x9;result = first.next();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;if(turnSwitch){&#xA;&#x9;&#x9;&#x9;&#x9;result = first.next();&#xA;&#x9;&#x9;&#x9;&#x9;turnSwitch = false;&#xA;&#x9;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;&#x9;result = second.next();&#xA;&#x9;&#x9;&#x9;&#x9;turnSwitch = true;&#xA;&#x9;&#x9;&#x9;}&#xA;&#xA;&#x9;&#x9;}&#xA;&#xA;&#x9;&#x9;return result;&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.56/@edit" start="8" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583442317296" resourcePath="/ovinger/src/debugging/CoffeeCupProgram.java" sizeMeasure="59" warningCount="1" className="debugging.CoffeeCupProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Random;&#xA;&#xA;public class CoffeeCupProgram {&#xA;&#xA;&#x9;private CoffeeCup cup;&#xA;&#x9;private Random r;&#xA;&#x9;&#xA;&#x9;public void init(){&#xA;&#x9;&#x9;cup = new CoffeeCup();&#xA;&#x9;&#x9;r = new Random(123456789L);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void run(){&#xA;&#x9;&#x9;//part1();&#xA;&#x9;&#x9;part2();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private void part1(){&#xA;&#x9;&#x9;cup.increaseCupSize(40.0);&#xA;&#x9;&#x9;cup.fillCoffee(20.5);&#xA;&#x9;&#x9;cup.drinkCoffee(Math.floor(r.nextDouble()*20.5));&#xA;&#x9;&#x9;cup.fillCoffee(32.5);&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*38.9));&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*42));&#xA;&#x9;&#x9;cup.increaseCupSize(17);&#xA;&#x9;&#x9;cup.drinkCoffee(40);&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*42));&#xA;&#x9;&#x9;cup.drinkCoffee(Math.floor(r.nextDouble()*20.5));&#xA;&#x9;&#x9;cup.fillCoffee(32.5);&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*38.9));&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*42));&#xA;&#x9;&#x9;cup.increaseCupSize(17);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private void part2(){&#xA;&#x9;&#x9;cup = new CoffeeCup(40.0, 20.5);&#xA;&#x9;&#x9;r = new Random(987654321L);&#xA;&#x9;&#x9;cup.drinkCoffee(Math.floor(r.nextDouble()*20.5));&#xA;&#x9;&#x9;cup.fillCoffee(Math.floor(r.nextDouble()*30));&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*38.9));&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*42));&#xA;&#x9;&#x9;cup.increaseCupSize(Math.floor(r.nextDouble()*26)); &#xA;&#x9;&#x9;cup.fillCoffee(Math.ceil(r.nextDouble()*59));&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*42));&#xA;&#x9;&#x9;cup.increaseCupSize(Math.floor(r.nextDouble()*35));&#xA;&#x9;&#x9;cup.fillCoffee(Math.floor(r.nextDouble()*30));&#xA;&#x9;&#x9;cup.increaseCupSize(Math.floor(r.nextDouble()*26));&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;CoffeeCupProgram program = new CoffeeCupProgram();&#xA;&#x9;&#x9;program.init();&#xA;&#x9;&#x9;program.run();&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.57/@edit" start="37" end="-5"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="20" charStart="287" charEnd="294" severity="1" problemCategory="120" problemType="603979894"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585161208042" resourcePath="/ovinger/src/patterns/delegation/office/Clerk.java" sizeMeasure="33" className="patterns.delegation.office.Clerk">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="patterns.delegation.office;&#xA;&#xA;import java.util.function.BinaryOperator;&#xA;&#xA;public class Clerk implements Employee {&#xA;&#x9;private Printer printer;&#xA;&#x9;private int taskCount = 0;&#xA;&#x9;public Clerk (Printer printer) {&#xA;&#x9;&#x9;this.printer = printer;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public double doCalculations(BinaryOperator&lt;Double> operation, double value1, double value2) {&#xA;&#x9;&#x9;taskCount++;&#xA;&#x9;&#x9;return operation.apply(value1, value2);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public void printDocument(String document) {&#xA;&#x9;&#x9;taskCount++;&#xA;&#x9;&#x9;printer.printDocument(document, this);&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int getTaskCount() {&#xA;&#x9;&#x9;return taskCount;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int getResourceCount() {&#xA;&#x9;&#x9;return 1;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.58/@edit" start="8" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585161497389" resourcePath="/ovinger/src/patterns/delegation/office/Printer.java" sizeMeasure="22" className="patterns.delegation.office.Printer">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ArrayList;&#xA;import java.util.HashMap;&#xA;import java.util.List;&#xA;&#xA;public class Printer {&#xA;&#x9;private HashMap&lt;Employee, List&lt;String>> printHistory;&#xA;&#x9;void printDocument(String document, Employee employee) {&#xA;&#x9;&#x9;System.out.println(document);&#xA;&#x9;&#x9;if (printHistory != null) {&#xA;&#x9;&#x9;&#x9;printHistory.get(employee).add(document);&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;printHistory.put(employee, new ArrayList&lt;String>());&#xA;&#x9;&#x9;&#x9;printHistory.get(employee).add(document);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;List&lt;String> getPrintHistory(Employee employee) {&#xA;&#x9;&#x9;return printHistory.get(employee)" edit="/1/@proposals.0/@proposals.0/@attempts.59/@edit" start="54" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585161527060" resourcePath="/ovinger/src/patterns/delegation/office/Printer.java" sizeMeasure="22" className="patterns.delegation.office.Printer">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" = new HashMap&lt;>();&#xA;&#x9;void printDocument(String document, Employee employee) {&#xA;&#x9;&#x9;System.out.println(document);&#xA;&#x9;&#x9;if (printHistory.get(employee)" edit="/1/@proposals.0/@proposals.0/@attempts.60/@edit" start="191" end="-272"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585161542634" resourcePath="/ovinger/src/patterns/delegation/office/Printer.java" sizeMeasure="22" className="patterns.delegation.office.Printer">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Employee, List&lt;String>" edit="/1/@proposals.0/@proposals.0/@attempts.61/@edit" start="206" end="-399"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585161761233" resourcePath="/ovinger/src/patterns/delegation/office/Printer.java" sizeMeasure="22" className="patterns.delegation.office.Printer">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" != null ? printHistory.get(employee) : new ArrayList&lt;String>()" edit="/1/@proposals.0/@proposals.0/@attempts.62/@edit" start="619" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585161837630" resourcePath="/ovinger/src/patterns/delegation/office/Printer.java" sizeMeasure="21" className="patterns.delegation.office.Printer">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="== null) {&#xA;&#x9;&#x9;&#x9;printHistory.put(employee, new ArrayList&lt;String>());&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;printHistory.get(employee).add(document);" edit="/1/@proposals.0/@proposals.0/@attempts.63/@edit" start="356" end="-163"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585161862705" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="5" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public class Manager {&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.64/@edit" start="37" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585162623818" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="41" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.Collection;&#xA;import java.util.Optional;&#xA;import java.util.function.BinaryOperator;&#xA;&#xA;public class Manager implements Employee {&#xA;&#x9;private Collection&lt;Employee> employees;&#xA;&#xA;&#x9;public Manager(Collection&lt;Employee> employees) {&#xA;&#x9;&#x9;this.employees = employees;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public double doCalculations(BinaryOperator&lt;Double> operation, double value1, double value2) {&#xA;&#x9;&#x9;return getRandomEmployee().doCalculations(operation, value1, value2);&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void printDocument(String document) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int getTaskCount() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return 0;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int getResourceCount() {&#xA;&#x9;&#x9;return employees.size();&#xA;&#x9;}&#xA;&#xA;&#x9;private Employee getRandomEmployee() {&#xA;&#x9;&#x9;return employees.stream()&#xA;&#x9;            .skip((int) (employees.size() * Math.random()))&#xA;&#x9;            .findFirst().get();&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.65/@edit" start="37" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585162630051" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="40" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="f" edit="/1/@proposals.0/@proposals.0/@attempts.66/@edit" start="83" end="-814"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585162785251" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="44" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;private int taskCount = 0;&#xA;&#xA;&#x9;public Manager(Collection&lt;Employee> employees) {&#xA;&#x9;&#x9;this.employees = employees;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public double doCalculations(BinaryOperator&lt;Double> operation, double value1, double value2) {&#xA;&#x9;&#x9;taskCount++;&#xA;&#x9;&#x9;return getRandomEmployee().doCalculations(operation, value1, value2);&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void printDocument(String document) {&#xA;&#x9;&#x9;taskCount++;&#xA;&#x9;&#x9;getRandomEmployee().printDocument(document);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int getTaskCount() {&#xA;&#x9;&#x9;return taskCount;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int getResourceCount() {&#xA;&#x9;&#x9;return employees.size();&#xA;&#x9;}&#xA;&#xA;&#x9;//In the spirit of the exercise, this seems the most realistic model of how managers delegate.&#xA;&#x9;//By using the first pseudo-random clerk they see." edit="/1/@proposals.0/@proposals.0/@attempts.67/@edit" start="193" end="-169"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585162816898" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="44" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="+1" edit="/1/@proposals.0/@proposals.0/@attempts.68/@edit" start="763" end="-322"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585162961754" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="45" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (employees.isEmpty()) {throw new IllegalArgumentException();}&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.69/@edit" start="274" end="-813"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585163632357" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="45" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="tream().map(Employee::getResourceCount).reduce(1, (a, b) -> a+b)" edit="/1/@proposals.0/@proposals.0/@attempts.70/@edit" start="825" end="-322"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585164416401" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="68" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="static org.junit.Assert.assertArrayEquals;&#xA;&#xA;import java.util.ArrayList;&#xA;import java.util.Collection;&#xA;import java.util.function.BinaryOperator;&#xA;&#xA;import org.graalvm.compiler.core.common.type.ArithmeticOpTable.BinaryOp.Add;&#xA;&#xA;public class Manager implements Employee {&#xA;&#x9;private Collection&lt;Employee> employees;&#xA;&#x9;private int taskCount = 0;&#xA;&#xA;&#x9;public Manager(Collection&lt;Employee> employees) {&#xA;&#x9;&#x9;if (employees.isEmpty()) {throw new IllegalArgumentException();}&#xA;&#x9;&#x9;this.employees = employees;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public double doCalculations(BinaryOperator&lt;Double> operation, double value1, double value2) {&#xA;&#x9;&#x9;taskCount++;&#xA;&#x9;&#x9;return getRandomEmployee().doCalculations(operation, value1, value2);&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void printDocument(String document) {&#xA;&#x9;&#x9;taskCount++;&#xA;&#x9;&#x9;getRandomEmployee().printDocument(document);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int getTaskCount() {&#xA;&#x9;&#x9;return taskCount;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int getResourceCount() {&#xA;&#x9;&#x9;return employees.stream().map(Employee::getResourceCount).reduce(1, (a, b) -> a+b);&#xA;&#x9;}&#xA;&#xA;&#x9;//In the spirit of the exercise, this seems the most realistic model of how managers delegate.&#xA;&#x9;//By using the first pseudo-random clerk they see.&#xA;&#x9;private Employee getRandomEmployee() {&#xA;&#x9;&#x9;return employees.stream()&#xA;&#x9;            .skip((int) (employees.size() * Math.random()))&#xA;&#x9;            .findFirst().get();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Printer printer = new Printer();&#xA;&#x9;&#x9;Collection&lt;Employee> employees = new ArrayList&lt;Employee>();&#xA;&#x9;&#x9;employees.add(new Clerk(printer));&#xA;&#x9;&#x9;employees.add(new Clerk(printer));&#xA;&#x9;&#x9;employees.add(new Clerk(printer));&#xA;&#x9;&#x9;employees.add(new Clerk(printer));&#xA;&#x9;&#x9;employees.add(new Clerk(printer));&#xA;&#x9;&#x9;Manager manager = new Manager(employees);&#xA;&#x9;&#x9;manager.doCalculations(Double::sum, 3, 5);&#xA;&#x9;&#x9;manager.doCalculations(Double::sum, 3, 15);&#xA;&#x9;&#x9;manager.printDocument(&quot;Hello World!&quot;);&#xA;&#x9;&#x9;System.out.print(&quot;Efficiency:&quot;);&#xA;&#x9;&#x9;System.out.println(manager.getTaskCount()/manager.getResourceCount());&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.71/@edit" start="44" end="-7"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585164623771" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="84" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Collection&lt;Employee> employees1 = new ArrayList&lt;Employee>();&#xA;&#x9;&#x9;employees1.add(new Clerk(printer));&#xA;&#x9;&#x9;employees1.add(new Clerk(printer));&#xA;&#x9;&#x9;Collection&lt;Employee> employees2 = new ArrayList&lt;Employee>();&#xA;&#x9;&#x9;employees2.add(new Clerk(printer));&#xA;&#x9;&#x9;employees2.add(new Clerk(printer));&#xA;&#x9;&#x9;employees2.add(new Clerk(printer));&#xA;&#x9;&#x9;Collection&lt;Employee> middleManagers = new ArrayList&lt;Employee>();&#xA;&#x9;&#x9;middleManagers.add(new Manager(employees1));&#xA;&#x9;&#x9;middleManagers.add(new Manager(employees2));&#xA;&#x9;&#x9;Manager manager1 = new Manager(middleManagers);&#xA;&#x9;&#x9;manager1.doCalculations(Double::sum, 3, 5);&#xA;&#x9;&#x9;manager1.doCalculations(Double::sum, 3, 15);&#xA;&#x9;&#x9;manager1.printDocument(&quot;Hello World!&quot;);&#xA;&#x9;&#x9;System.out.print(&quot;Efficiency:&quot;);&#xA;&#x9;&#x9;System.out.println(manager1.getTaskCount()/manager1.getResourceCount());&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.72/@edit" start="1980" end="-7"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585164654408" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="82" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="p" edit="/1/@proposals.0/@proposals.0/@attempts.73/@edit" start="188" end="-2492"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585164665151" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="82" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" &quot;);&#xA;&#x9;&#x9;System.out.println(manager.getTaskCount()/manager.getResourceCount());&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;Collection&lt;Employee> employees1 = new ArrayList&lt;Employee>();&#xA;&#x9;&#x9;employees1.add(new Clerk(printer));&#xA;&#x9;&#x9;employees1.add(new Clerk(printer));&#xA;&#x9;&#x9;Collection&lt;Employee> employees2 = new ArrayList&lt;Employee>();&#xA;&#x9;&#x9;employees2.add(new Clerk(printer));&#xA;&#x9;&#x9;employees2.add(new Clerk(printer));&#xA;&#x9;&#x9;employees2.add(new Clerk(printer));&#xA;&#x9;&#x9;Collection&lt;Employee> middleManagers = new ArrayList&lt;Employee>();&#xA;&#x9;&#x9;middleManagers.add(new Manager(employees1));&#xA;&#x9;&#x9;middleManagers.add(new Manager(employees2));&#xA;&#x9;&#x9;Manager manager1 = new Manager(middleManagers);&#xA;&#x9;&#x9;manager1.doCalculations(Double::sum, 3, 5);&#xA;&#x9;&#x9;manager1.doCalculations(Double::sum, 3, 15);&#xA;&#x9;&#x9;manager1.printDocument(&quot;Hello World!&quot;);&#xA;&#x9;&#x9;System.out.print(&quot;Efficiency: " edit="/1/@proposals.0/@proposals.0/@attempts.74/@edit" start="1820" end="-88"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585164693608" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="80" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="j" edit="/1/@proposals.0/@proposals.0/@attempts.75/@edit" start="44" end="-2587"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585164760980" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="80" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.76/@edit" start="2631"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585164775072" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="81" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ln(manager.getTaskCount());&#xA;&#x9;&#x9;System.out.print" edit="/1/@proposals.0/@proposals.0/@attempts.77/@edit" start="1756" end="-876"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585164802503" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="80" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="(" edit="/1/@proposals.0/@proposals.0/@attempts.78/@edit" start="1756" end="-875"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585164912132" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="80" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Double.valueOf(manager.getTaskCount())/Double.valueOf(manager.getResourceCount()" edit="/1/@proposals.0/@proposals.0/@attempts.79/@edit" start="1795" end="-789"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585164931652" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="80" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Double.valueOf(manager1.getTaskCount())/Double.valueOf(manager1.getResourceCount()" edit="/1/@proposals.0/@proposals.0/@attempts.80/@edit" start="2601" end="-13"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585166413977" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="5" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="observable;&#xA;&#xA;public class Stock {&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.81/@edit" start="17" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585166598147" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="22" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;private String ticker;&#xA;&#x9;private double price;&#xA;&#x9;public Stock(String ticker, double price) {&#xA;&#x9;&#x9;this.ticker = ticker;&#xA;&#x9;&#x9;this.price = price;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setPrice(double price) {&#xA;&#x9;&#x9;this.price = price;&#xA;&#x9;}&#xA;&#x9;public String getTicker() {&#xA;&#x9;&#x9;return ticker;&#xA;&#x9;}&#xA;&#x9;public double getPrice() {&#xA;&#x9;&#x9;return price;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.82/@edit" start="51" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585166612878" resourcePath="/ovinger/src/patterns/observable/StockListener.java" sizeMeasure="5" className="patterns.observable.StockListener">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="interface StockListener {&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.83/@edit" start="37" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585166629135" resourcePath="/ovinger/src/patterns/observable/StockListener.java" sizeMeasure="5" className="patterns.observable.StockListener">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;void stockPriceChanged(Stock stock, double oldValue, double newValue);" edit="/1/@proposals.0/@proposals.0/@attempts.84/@edit" start="63" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585166753588" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="26" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="class Stock {&#xA;&#x9;private String ticker;&#xA;&#x9;private double price;&#xA;&#x9;private List&lt;StockListener> = new ArrayList&lt;StockListener>();&#xA;&#x9;&#xA;&#x9;public Stock(String ticker, double price) {&#xA;&#x9;&#x9;this.ticker = ticker;&#xA;&#x9;&#x9;this.price = price;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setPrice(double price) {&#xA;&#x9;&#x9;this.price = price;&#xA;&#x9;}&#xA;&#x9;public String getTicker() {&#xA;&#x9;&#x9;return ticker;&#xA;&#x9;}&#xA;&#x9;public double getPrice() {&#xA;&#x9;&#x9;return price;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void addStockListener(StockListener listener) {&#xA;&#x9;&#x9;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.85/@edit" start="37" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585166782674" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="29" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.ArrayList;&#xA;import java.util.List;&#xA;&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.86/@edit" start="30" end="-455"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585166869043" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="33" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="listeners = new ArrayList&lt;StockListener>();&#xA;&#x9;&#xA;&#x9;public Stock(String ticker, double price) {&#xA;&#x9;&#x9;this.ticker = ticker;&#xA;&#x9;&#x9;this.price = price;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setPrice(double price) {&#xA;&#x9;&#x9;this.price = price;&#xA;&#x9;}&#xA;&#x9;public String getTicker() {&#xA;&#x9;&#x9;return ticker;&#xA;&#x9;}&#xA;&#x9;public double getPrice() {&#xA;&#x9;&#x9;return price;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void addStockListener(StockListener listener) {&#xA;&#x9;&#x9;listeners.add(listener);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void removeStockListener(StockListener listener) {&#xA;&#x9;&#x9;listeners.remove(listener);" edit="/1/@proposals.0/@proposals.0/@attempts.87/@edit" start="179" end="-7"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585167171807" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="34" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="listeners.stream().forEach((listener) -> listener.stockPriceChanged(this, this.price, price));&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.88/@edit" start="361" end="-304"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585167230316" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="15" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public class StockIndex implements StockListener {&#xA;&#xA;&#x9;public StockIndex() {&#xA;&#x9;&#x9;// TODO Auto-generated constructor stub&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void stockPriceChanged(Stock stock, double oldValue, double newValue) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.89/@edit" start="30" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585167491125" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="18" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.Arrays;&#xA;&#xA;public class StockIndex implements StockListener {&#xA;&#x9;private double index;&#xA;&#xA;&#x9;public StockIndex(String name, Stock...stocks) {&#xA;&#x9;&#x9;index = stocks.length > 0 ? Arrays.stream(stocks).sum() : 0;" edit="/1/@proposals.0/@proposals.0/@attempts.90/@edit" start="30" end="-141"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585167520385" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="18" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.91/@edit" start="383"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585167869243" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="26" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.List;&#xA;&#xA;public class StockIndex implements StockListener {&#xA;&#x9;private double index;&#xA;&#x9;private String name;&#xA;&#x9;private List&lt;Stock> stocks;&#xA;&#xA;&#x9;public StockIndex(String name, Stock...stocks) {&#xA;&#x9;&#x9;this.name = name;&#xA;&#x9;&#x9;this.stocks = Arrays.asList(stocks);&#xA;&#x9;&#x9;index = stocks.length > 0 ? Arrays.stream(stocks).map(Stock::getPrice).reduce((double) 0, (a, b)-> a+b ) : 0;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void stockPriceChanged(Stock stock, double oldValue, double newValue) {&#xA;&#x9;&#x9;index = index-oldValue+newValue;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void addStock()&#xA;&#x9;&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.92/@edit" start="55" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585167985698" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="34" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Stock stock) {&#xA;&#x9;&#x9;stocks.add(stock);&#xA;&#x9;&#x9;stock.addStockListener(this);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void removeStock(Stock stock) {&#xA;&#x9;&#x9;stocks.remove(stock);&#xA;&#x9;&#x9;stock.removeStockListener(this);&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.93/@edit" start="583" end="-9"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585168004323" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="38" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public double getIndex() {&#xA;&#x9;&#x9;return index;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.94/@edit" start="761" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585168048551" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="40" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="index += stock.getPrice();&#xA;&#x9;&#x9;stock.addStockListener(this);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void removeStock(Stock stock) {&#xA;&#x9;&#x9;stocks.remove(stock);&#xA;&#x9;&#x9;index -= stock.getPrice(" edit="/1/@proposals.0/@proposals.0/@attempts.95/@edit" start="621" end="-98"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585168141866" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="40" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" = new ArrayList&lt;Stocks>()" edit="/1/@proposals.0/@proposals.0/@attempts.96/@edit" start="202" end="-671"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585168148891" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="41" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="List;&#xA;import java.util.Arrays;&#xA;import java.util.List;&#xA;&#xA;public class StockIndex implements StockListener {&#xA;&#x9;private double index;&#xA;&#x9;private String name;&#xA;&#x9;private List&lt;Stock> stocks = new ArrayList&lt;Stock" edit="/1/@proposals.0/@proposals.0/@attempts.97/@edit" start="52" end="-674"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585168274944" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="41" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.98/@edit" start="925"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585168404583" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="41" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=".addAll(Arrays.asList(stocks)" edit="/1/@proposals.0/@proposals.0/@attempts.99/@edit" start="341" end="-562"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585168780716" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="41" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="d" edit="/1/@proposals.0/@proposals.0/@attempts.100/@edit" start="159" end="-764"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585168793143" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="41" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="private " edit="/1/@proposals.0/@proposals.0/@attempts.101/@edit" start="159" end="-765"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585168903015" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="41" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="(double) " edit="/1/@proposals.0/@proposals.0/@attempts.102/@edit" start="482" end="-450"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585168926261" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="41" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="0" edit="/1/@proposals.0/@proposals.0/@attempts.103/@edit" start="482" end="-449"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585169026827" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="42" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(stocks.length);&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.104/@edit" start="375" end="-557"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585169084023" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="41" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="i" edit="/1/@proposals.0/@proposals.0/@attempts.105/@edit" start="375" end="-556"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585169162794" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="43" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (!stocks.contains(stock)) {&#xA;&#x9;&#x9;&#x9;stocks.add(stock);&#xA;&#x9;&#x9;&#x9;index += stock.getPrice();&#xA;&#x9;&#x9;&#x9;stock.addStockListener(this);&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.106/@edit" start="659" end="-194"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585169195873" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="45" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (stocks.contains(stock)) {&#xA;&#x9;&#x9;&#x9;stocks.add(stock);&#xA;&#x9;&#x9;&#x9;index -= stock.getPrice();&#xA;&#x9;&#x9;&#x9;stock.removeStockListener(this);&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.107/@edit" start="826" end="-61"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585169208928" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="45" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="remove" edit="/1/@proposals.0/@proposals.0/@attempts.108/@edit" start="866" end="-139"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585169310544" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="45" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="+= newValue-old" edit="/1/@proposals.0/@proposals.0/@attempts.109/@edit" start="588" end="-403"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585169374637" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="34" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="List;&#xA;&#xA;public class Stock {&#xA;&#x9;private String ticker;&#xA;&#x9;private double price;&#xA;&#x9;private List&lt;StockListener> listeners = new ArrayList&lt;StockListener>();&#xA;&#x9;&#xA;&#x9;public Stock(String ticker, double price) {&#xA;&#x9;&#x9;this.ticker = ticker;&#xA;&#x9;&#x9;this.price = price;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setPrice(double price) {&#xA;&#x9;&#x9;listeners.forEach((listener) -> listener.stockPriceChanged(this, this.price, price));&#xA;&#x9;&#x9;this.price = price;&#xA;&#x9;}&#xA;&#x9;public String getTicker() {&#xA;&#x9;&#x9;return ticker;&#xA;&#x9;}&#xA;&#x9;public double getPrice() {&#xA;&#x9;&#x9;return price;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void addStockListener(StockListener listener) {&#xA;&#x9;&#x9;listeners.add(listener);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void removeStockListener(StockListener listener) {&#xA;&#x9;&#x9;listeners.remove(listener);&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.110/@edit" start="75" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585169404537" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="34" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="listener" edit="/1/@proposals.0/@proposals.0/@attempts.111/@edit" start="379" end="-364"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585169592005" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="34" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" (l) -> l" edit="/1/@proposals.0/@proposals.0/@attempts.112/@edit" start="379" end="-352"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585169755936" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="35" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="newPrice) {&#xA;&#x9;&#x9;Stock stock = this;&#xA;&#x9;&#x9;listeners.forEach( (l) -> l.stockPriceChanged(stock, price, newPrice));&#xA;&#x9;&#x9;price = newP" edit="/1/@proposals.0/@proposals.0/@attempts.113/@edit" start="350" end="-290"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585170431221" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="38" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//listeners.forEach( (l) -> l.stockPriceChanged(stock, price, newPrice));&#xA;&#x9;&#x9;for (StockListener l : listeners) {&#xA;&#x9;&#x9;&#x9;l.stockPriceChanged(stock, price, newPrice);&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.114/@edit" start="386" end="-305"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585170811031" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="35" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="listeners.forEach( (l) -> l.stockPriceChanged(stock, price, newPrice));" edit="/1/@proposals.0/@proposals.0/@attempts.115/@edit" start="386" end="-305"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585170862439" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="38" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//listeners.forEach( (l) -> l.stockPriceChanged(stock, price, newPrice));&#xA;&#x9;&#x9;for (StockListener l : listeners) {&#xA;&#x9;&#x9;&#x9;l.stockPriceChanged(stock, price, newPrice);&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.116/@edit" start="386" end="-305"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585171022563" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="38" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="int i = 0; i&lt;listeners.size(); i++) {&#xA;&#x9;&#x9;&#x9;listeners.get(i)" edit="/1/@proposals.0/@proposals.0/@attempts.117/@edit" start="467" end="-352"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585172693347" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="45" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Arrays;&#xA;import java.util.List;&#xA;&#xA;public class StockIndex implements StockListener {&#xA;&#x9;private double index;&#xA;&#x9;private String name;&#xA;&#x9;private List&lt;Stock> stocks = new ArrayList&lt;Stock>();&#xA;&#xA;&#x9;public StockIndex(String name, Stock...stocks) {&#xA;&#x9;&#x9;this.name = name;&#xA;&#x9;&#x9;this.stocks.addAll(Arrays.asList(stocks));&#xA;&#x9;&#x9;index = stocks.length > 0 ? Arrays.stream(stocks).map(Stock::getPrice).reduce((double) 0, (a, b)-> a+b ) : 0;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void stockPriceChanged(Stock stock, double oldValue, double newValue) {&#xA;&#x9;&#x9;index += newValue-oldValue;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void addStock(Stock stock) {&#xA;&#x9;&#x9;if (!stocks.contains(stock)) {&#xA;&#x9;&#x9;&#x9;stocks.add(stock);&#xA;&#x9;&#x9;&#x9;index += stock.getPrice();&#xA;&#x9;&#x9;&#x9;stock.addStockListener(this);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void removeStock(Stock stock) {&#xA;&#x9;&#x9;if (stocks.contains(stock)) {&#xA;&#x9;&#x9;&#x9;stocks.remove(stock);&#xA;&#x9;&#x9;&#x9;index -= stock.getPrice();&#xA;&#x9;&#x9;&#x9;stock.removeStockListener(this);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getIndex() {&#xA;&#x9;&#x9;return index;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.118/@edit" start="75" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585172959243" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="47" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public static void main(String[] args) {&#xA;&#x9;&#x9;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.119/@edit" start="1001" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585173143675" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="34" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="List;&#xA;&#xA;public class Stock {&#xA;&#x9;private String ticker;&#xA;&#x9;private double price;&#xA;&#x9;private List&lt;StockListener> listeners = new ArrayList&lt;StockListener>();&#xA;&#x9;&#xA;&#x9;public Stock(String ticker, double price) {&#xA;&#x9;&#x9;this.ticker = ticker;&#xA;&#x9;&#x9;this.price = price;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setPrice(double newPrice) {&#xA;&#x9;&#x9;listeners.forEach( (l) -> l.stockPriceChanged(this, price, newPrice));&#xA;&#x9;&#x9;price = newPrice;&#xA;&#x9;}&#xA;&#x9;public String getTicker() {&#xA;&#x9;&#x9;return ticker;&#xA;&#x9;}&#xA;&#x9;public double getPrice() {&#xA;&#x9;&#x9;return price;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void addStockListener(StockListener listener) {&#xA;&#x9;&#x9;listeners.add(listener);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void removeStockListener(StockListener listener) {&#xA;&#x9;&#x9;listeners.remove(listener);&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.120/@edit" start="75" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585173146769" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="44" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Arrays;&#xA;import java.util.List;&#xA;&#xA;public class StockIndex implements StockListener {&#xA;&#x9;private double index;&#xA;&#x9;private String name;&#xA;&#x9;private List&lt;Stock> stocks = new ArrayList&lt;Stock>();&#xA;&#xA;&#x9;public StockIndex(String name, Stock...stocks) {&#xA;&#x9;&#x9;this.name = name;&#xA;&#x9;&#x9;this.stocks.addAll(Arrays.asList(stocks));&#xA;&#x9;&#x9;index = stocks.length > 0 ? Arrays.stream(stocks).map(Stock::getPrice).reduce((double) 0, (a, b)-> a+b ) : 0;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void stockPriceChanged(Stock stock, double oldValue, double newValue) {&#xA;&#x9;&#x9;index += newValue-oldValue;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void addStock(Stock stock) {&#xA;&#x9;&#x9;if (!stocks.contains(stock)) {&#xA;&#x9;&#x9;&#x9;stocks.add(stock);&#xA;&#x9;&#x9;&#x9;index += stock.getPrice();&#xA;&#x9;&#x9;&#x9;stock.addStockListener(this);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void removeStock(Stock stock) {&#xA;&#x9;&#x9;if (stocks.contains(stock)) {&#xA;&#x9;&#x9;&#x9;stocks.remove(stock);&#xA;&#x9;&#x9;&#x9;index -= stock.getPrice();&#xA;&#x9;&#x9;&#x9;stock.removeStockListener(this);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getIndex() {&#xA;&#x9;&#x9;return index;&#xA;&#x9;}&#xA;&#x9;&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.121/@edit" start="75" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585173184506" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="45" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.stocks.forEach((s) -> s.addStockListener(this););&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.122/@edit" start="375" end="-629"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585173190221" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="45" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=")" edit="/1/@proposals.0/@proposals.0/@attempts.123/@edit" start="426" end="-633"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580822302279" mode="run" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580822331638" mode="run" className="encapsulation.CardDeckTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeckTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput>S&#xD;
1&#xD;
S&#xD;
2&#xD;
H&#xD;
1&#xD;
H&#xD;
2&#xD;
D&#xD;
1&#xD;
D&#xD;
2&#xD;
C&#xD;
1&#xD;
C&#xD;
2&#xD;
S&#xD;
1&#xD;
S&#xD;
2&#xD;
H&#xD;
1&#xD;
H&#xD;
2&#xD;
D&#xD;
1&#xD;
D&#xD;
2&#xD;
C&#xD;
1&#xD;
C&#xD;
2&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580822404016" mode="run" className="encapsulation.CardTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput>S&#xD;
1&#xD;
S&#xD;
13&#xD;
H&#xD;
1&#xD;
H&#xD;
13&#xD;
D&#xD;
1&#xD;
D&#xD;
13&#xD;
C&#xD;
1&#xD;
C&#xD;
13&#xD;
S&#xD;
1&#xD;
S&#xD;
13&#xD;
H&#xD;
1&#xD;
H&#xD;
13&#xD;
D&#xD;
1&#xD;
D&#xD;
13&#xD;
C&#xD;
1&#xD;
C&#xD;
13&#xD;
X&#xD;
1&#xD;
S&#xD;
0&#xD;
C&#xD;
14&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580822458956" mode="run" className="encapsulation.CardDeckTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeckTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput>S&#xD;
1&#xD;
S&#xD;
2&#xD;
H&#xD;
1&#xD;
H&#xD;
2&#xD;
D&#xD;
1&#xD;
D&#xD;
2&#xD;
C&#xD;
1&#xD;
C&#xD;
2&#xD;
S&#xD;
1&#xD;
S&#xD;
2&#xD;
H&#xD;
1&#xD;
H&#xD;
2&#xD;
D&#xD;
1&#xD;
D&#xD;
2&#xD;
C&#xD;
1&#xD;
C&#xD;
2&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580822507575" mode="debug" className="encapsulation.CardDeckTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeckTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput>S&#xD;
1&#xD;
S&#xD;
2&#xD;
H&#xD;
1&#xD;
H&#xD;
2&#xD;
D&#xD;
1&#xD;
D&#xD;
2&#xD;
C&#xD;
1&#xD;
C&#xD;
2&#xD;
S&#xD;
1&#xD;
S&#xD;
2&#xD;
H&#xD;
1&#xD;
H&#xD;
2&#xD;
D&#xD;
1&#xD;
D&#xD;
2&#xD;
C&#xD;
1&#xD;
C&#xD;
2&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580822546952" mode="debug" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580822602480" mode="debug" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580822722030" mode="debug" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>CardDeck.shufflePerfectly()&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580822739297" mode="debug" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>CardDeck.shufflePerfectly()&#xD;
encapsulation.CardDeck@12028586&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580822828718" mode="debug" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>CardDeck.shufflePerfectly()&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580822919301" mode="debug" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>CardDeck.shufflePerfectly()&#xD;
30&#xD;
S1&#xD;
D1&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580823119216" mode="debug" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>CardDeck.shufflePerfectly()&#xD;
30&#xD;
S1&#xD;
D1&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580823149036" mode="debug" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>32&#xD;
CardDeck.shufflePerfectly()&#xD;
30&#xD;
S1&#xD;
D1&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580823165881" mode="debug" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>32&#xD;
CardDeck.shufflePerfectly()&#xD;
30&#xD;
S1&#xD;
H8&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580823254275" mode="run" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>32&#xD;
Exception in thread &quot;main&quot; java.lang.IndexOutOfBoundsException: toIndex = 33&#xD;
	at java.base/java.util.AbstractList.subListRangeCheck(AbstractList.java:507)&#xD;
	at java.base/java.util.ArrayList.subList(ArrayList.java:1104)&#xD;
	at ovinger/encapsulation.CardDeck.shufflePerfectly(CardDeck.java:31)&#xD;
	at ovinger/encapsulation.CardDeck.main(CardDeck.java:45)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580823297456" mode="run" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>32&#xD;
30&#xD;
S1&#xD;
H8&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580822981950" mode="debug" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>CardDeck.shufflePerfectly()&#xD;
</consoleOutput>
          <consoleOutput>30&#xD;
</consoleOutput>
          <consoleOutput>S1&#xD;
</consoleOutput>
          <consoleOutput>H8&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580823537905" mode="run" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>32&#xD;
30&#xD;
S1&#xD;
D1&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580823691947" mode="run" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>32&#xD;
32&#xD;
S1&#xD;
D1&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580823173227" mode="debug" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>32&#xD;
CardDeck.shufflePerfectly()&#xD;
</consoleOutput>
          <consoleOutput>CardDeck.shufflePerfectly()&#xD;
</consoleOutput>
          <consoleOutput>30&#xD;
</consoleOutput>
          <consoleOutput>S1&#xD;
</consoleOutput>
          <consoleOutput>D1&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580823733491" mode="run" className="encapsulation.CardDeckTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeckTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580838392260" mode="debug" className="encapsulation.CardDeckTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeckTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580838412464" mode="debug" className="debugging.CoffeeCupProgram">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>debugging.CoffeeCupProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.IllegalArgumentException: You can't drink that much coffee!&#xD;
	at ovinger/debugging.CoffeeCup.drinkCoffee(CoffeeCup.java:61)&#xD;
	at ovinger/debugging.CoffeeCupProgram.part1(CoffeeCupProgram.java:28)&#xD;
	at ovinger/debugging.CoffeeCupProgram.run(CoffeeCupProgram.java:16)&#xD;
	at ovinger/debugging.CoffeeCupProgram.main(CoffeeCupProgram.java:56)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580838856286" mode="debug" className="debugging.CoffeeCupProgram">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>debugging.CoffeeCupProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.IllegalArgumentException: You can't drink that much coffee!&#xD;
	at ovinger/debugging.CoffeeCup.drinkCoffee(CoffeeCup.java:61)&#xD;
	at ovinger/debugging.CoffeeCupProgram.part1(CoffeeCupProgram.java:28)&#xD;
	at ovinger/debugging.CoffeeCupProgram.run(CoffeeCupProgram.java:16)&#xD;
	at ovinger/debugging.CoffeeCupProgram.main(CoffeeCupProgram.java:56)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580838969132" mode="debug" className="debugging.CoffeeCupProgram">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>debugging.CoffeeCupProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.IllegalArgumentException: You just poured coffee all over the table. Good job.&#xD;
	at ovinger/debugging.CoffeeCup.fillCoffee(CoffeeCup.java:70)&#xD;
	at ovinger/debugging.CoffeeCupProgram.part2(CoffeeCupProgram.java:45)&#xD;
	at ovinger/debugging.CoffeeCupProgram.run(CoffeeCupProgram.java:17)&#xD;
	at ovinger/debugging.CoffeeCupProgram.main(Unknown Source)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580839094696" mode="debug" className="debugging.CoffeeCupProgram">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>debugging.CoffeeCupProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582662361264" mode="run" className="objectstructures.CoffeCupTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit5</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.CoffeCupTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582662378761" mode="run" className="objectstructures.CoffeCupTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit5</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.CoffeCupTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582662501858" mode="run" className="objectstructures.CoffeCupTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit5</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.CoffeCupTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582662734849" mode="run" className="objectstructures.CoffeCupTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit5</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.CoffeCupTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583367675574" mode="run" className="interfaces.twitter.UserNameComparatorTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.twitter.UserNameComparatorTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583367965773" mode="run" className="interfaces.twitter.TwitterAccountTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.twitter.TwitterAccountTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583367987905" mode="run" className="interfaces.twitter.TweetsCountComparatorTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.twitter.TweetsCountComparatorTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583367999591" mode="run" className="interfaces.twitter.TweetsCountComparatorTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.twitter.TweetsCountComparatorTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583368337525" mode="run" className="interfaces.twitter.FollowersCountComparatorTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.twitter.FollowersCountComparatorTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583368379179" mode="run" className="interfaces.twitter.FollowersCountComparatorTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.twitter.FollowersCountComparatorTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583368398953" mode="run" className="interfaces.twitter.FollowersCountComparatorTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.twitter.FollowersCountComparatorTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583369012120" mode="run" className="interfaces.twitter.TwitterAccountTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.twitter.TwitterAccountTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583439045469" mode="run" className="interfaces.BinaryComputingIteratorTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.BinaryComputingIteratorTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583439105257" mode="run" className="interfaces.BinaryComputingIteratorTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.BinaryComputingIteratorTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583439258380" mode="debug" className="interfaces.BinaryComputingIteratorTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.BinaryComputingIteratorTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583439585193" mode="debug" className="interfaces.BinaryComputingIteratorTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.BinaryComputingIteratorTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583439625204" mode="debug" className="interfaces.BinaryComputingIteratorTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.BinaryComputingIteratorTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583439766718" mode="debug" className="interfaces.BinaryComputingIteratorTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.BinaryComputingIteratorTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583439992117" mode="debug" className="interfaces.BinaryComputingIteratorTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TESTNAME</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>testComputeResultsWithShortIteratorAndDefault</launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.BinaryComputingIteratorTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583440165505" mode="debug" className="interfaces.BinaryComputingIteratorTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TESTNAME</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>testComputeResultsWithShortIteratorAndDefault</launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.BinaryComputingIteratorTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583440250509" mode="debug" className="interfaces.BinaryComputingIteratorTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TESTNAME</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>testComputeResultsWithShortIteratorAndDefault</launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.BinaryComputingIteratorTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583440261723" mode="debug" className="interfaces.BinaryComputingIteratorTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TESTNAME</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>testComputeResultsWithShortIteratorAndDefault</launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.BinaryComputingIteratorTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583440279492" mode="debug" className="interfaces.BinaryComputingIteratorTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TESTNAME</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>testComputeResultsWithShortIteratorAndDefault</launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.BinaryComputingIteratorTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583440359299" mode="debug" className="interfaces.BinaryComputingIteratorTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TESTNAME</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>testComputeResultsWithShortIteratorAndDefault</launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.BinaryComputingIteratorTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583440372145" mode="debug" className="interfaces.BinaryComputingIteratorTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TESTNAME</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>testComputeResultsWithShortIteratorAndDefault</launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.BinaryComputingIteratorTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583440430206" mode="debug" className="interfaces.BinaryComputingIteratorTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TESTNAME</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>testComputeResultsWithShortIteratorAndDefault</launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.BinaryComputingIteratorTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583440444038" mode="debug" className="interfaces.BinaryComputingIteratorTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TESTNAME</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>testComputeResultsWithShortIteratorAndDefault</launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.BinaryComputingIteratorTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583440463930" mode="run" className="interfaces.BinaryComputingIteratorTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.BinaryComputingIteratorTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583440786291" mode="run" className="debugging.StringMergingIteratorProgram">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>debugging.StringMergingIteratorProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Success! StringMergingIterator correctly merged the output of the two lists.&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585161191690" mode="run" className="patterns.delegation.office.ClerkTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.office.ClerkTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput>dokument1&#xD;
dokument1&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585161210604" mode="run" className="patterns.delegation.office.ClerkTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.office.ClerkTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput>dokument1&#xD;
dokument1&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585161499257" mode="run" className="patterns.delegation.office.ClerkTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.office.ClerkTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput>dokument1&#xD;
dokument1&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585161544741" mode="run" className="patterns.delegation.office.ClerkTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.office.ClerkTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput>dokument1&#xD;
dokument1&#xD;
dokument2&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585161560936" mode="run" className="patterns.delegation.office.PrinterTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.office.PrinterTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput>dokument1&#xD;
dokument2&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585161765227" mode="run" className="patterns.delegation.office.PrinterTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.office.PrinterTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput>dokument1&#xD;
dokument2&#xD;
dokument1&#xD;
dokument2&#xD;
dokument1&#xD;
dokument2&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585161839278" mode="run" className="patterns.delegation.office.PrinterTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.office.PrinterTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput>dokument1&#xD;
dokument2&#xD;
dokument1&#xD;
dokument2&#xD;
dokument1&#xD;
dokument2&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585162795475" mode="run" className="patterns.delegation.office.ManagerTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.office.ManagerTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput>dokument&#xD;
dokument1&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585162818789" mode="run" className="patterns.delegation.office.ManagerTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.office.ManagerTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput>dokument&#xD;
dokument&#xD;
dokument1&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585163644451" mode="run" className="patterns.delegation.office.ManagerTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.office.ManagerTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput>dokument&#xD;
dokument&#xD;
dokument1&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585164631199" mode="run" className="patterns.delegation.office.Manager">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.office.Manager</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Hello World!&#xD;
Efficiency:0&#xD;
Hello World!&#xD;
Efficiency:0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585164656100" mode="run" className="patterns.delegation.office.Manager">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.office.Manager</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Hello World!&#xD;
Efficiency:0&#xD;
Hello World!&#xD;
Efficiency:0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585164758579" mode="run" className="patterns.delegation.office.Manager">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.office.Manager</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Hello World!&#xD;
Efficiency: 0&#xD;
Hello World!&#xD;
Efficiency: 0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585164776997" mode="run" className="patterns.delegation.office.Manager">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.office.Manager</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Hello World!&#xD;
3&#xD;
Efficiency: 0&#xD;
Hello World!&#xD;
Efficiency: 0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585164915163" mode="run" className="patterns.delegation.office.Manager">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.office.Manager</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Hello World!&#xD;
Efficiency: 0.5&#xD;
Hello World!&#xD;
Efficiency: 0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585164933095" mode="run" className="patterns.delegation.office.Manager">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.office.Manager</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Hello World!&#xD;
Efficiency: 0.5&#xD;
Hello World!&#xD;
Efficiency: 0.375&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585168100084" mode="run" className="patterns.observable.StockTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585168108543" mode="run" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585168153291" mode="run" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585168407328" mode="run" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585168462971" mode="run" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585168478514" mode="debug" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TESTNAME</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>testRemoveStock</launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585168497210" mode="run" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585168501985" mode="debug" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585168528616" mode="debug" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585168786505" mode="debug" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585168907555" mode="debug" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585169029174" mode="debug" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput>0&#xD;
1&#xD;
2&#xD;
0&#xD;
1&#xD;
2&#xD;
0&#xD;
1&#xD;
2&#xD;
0&#xD;
1&#xD;
2&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585169197631" mode="debug" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585169210551" mode="debug" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585169317149" mode="debug" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585169376094" mode="debug" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585169402567" mode="debug" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585169604215" mode="debug" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TESTNAME</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>testChangePrice</launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585169766231" mode="debug" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TESTNAME</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>testChangePrice</launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585169785512" mode="debug" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TESTNAME</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>testChangePrice</launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585169830975" mode="run" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585169869520" mode="run" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585169875970" mode="debug" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585169952357" mode="debug" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585170097228" mode="debug" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585170238745" mode="debug" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585170293216" mode="debug" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585170439082" mode="run" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585170504782" mode="debug" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585170530707" mode="debug" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585170551770" mode="debug" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585170614788" mode="debug" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585170861057" mode="debug" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585170921951" mode="debug" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585171033175" mode="debug" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585172690868" mode="debug" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585173196691" mode="run" className="patterns.observable.StockIndexTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.StockIndexTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1580822336305" completion="0.5" testRunName="encapsulation.CardDeckTest" successCount="1" failureCount="1">
          <successTests>testConstructor</successTests>
          <failureTests>testShufflePerfectly</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1580822405850" completion="1.0" testRunName="encapsulation.CardTest" successCount="2">
          <successTests>testToString</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1580822460698" completion="0.5" testRunName="encapsulation.CardDeckTest" successCount="1" failureCount="1">
          <successTests>testConstructor</successTests>
          <failureTests>testShufflePerfectly</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1580822510538" completion="0.5" testRunName="encapsulation.CardDeckTest" successCount="1" failureCount="1">
          <successTests>testConstructor</successTests>
          <failureTests>testShufflePerfectly</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1580823735522" completion="1.0" testRunName="encapsulation.CardDeckTest" successCount="2">
          <successTests>testShufflePerfectly</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1580838397705" completion="1.0" testRunName="encapsulation.CardDeckTest" successCount="2">
          <successTests>testShufflePerfectly</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1582662363256" completion="0.8" testRunName="objectstructures.CoffeCupTest" successCount="4" failureCount="1">
          <successTests>getCurrentVolumeTest</successTests>
          <successTests>ConstructorTest</successTests>
          <successTests>drinkCoffeeTest</successTests>
          <successTests>getCapacityTest</successTests>
          <failureTests>increaseCupSizeTest</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1582662380545" completion="1.0" testRunName="objectstructures.CoffeCupTest" successCount="5">
          <successTests>getCurrentVolumeTest</successTests>
          <successTests>ConstructorTest</successTests>
          <successTests>increaseCupSizeTest</successTests>
          <successTests>drinkCoffeeTest</successTests>
          <successTests>getCapacityTest</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1582662503698" completion="0.8333333333333334" testRunName="objectstructures.CoffeCupTest" successCount="5" failureCount="1">
          <successTests>getCurrentVolumeTest</successTests>
          <successTests>ConstructorTest</successTests>
          <successTests>increaseCupSizeTest</successTests>
          <successTests>drinkCoffeeTest</successTests>
          <successTests>getCapacityTest</successTests>
          <failureTests>fillCoffeeTest</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1582662736496" completion="1.0" testRunName="objectstructures.CoffeCupTest" successCount="6">
          <successTests>getCurrentVolumeTest</successTests>
          <successTests>fillCoffeeTest</successTests>
          <successTests>ConstructorTest</successTests>
          <successTests>increaseCupSizeTest</successTests>
          <successTests>drinkCoffeeTest</successTests>
          <successTests>getCapacityTest</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1583367677417" completion="1.0" testRunName="interfaces.twitter.UserNameComparatorTest" successCount="1">
          <successTests>testCompare</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1583367967570" completion="0.6666666666666666" testRunName="interfaces.twitter.TwitterAccountTest" successCount="4" errorCount="2">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testRetweet</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <errorTests>testUnfollow</errorTests>
          <errorTests>testFollow</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1583367989439" completion="0.0" testRunName="interfaces.twitter.TweetsCountComparatorTest" failureCount="1">
          <failureTests>testCompare</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1583368001115" completion="1.0" testRunName="interfaces.twitter.TweetsCountComparatorTest" successCount="1">
          <successTests>testCompare</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1583368339239" completion="0.0" testRunName="interfaces.twitter.FollowersCountComparatorTest" errorCount="1">
          <errorTests>initializationError</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1583368380598" completion="0.0" testRunName="interfaces.twitter.FollowersCountComparatorTest" errorCount="1">
          <errorTests>testCompare</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1583368400085" completion="1.0" testRunName="interfaces.twitter.FollowersCountComparatorTest" successCount="1">
          <successTests>testCompare</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1583369013823" completion="1.0" testRunName="interfaces.twitter.TwitterAccountTest" successCount="6">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testUnfollow</successTests>
          <successTests>testRetweet</successTests>
          <successTests>testFollow</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1583439048008" completion="0.8333333333333334" testRunName="interfaces.BinaryComputingIteratorTest" successCount="5" errorCount="1">
          <successTests>testComputeResultsMultiplication</successTests>
          <successTests>testComputeResultsWithEmptyIteratorAndDefault</successTests>
          <successTests>testComputeResultsAddition</successTests>
          <successTests>testComputeResultsWithShortIterator</successTests>
          <successTests>testComputeResultsWithEmptyIterator</successTests>
          <errorTests>testComputeResultsWithShortIteratorAndDefault</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1583439107244" completion="0.8333333333333334" testRunName="interfaces.BinaryComputingIteratorTest" successCount="5" errorCount="1">
          <successTests>testComputeResultsMultiplication</successTests>
          <successTests>testComputeResultsWithEmptyIteratorAndDefault</successTests>
          <successTests>testComputeResultsAddition</successTests>
          <successTests>testComputeResultsWithShortIterator</successTests>
          <successTests>testComputeResultsWithEmptyIterator</successTests>
          <errorTests>testComputeResultsWithShortIteratorAndDefault</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1583439769285" completion="0.8333333333333334" testRunName="interfaces.BinaryComputingIteratorTest" successCount="5" errorCount="1">
          <successTests>testComputeResultsMultiplication</successTests>
          <successTests>testComputeResultsWithEmptyIteratorAndDefault</successTests>
          <successTests>testComputeResultsAddition</successTests>
          <successTests>testComputeResultsWithShortIterator</successTests>
          <successTests>testComputeResultsWithEmptyIterator</successTests>
          <errorTests>testComputeResultsWithShortIteratorAndDefault</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1583439994512" completion="0.0" testRunName="interfaces.BinaryComputingIteratorTest" errorCount="1">
          <errorTests>testComputeResultsWithShortIteratorAndDefault</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1583440264100" completion="0.0" testRunName="interfaces.BinaryComputingIteratorTest" errorCount="1">
          <errorTests>testComputeResultsWithShortIteratorAndDefault</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1583440445958" completion="1.0" testRunName="interfaces.BinaryComputingIteratorTest" successCount="1">
          <successTests>testComputeResultsWithShortIteratorAndDefault</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1583440465915" completion="1.0" testRunName="interfaces.BinaryComputingIteratorTest" successCount="6">
          <successTests>testComputeResultsMultiplication</successTests>
          <successTests>testComputeResultsWithEmptyIteratorAndDefault</successTests>
          <successTests>testComputeResultsAddition</successTests>
          <successTests>testComputeResultsWithShortIterator</successTests>
          <successTests>testComputeResultsWithShortIteratorAndDefault</successTests>
          <successTests>testComputeResultsWithEmptyIterator</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585161193518" completion="0.5" testRunName="patterns.delegation.office.ClerkTest" successCount="2" errorCount="2">
          <successTests>testDoCalculations</successTests>
          <successTests>testResourceCount</successTests>
          <errorTests>testTaskCount</errorTests>
          <errorTests>testPrintDocuments</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585161212636" completion="0.5" testRunName="patterns.delegation.office.ClerkTest" successCount="2" errorCount="2">
          <successTests>testDoCalculations</successTests>
          <successTests>testResourceCount</successTests>
          <errorTests>testTaskCount</errorTests>
          <errorTests>testPrintDocuments</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585161501493" completion="0.5" testRunName="patterns.delegation.office.ClerkTest" successCount="2" errorCount="2">
          <successTests>testDoCalculations</successTests>
          <successTests>testResourceCount</successTests>
          <errorTests>testTaskCount</errorTests>
          <errorTests>testPrintDocuments</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585161546901" completion="1.0" testRunName="patterns.delegation.office.ClerkTest" successCount="4">
          <successTests>testDoCalculations</successTests>
          <successTests>testResourceCount</successTests>
          <successTests>testTaskCount</successTests>
          <successTests>testPrintDocuments</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585161562932" completion="0.3333333333333333" testRunName="patterns.delegation.office.PrinterTest" successCount="1" errorCount="2">
          <successTests>testPrintHistoryModification</successTests>
          <errorTests>testPrintSingleClerk</errorTests>
          <errorTests>testPrintMulipleClerks</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585161767292" completion="1.0" testRunName="patterns.delegation.office.PrinterTest" successCount="3">
          <successTests>testPrintHistoryModification</successTests>
          <successTests>testPrintSingleClerk</successTests>
          <successTests>testPrintMulipleClerks</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585161840641" completion="1.0" testRunName="patterns.delegation.office.PrinterTest" successCount="3">
          <successTests>testPrintHistoryModification</successTests>
          <successTests>testPrintSingleClerk</successTests>
          <successTests>testPrintMulipleClerks</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585162797567" completion="0.42857142857142855" testRunName="patterns.delegation.office.ManagerTest" successCount="3" failureCount="4">
          <successTests>testDoCalculations</successTests>
          <successTests>testTaskCount</successTests>
          <successTests>testPrintDocuments</successTests>
          <failureTests>testResourceCount</failureTests>
          <failureTests>testSeveralClerks</failureTests>
          <failureTests>testMiddleManagementResourceCounts</failureTests>
          <failureTests>testNoEmployeesConstructor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585162821170" completion="0.7142857142857143" testRunName="patterns.delegation.office.ManagerTest" successCount="5" failureCount="2">
          <successTests>testDoCalculations</successTests>
          <successTests>testResourceCount</successTests>
          <successTests>testSeveralClerks</successTests>
          <successTests>testTaskCount</successTests>
          <successTests>testPrintDocuments</successTests>
          <failureTests>testMiddleManagementResourceCounts</failureTests>
          <failureTests>testNoEmployeesConstructor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585163646919" completion="1.0" testRunName="patterns.delegation.office.ManagerTest" successCount="7">
          <successTests>testDoCalculations</successTests>
          <successTests>testResourceCount</successTests>
          <successTests>testSeveralClerks</successTests>
          <successTests>testMiddleManagementResourceCounts</successTests>
          <successTests>testTaskCount</successTests>
          <successTests>testPrintDocuments</successTests>
          <successTests>testNoEmployeesConstructor</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585168102400" completion="1.0" testRunName="patterns.observable.StockTest" successCount="2">
          <successTests>testStockListener</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585168110542" completion="0.25" testRunName="patterns.observable.StockIndexTest" successCount="1" failureCount="1" errorCount="2">
          <successTests>testConstructor</successTests>
          <failureTests>testChangePrice</failureTests>
          <errorTests>testRemoveStock</errorTests>
          <errorTests>testAddStock</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585168155521" completion="0.25" testRunName="patterns.observable.StockIndexTest" successCount="1" failureCount="1" errorCount="2">
          <successTests>testConstructor</successTests>
          <failureTests>testChangePrice</failureTests>
          <errorTests>testRemoveStock</errorTests>
          <errorTests>testAddStock</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585168409096" completion="0.25" testRunName="patterns.observable.StockIndexTest" successCount="1" failureCount="3">
          <successTests>testConstructor</successTests>
          <failureTests>testRemoveStock</failureTests>
          <failureTests>testAddStock</failureTests>
          <failureTests>testChangePrice</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585168465135" completion="0.25" testRunName="patterns.observable.StockIndexTest" successCount="1" failureCount="3">
          <successTests>testConstructor</successTests>
          <failureTests>testRemoveStock</failureTests>
          <failureTests>testAddStock</failureTests>
          <failureTests>testChangePrice</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585168480917" completion="0.0" testRunName="patterns.observable.StockIndexTest" failureCount="1">
          <failureTests>testRemoveStock</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585168499737" completion="0.25" testRunName="patterns.observable.StockIndexTest" successCount="1" failureCount="3">
          <successTests>testConstructor</successTests>
          <failureTests>testRemoveStock</failureTests>
          <failureTests>testAddStock</failureTests>
          <failureTests>testChangePrice</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585168504277" completion="0.25" testRunName="patterns.observable.StockIndexTest" successCount="1" failureCount="3">
          <successTests>testConstructor</successTests>
          <failureTests>testRemoveStock</failureTests>
          <failureTests>testAddStock</failureTests>
          <failureTests>testChangePrice</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585168530922" completion="0.25" testRunName="patterns.observable.StockIndexTest" successCount="1" failureCount="3">
          <successTests>testConstructor</successTests>
          <failureTests>testRemoveStock</failureTests>
          <failureTests>testAddStock</failureTests>
          <failureTests>testChangePrice</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585168788682" completion="0.25" testRunName="patterns.observable.StockIndexTest" successCount="1" failureCount="3">
          <successTests>testConstructor</successTests>
          <failureTests>testRemoveStock</failureTests>
          <failureTests>testAddStock</failureTests>
          <failureTests>testChangePrice</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585168910009" completion="0.25" testRunName="patterns.observable.StockIndexTest" successCount="1" failureCount="3">
          <successTests>testConstructor</successTests>
          <failureTests>testRemoveStock</failureTests>
          <failureTests>testAddStock</failureTests>
          <failureTests>testChangePrice</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585169031757" completion="0.25" testRunName="patterns.observable.StockIndexTest" successCount="1" failureCount="3">
          <successTests>testConstructor</successTests>
          <failureTests>testRemoveStock</failureTests>
          <failureTests>testAddStock</failureTests>
          <failureTests>testChangePrice</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585169200162" completion="0.5" testRunName="patterns.observable.StockIndexTest" successCount="2" failureCount="2">
          <successTests>testAddStock</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testRemoveStock</failureTests>
          <failureTests>testChangePrice</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585169212446" completion="0.75" testRunName="patterns.observable.StockIndexTest" successCount="3" failureCount="1">
          <successTests>testRemoveStock</successTests>
          <successTests>testAddStock</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testChangePrice</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585169319543" completion="0.75" testRunName="patterns.observable.StockIndexTest" successCount="3" failureCount="1">
          <successTests>testRemoveStock</successTests>
          <successTests>testAddStock</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testChangePrice</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585169378129" completion="0.75" testRunName="patterns.observable.StockIndexTest" successCount="3" failureCount="1">
          <successTests>testRemoveStock</successTests>
          <successTests>testAddStock</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testChangePrice</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585169406896" completion="0.75" testRunName="patterns.observable.StockIndexTest" successCount="3" failureCount="1">
          <successTests>testRemoveStock</successTests>
          <successTests>testAddStock</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testChangePrice</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585169787522" completion="0.0" testRunName="patterns.observable.StockIndexTest" failureCount="1">
          <failureTests>testChangePrice</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585169833088" completion="0.75" testRunName="patterns.observable.StockIndexTest" successCount="3" failureCount="1">
          <successTests>testRemoveStock</successTests>
          <successTests>testAddStock</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testChangePrice</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585169871844" completion="0.75" testRunName="patterns.observable.StockIndexTest" successCount="3" failureCount="1">
          <successTests>testRemoveStock</successTests>
          <successTests>testAddStock</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testChangePrice</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585170229436" completion="0.75" testRunName="patterns.observable.StockIndexTest" successCount="3" failureCount="1">
          <successTests>testRemoveStock</successTests>
          <successTests>testAddStock</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testChangePrice</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585170440811" completion="0.75" testRunName="patterns.observable.StockIndexTest" successCount="3" failureCount="1">
          <successTests>testRemoveStock</successTests>
          <successTests>testAddStock</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testChangePrice</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585170872976" completion="0.75" testRunName="patterns.observable.StockIndexTest" successCount="3" failureCount="1">
          <successTests>testRemoveStock</successTests>
          <successTests>testAddStock</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testChangePrice</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585172767389" completion="0.75" testRunName="patterns.observable.StockIndexTest" successCount="3" failureCount="1">
          <successTests>testRemoveStock</successTests>
          <successTests>testAddStock</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testChangePrice</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585173198846" completion="1.0" testRunName="patterns.observable.StockIndexTest" successCount="4">
          <successTests>testRemoveStock</successTests>
          <successTests>testAddStock</successTests>
          <successTests>testChangePrice</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a">
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822983818" elementId="jdk.internal.util.Preconditions" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823116348" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823116348" elementId="encapsulation.CardDeck" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823145726" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823145726" elementId="encapsulation.CardDeck" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823164056" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823164056" elementId="encapsulation.CardDeck" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823174747" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823174747" elementId="encapsulation.CardDeck" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823175948" elementId="java.util.AbstractList&lt;E>" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823298374" elementId="encapsulation.CardDeck" action="resume.stepInto"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823298376" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823298376" elementId="encapsulation.CardDeck" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823298378" elementId="encapsulation.CardDeck" action="resume.stepInto"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823298385" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823298385" elementId="encapsulation.CardDeck" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823328798" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823342358" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823349225" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823352077" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823355912" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823358753" elementId="java.util.AbstractList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823362241" elementId="java.util.AbstractList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823364385" elementId="java.util.AbstractList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823367112" elementId="java.util.AbstractList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823368248" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823373568" elementId="java.util.ArrayList$SubList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823376996" elementId="java.util.ArrayList$SubList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823379192" elementId="java.util.ArrayList$SubList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823381025" elementId="java.util.ArrayList$SubList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823382273" elementId="java.util.ArrayList$SubList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823383339" elementId="java.util.ArrayList$SubList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823384307" elementId="java.util.ArrayList$SubList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823385184" elementId="java.util.ArrayList$SubList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823386059" elementId="java.util.ArrayList$SubList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823386503" elementId="java.util.ArrayList$SubList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823386882" elementId="java.util.ArrayList$SubList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823387231" elementId="java.util.ArrayList$SubList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823387611" elementId="java.util.ArrayList$SubList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823388039" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823390324" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823391775" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823393043" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823397323" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823398528" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823399195" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823400255" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823401278" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823402014" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823403255" elementId="java.util.ArrayList$SubList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823404214" elementId="java.util.ArrayList$SubList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823405090" elementId="java.util.ArrayList$SubList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823406877" elementId="java.util.ArrayList$SubList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823408607" elementId="java.util.Arrays" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823410271" elementId="java.util.Arrays" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823411141" elementId="java.util.Arrays" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823411618" elementId="java.util.Arrays" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823412174" elementId="java.util.Arrays" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823412569" elementId="java.util.Arrays" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823412894" elementId="java.util.Arrays" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823413258" elementId="java.util.Arrays" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823413678" elementId="java.lang.Math" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823415778" elementId="java.util.Arrays" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823416786" elementId="java.util.Arrays" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823417607" elementId="java.util.Arrays" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823418310" elementId="java.util.ArrayList$SubList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823420501" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823421873" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823422445" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823422781" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823423781" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823428378" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823429801" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823433069" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823435394" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823435996" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823436553" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823437207" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823437932" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823441043" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823443457" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823446324" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823446765" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823447885" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823454356" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823455275" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823455843" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823456376" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823456967" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823457627" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823458347" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823459260" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823459924" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823460536" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823464140" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823466500" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823467747" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823468990" elementId="java.util.Objects" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823469994" elementId="jdk.internal.util.Preconditions" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823470546" elementId="jdk.internal.util.Preconditions" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823471043" elementId="java.util.Objects" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823471966" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823473143" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823473470" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823473870" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823474499" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823475486" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823476854" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823478101" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823478995" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823479322" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823483729" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823489980" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823491823" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823499600" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823500488" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823539754" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823539754" elementId="encapsulation.CardDeck" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823556829" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823557545" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823558023" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823558321" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823558650" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823558922" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823559639" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823559809" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823559982" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823560150" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823560334" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823560522" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823560710" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823561528" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823569764" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823574396" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823575613" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823579364" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823583816" elementId="java.io.PrintStream" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823586724" elementId="java.io.PrintStream" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823587648" elementId="java.lang.String" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823589400" elementId="java.lang.Integer" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823590275" elementId="java.lang.Integer" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823590811" elementId="java.lang.Integer" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823591415" elementId="java.lang.Integer" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823591771" elementId="java.lang.Integer" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823592036" elementId="java.lang.Integer" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823592351" elementId="java.lang.Integer" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823592635" elementId="java.lang.Integer" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823592799" elementId="java.lang.Integer" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823592951" elementId="java.lang.Integer" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823593271" elementId="java.lang.Integer" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823593724" elementId="java.lang.Integer" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823593908" elementId="java.lang.Integer" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823594791" elementId="java.lang.Integer" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823595136" elementId="java.lang.Integer" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823595411" elementId="java.lang.Integer" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823595571" elementId="java.lang.Integer" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823595747" elementId="java.lang.Integer" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823596236" elementId="java.lang.Integer" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823596520" elementId="java.lang.Integer" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823597120" elementId="java.lang.Integer" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823597547" elementId="java.lang.Integer" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823598024" elementId="java.lang.Integer" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823598348" elementId="java.lang.Integer" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823599559" elementId="java.lang.Integer" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823601171" elementId="java.lang.String" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823603775" elementId="java.io.PrintStream" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823604992" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823715981" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823716652" elementId="encapsulation.CardDeck" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838414427" elementId="debugging.CoffeeCup" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838858171" elementId="debugging.CoffeeCup" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838869418" elementId="java.lang.Thread" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838871150" elementId="java.lang.Thread" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838872978" elementId="java.lang.Thread" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838873484" elementId="java.lang.Thread" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838873797" elementId="java.lang.Thread" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838875062" elementId="java.lang.ThreadGroup" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838876097" elementId="java.lang.ThreadGroup" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838876412" elementId="java.lang.ThreadGroup" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838876782" elementId="java.lang.ThreadGroup" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838877089" elementId="java.lang.Thread" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838877372" elementId="java.lang.ThreadGroup" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838878077" elementId="java.lang.ThreadGroup" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838878609" elementId="java.lang.ThreadGroup" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838879114" elementId="java.lang.ThreadGroup" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838970921" elementId="debugging.CoffeeCup" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839074854" elementId="debugging.CoffeeCupProgram" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839096417" elementId="debugging.CoffeeCup" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839106825" elementId="debugging.CoffeeCupProgram" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839114548" elementId="debugging.CoffeeCup" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839117358" elementId="debugging.CoffeeCup" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839118469" elementId="debugging.CoffeeCupProgram" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839121617" elementId="debugging.CoffeeCupProgram" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839126791" elementId="java.util.Random" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839132331" elementId="java.util.Random" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839133443" elementId="java.util.Random" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839134463" elementId="java.util.Random" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839135747" elementId="debugging.CoffeeCupProgram" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839137751" elementId="debugging.CoffeeCupProgram" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839285326" elementId="debugging.CoffeeCupProgram" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839303567" elementId="java.util.Random" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839307694" elementId="debugging.CoffeeCupProgram" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839309961" elementId="java.lang.Math" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839312457" elementId="debugging.CoffeeCupProgram" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839313321" elementId="debugging.CoffeeCup" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839335415" elementId="debugging.CoffeeCup" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839337992" elementId="debugging.CoffeeCup" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839349645" elementId="debugging.CoffeeCup" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839350969" elementId="debugging.CoffeeCupProgram" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839358487" elementId="java.util.Random" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839359959" elementId="debugging.CoffeeCupProgram" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839361104" elementId="debugging.CoffeeCupProgram" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839381535" elementId="debugging.CoffeeCupProgram" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839396394" elementId="debugging.CoffeeCupProgram" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839404245" elementId="java.util.Random" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839406913" elementId="debugging.CoffeeCupProgram" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839407531" elementId="java.lang.Math" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839408729" elementId="debugging.CoffeeCupProgram" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839409532" elementId="debugging.CoffeeCup" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839425287" elementId="debugging.CoffeeCup" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839450781" elementId="debugging.CoffeeCup" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839452119" elementId="debugging.CoffeeCup" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839455201" elementId="debugging.CoffeeCup" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839534530" elementId="debugging.CoffeeCup" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439261168" elementId="interfaces.BinaryComputingIterator" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439410375" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439418873" elementId="java.util.Collections$UnmodifiableCollection$1" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439421444" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439423834" elementId="java.util.Collections$UnmodifiableCollection$1" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439427001" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439428695" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439434100" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439436354" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439441785" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439446354" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439460826" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439464749" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439468922" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439470187" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439474181" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439474509" elementId="interfaces.BinaryComputingIterator" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439475374" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439476186" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439476488" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439476835" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439484077" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439487413" elementId="jdk.internal.reflect.NativeMethodAccessorImpl" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439492352" elementId="jdk.internal.reflect.DelegatingMethodAccessorImpl" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439493688" elementId="java.lang.reflect.Method" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439494818" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439497464" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439498168" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439500335" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439501176" elementId="junit.framework.TestResult$1" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439503456" elementId="junit.framework.TestResult" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439504299" elementId="junit.framework.TestResult" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439505076" elementId="junit.framework.TestResult" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439505639" elementId="junit.framework.TestResult" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439506219" elementId="junit.framework.TestResult" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439512534" elementId="junit.framework.TestResult" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439513684" elementId="junit.framework.TestResult" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439514534" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439515994" elementId="junit.framework.TestSuite" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439517047" elementId="junit.framework.TestSuite" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439518283" elementId="interfaces.BinaryComputingIterator" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439520539" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439523995" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439524414" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439524753" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439525259" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439527005" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439527220" elementId="interfaces.BinaryComputingIterator" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439527467" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439528293" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439528484" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439528676" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439530422" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439533052" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439533786" elementId="jdk.internal.reflect.NativeMethodAccessorImpl" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439587686" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439590490" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439592722" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439593292" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439593673" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439595551" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439596082" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439597018" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439597637" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439598015" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439598402" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439598721" elementId="junit.framework.TestResult" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439599325" elementId="junit.framework.TestResult" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439599780" elementId="junit.framework.TestResult" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439600162" elementId="junit.framework.TestResult" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439600643" elementId="junit.framework.TestResult" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439601010" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439601581" elementId="junit.framework.TestSuite" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439602065" elementId="junit.framework.TestSuite" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439602725" elementId="org.junit.internal.runners.JUnit38ClassRunner" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439603385" elementId="org.eclipse.jdt.internal.junit4.runner.JUnit4TestReference" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439605772" elementId="org.eclipse.jdt.internal.junit.runner.TestExecution" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439615096" elementId="org.eclipse.jdt.internal.junit.runner.TestExecution" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439617597" elementId="org.eclipse.jdt.internal.junit.runner.RemoteTestRunner" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439627540" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439628996" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439638791" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439649293" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439650523" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439653559" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439656163" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439662005" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439670769" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439682788" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439685684" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439691586" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439695730" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439698842" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439702335" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439706428" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439710935" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439712438" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439727990" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439729514" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439730516" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439733237" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439734640" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439736718" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439737309" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439737986" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439738913" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440167679" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440175083" elementId="org.eclipse.xtext.xbase.lib.DoubleExtensions" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440185645" elementId="java.lang.Double" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440188041" elementId="org.eclipse.xtext.xbase.lib.DoubleExtensions" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440189865" elementId="java.lang.Double" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440192193" elementId="org.eclipse.xtext.xbase.lib.DoubleExtensions" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440193017" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440199117" elementId="interfaces.BinaryComputingIteratorTest$$Lambda$99.178049969" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440207552" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440231448" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440237926" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440238493" elementId="java.lang.Double" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440252893" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440281633" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440302312" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440308917" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440314286" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440319362" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440330893" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440338908" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440361856" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440364479" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440366312" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440374367" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440375783" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440377922" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440379299" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440380853" elementId="java.util.Collections$UnmodifiableCollection$1" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440385749" elementId="java.util.ArrayList$Itr" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440387315" elementId="java.util.Collections$UnmodifiableCollection$1" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440388361" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440414924" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440419199" elementId="interfaces.BinaryComputingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440432307" elementId="interfaces.BinaryComputingIteratorTest" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169606628" elementId="patterns.observable.Stock" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169639367" elementId="java.lang.invoke.DirectMethodHandle" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169650490" elementId="java.lang.invoke.LambdaForm$DMH.1882554559" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169653001" elementId="java.lang.invoke.LambdaForm$MH.23211803" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169655287" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169661266" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169671540" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169672118" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169672446" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169672781" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169673117" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169673773" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169675267" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169768178" elementId="patterns.observable.Stock" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169877747" elementId="patterns.observable.StockIndexTest" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169954745" elementId="patterns.observable.StockIndexTest" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169975559" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170050536" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170051708" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170056799" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170099222" elementId="patterns.observable.StockIndexTest" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170107688" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170117952" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170125344" elementId="java.lang.invoke.DirectMethodHandle" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170126859" elementId="java.lang.invoke.LambdaForm$DMH.76432244" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170127946" elementId="java.lang.invoke.LambdaForm$DMH.76432244" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170128478" elementId="java.lang.invoke.LambdaForm$MH.1264413185" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170129707" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170147230" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170149099" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170163669" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170171313" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170191460" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170192379" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170207825" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170214638" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170215190" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170215949" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170216278" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170216643" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170217462" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170219670" elementId="junit.framework.TestResult" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170220509" elementId="junit.framework.TestResult" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170220983" elementId="junit.framework.TestResult" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170221374" elementId="junit.framework.TestResult" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170221721" elementId="junit.framework.TestResult" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170222265" elementId="junit.framework.TestResult" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170222649" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170223249" elementId="junit.framework.TestSuite" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170223821" elementId="junit.framework.TestSuite" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170224290" elementId="junit.framework.TestSuite" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170224834" elementId="junit.framework.TestSuite" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170225202" elementId="junit.framework.TestSuite" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170225459" elementId="junit.framework.TestSuite" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170225762" elementId="junit.framework.TestSuite" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170225969" elementId="org.junit.internal.runners.JUnit38ClassRunner" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170226187" elementId="org.eclipse.jdt.internal.junit4.runner.JUnit4TestReference" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170227054" elementId="org.eclipse.jdt.internal.junit4.runner.JUnit4TestReference" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170227685" elementId="org.eclipse.jdt.internal.junit4.runner.JUnit4TestReference" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170227942" elementId="org.eclipse.jdt.internal.junit4.runner.JUnit4TestReference" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170228216" elementId="org.eclipse.jdt.internal.junit.runner.TestExecution" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170228848" elementId="org.eclipse.jdt.internal.junit.runner.RemoteTestRunner" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170229438" elementId="org.eclipse.jdt.internal.junit.runner.RemoteTestRunner" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170229796" elementId="org.eclipse.jdt.internal.junit.runner.RemoteTestRunner" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170230276" elementId="org.eclipse.jdt.internal.junit.runner.RemoteTestRunner" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170240926" elementId="patterns.observable.StockIndexTest" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170248660" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170254845" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170256284" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170262043" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170283376" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170295356" elementId="patterns.observable.StockIndexTest" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170301203" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170302074" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170302645" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170304576" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170305824" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170328575" elementId="patterns.observable.StockIndex" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170330494" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170332331" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170506968" elementId="patterns.observable.StockIndexTest" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170512301" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170514561" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170516049" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170517653" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170521117" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170522480" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170522832" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170532591" elementId="patterns.observable.StockIndexTest" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170534360" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170535997" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170537663" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170538678" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170539519" elementId="java.util.ArrayList$Itr" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170553739" elementId="patterns.observable.StockIndexTest" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170555483" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170616971" elementId="patterns.observable.StockIndex" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170630994" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170652893" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170658999" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170659704" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170660859" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170661643" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170662048" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170662484" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170663324" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170664068" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170674103" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170676699" elementId="patterns.observable.StockIndex" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170678931" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170681526" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170682155" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170683037" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170683341" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170683625" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170684000" elementId="jdk.internal.reflect.NativeMethodAccessorImpl" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170684287" elementId="jdk.internal.reflect.DelegatingMethodAccessorImpl" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170684987" elementId="java.lang.reflect.Method" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170685523" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170687131" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170687463" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170687875" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170688392" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170688747" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170689071" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170689423" elementId="junit.framework.TestResult$1" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170689943" elementId="junit.framework.TestResult" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170690279" elementId="junit.framework.TestResult" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170690595" elementId="junit.framework.TestResult" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170690839" elementId="junit.framework.TestResult" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170691051" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170691222" elementId="junit.framework.TestSuite" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170691424" elementId="junit.framework.TestSuite" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170691527" elementId="junit.framework.TestSuite" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170691625" elementId="java.util.Vector$Itr" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170691937" elementId="junit.framework.TestSuite" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170692238" elementId="patterns.observable.StockIndexTest" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170864545" elementId="patterns.observable.StockIndex" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170870138" elementId="patterns.observable.StockIndexTest" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170923782" elementId="patterns.observable.Stock" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170927747" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170929241" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170937508" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170939291" elementId="java.util.ArrayList$Itr" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170947903" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170950082" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585171022853" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585171022853" elementId="patterns.observable.Stock" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585171035369" elementId="patterns.observable.Stock" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585171038802" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585171040003" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585171042550" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585171159839" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585171160657" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585171161299" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585171177334" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585171178374" elementId="patterns.observable.StockIndexTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585172695663" elementId="patterns.observable.StockIndex" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585172708653" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585172728432" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585172731559" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585172741873" elementId="java.util.ArrayList&lt;E>" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585172742396" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585172757038" elementId="patterns.observable.Stock" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585172757523" elementId="patterns.observable.StockIndex" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585172761967" elementId="patterns.observable.Stock" action="suspend.breakpoint"/>
      </proposals>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a">
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822269205" elementId="no.hal.learning.exercise.ui.commands.OpenExerciseView" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822331637" elementId="org.eclipse.jdt.junit.junitShortcut.run" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822389311" elementId="no.hal.learning.exercise.ui.commands.OpenExerciseView" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822404015" elementId="org.eclipse.jdt.junit.junitShortcut.run" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822458955" elementId="org.eclipse.jdt.junit.junitShortcut.run" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822507573" elementId="org.eclipse.debug.ui.commands.DebugLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822524309" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822546951" elementId="org.eclipse.jdt.debug.ui.localJavaShortcut.debug" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822568394" elementId="org.eclipse.ui.externaltools.ExternalToolMenuDelegateToolbar" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822581620" elementId="org.eclipse.jdt.debug.ui.commands.ToggleTracepoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822595677" elementId="org.eclipse.jdt.debug.ui.commands.AddClassPrepareBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822602374" elementId="org.eclipse.jdt.debug.ui.localJavaShortcut.debug" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822659632" elementId="org.eclipse.debug.ui.commands.OpenRunConfigurations" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822678643" elementId="org.eclipse.debug.ui.commands.OpenDebugConfigurations" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822718568" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822722029" elementId="org.eclipse.debug.ui.commands.DebugLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822734615" elementId="org.eclipse.ui.edit.text.contentAssist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822737558" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822739296" elementId="org.eclipse.debug.ui.commands.DebugLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822773719" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822777435" elementId="org.eclipse.ui.edit.text.select.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822784884" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822786941" elementId="org.eclipse.ui.edit.text.scroll.lineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822791178" elementId="org.eclipse.jdt.ui.edit.text.java.goto.next.member" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822804966" elementId="org.eclipse.ui.edit.text.smartEnterInverse" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822806762" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822807306" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822812079" elementId="org.eclipse.ui.file.properties" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822818574" elementId="org.eclipse.ui.file.properties" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822822179" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822823377" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822827288" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822828717" elementId="org.eclipse.debug.ui.commands.DebugLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822875239" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822878088" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822881135" elementId="org.eclipse.ui.edit.text.contentAssist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822883448" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822883674" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822898222" elementId="org.eclipse.ui.edit.text.contentAssist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822913325" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822914740" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822918517" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822919300" elementId="org.eclipse.debug.ui.commands.DebugLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822977789" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580822981949" elementId="org.eclipse.debug.ui.commands.DebugLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823116196" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823119216" elementId="org.eclipse.debug.ui.commands.DebugLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823139972" elementId="org.eclipse.ui.edit.text.contentAssist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823145547" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823149035" elementId="org.eclipse.debug.ui.commands.DebugLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823163919" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823165880" elementId="org.eclipse.debug.ui.commands.DebugLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823173225" elementId="org.eclipse.debug.ui.commands.DebugLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823216355" elementId="org.eclipse.ui.perspectives.showPerspective" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823216355" elementId="org.eclipse.jdt.ui.JavaPerspective" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823234600" elementId="no.hal.learning.exercise.ui.commands.OpenExerciseView" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823239994" elementId="no.hal.learning.exercise.ui.commands.OpenExerciseView" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823254275" elementId="org.eclipse.debug.ui.commands.RunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823297456" elementId="org.eclipse.debug.ui.commands.RunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823328795" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823342355" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823349222" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823352074" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823355910" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823358750" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823362238" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823364382" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823367109" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823368245" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823373564" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823376993" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823379189" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823381022" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823382269" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823383336" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823384304" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823385180" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823386056" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823386500" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823386880" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823387228" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823387608" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823388036" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823390320" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823391772" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823393040" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823397320" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823398525" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823399192" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823400252" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823401275" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823402011" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823403251" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823404211" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823405087" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823406874" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823408603" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823410268" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823411139" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823411615" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823412171" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823412567" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823412891" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823413255" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823413675" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823415775" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823416783" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823417603" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823418307" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823420498" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823421870" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823422442" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823422778" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823423778" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823428374" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823429798" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823433066" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823435390" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823435994" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823436550" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823437205" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823437929" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823441038" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823443454" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823446318" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823446757" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823447877" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823454353" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823455272" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823455840" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823456372" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823456964" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823457625" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823458344" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823459256" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823459920" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823460532" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823464136" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823466492" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823467744" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823468988" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823469992" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823470544" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823471040" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823471964" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823473140" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823473467" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823473867" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823474495" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823475479" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823476839" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823478095" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823478983" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823479311" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823483723" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823489971" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823491814" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823499590" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823500478" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823500854" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823537904" elementId="org.eclipse.debug.ui.commands.RunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823556815" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823557528" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823558016" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823558315" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823558639" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823558912" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823559631" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823559799" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823559971" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823560143" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823560323" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823560511" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823560703" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823561523" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823569762" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823574394" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823575610" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823579362" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823583814" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823586721" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823587645" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823589397" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823590273" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823590809" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823591413" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823591769" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823592034" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823592349" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823592633" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823592797" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823592949" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823593269" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823593721" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823593905" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823594789" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823595134" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823595409" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823595569" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823595745" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823596234" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823596517" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823597117" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823597546" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823598021" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823598345" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823599557" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823601169" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823603773" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823604989" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823691946" elementId="org.eclipse.debug.ui.commands.RunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823715971" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823716642" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823720887" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823733490" elementId="org.eclipse.jdt.junit.junitShortcut.run" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823805027" elementId="org.eclipse.egit.ui.team.SimplePush" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823844467" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823866916" elementId="org.eclipse.egit.ui.team.Push" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823912081" elementId="org.eclipse.egit.ui.team.ConfigurePush" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580823992749" elementId="org.eclipse.egit.ui.team.Push" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580824003247" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580824006583" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580824015778" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580824018802" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580824022414" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580824026254" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580824086744" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580824105869" elementId="org.eclipse.egit.ui.team.ConfigurePush" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580824114114" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580824117217" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580824178363" elementId="org.eclipse.ui.file.properties" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580832799798" elementId="org.eclipse.egit.ui.team.Pull" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580832837022" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580832883176" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580832887241" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580832954443" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580832963676" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580832966953" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580832970023" elementId="org.eclipse.egit.ui.team.PullWithOptions" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580832997697" elementId="org.eclipse.egit.ui.team.PullWithOptions" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580833316899" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580835308433" elementId="no.hal.learning.exercise.ui.commands.OpenExerciseView" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838392259" elementId="org.eclipse.debug.ui.commands.DebugLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838412463" elementId="org.eclipse.debug.ui.commands.DebugLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838825477" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838856285" elementId="org.eclipse.debug.ui.commands.DebugLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838869415" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838871148" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838872976" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838873482" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838873795" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838875058" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838876094" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838876410" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838876779" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838877087" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838877370" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838878075" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838878606" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838879111" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838879830" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580838969131" elementId="org.eclipse.debug.ui.commands.DebugLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839074748" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839094695" elementId="org.eclipse.debug.ui.commands.DebugLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839106822" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839114545" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839117353" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839118466" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839121614" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839126789" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839132328" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839133441" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839134461" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839135745" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839137748" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839285312" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839303564" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839307690" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839309959" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839312454" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839313319" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839335410" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839337989" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839349641" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839350965" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839358485" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839359956" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839361096" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839381523" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839396382" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839404242" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839406910" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839407529" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839408726" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839409529" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839425285" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839450778" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839452115" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839455199" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839534527" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839536043" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839555804" elementId="no.hal.learning.exercise.ui.commands.OpenExerciseView" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1580839754865" elementId="org.eclipse.ui.ide.showInSystemExplorer" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582662073144" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582662109034" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582662109720" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582662112690" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582662287655" elementId="org.eclipse.ui.edit.cut" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582662289062" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582662345314" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582662361253" elementId="org.eclipse.jdt.junit.junitShortcut.run" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582662376352" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582662378760" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582662411748" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582662413013" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582662500145" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582662501857" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582662723120" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582662724559" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582662733756" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582662734849" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582662758364" elementId="org.eclipse.ui.edit.findNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582662782389" elementId="org.eclipse.ui.ide.showInSystemExplorer" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583366391371" elementId="org.eclipse.ui.ide.showInSystemExplorer" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583366518103" elementId="no.hal.learning.exercise.ui.commands.OpenExerciseView" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583366785562" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583367122504" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583367243505" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583367244533" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583367380234" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583367422517" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583367426592" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583367443061" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583367470818" elementId="org.eclipse.m2e.core.ui.command.updateProject" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583367515709" elementId="org.eclipse.ui.edit.text.showInformation" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583367657442" elementId="org.eclipse.ui.file.properties" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583367675567" elementId="org.eclipse.jdt.junit.junitShortcut.run" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583367804705" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583367807167" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583367831973" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583367839145" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583367904090" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583367954828" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583367965771" elementId="org.eclipse.jdt.junit.junitShortcut.run" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583367987904" elementId="org.eclipse.jdt.junit.junitShortcut.run" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583367997782" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583367999590" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368040961" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368045175" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368045989" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368084729" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368085176" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368085610" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368112049" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368189688" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368193308" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368210619" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368213964" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368262687" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368278391" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368303268" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368320193" elementId="org.eclipse.ui.edit.selectAll" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368320589" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368322325" elementId="org.eclipse.ui.edit.selectAll" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368322873" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368323660" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368337524" elementId="org.eclipse.jdt.junit.junitShortcut.run" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368350323" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368375557" elementId="org.eclipse.jdt.ui.edit.text.java.rename.element" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368379179" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368398163" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368398952" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368747966" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368755737" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368756055" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368851221" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368851785" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368852567" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368890020" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368890397" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368890715" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368891047" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368891376" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368891875" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368892259" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368892711" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368893214" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583368893651" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369002765" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369012119" elementId="org.eclipse.jdt.junit.junitShortcut.run" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369059062" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369062236" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369141600" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369143128" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369148612" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369282072" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369291283" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369293585" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369295882" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369296068" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369296390" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369296652" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369296940" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369297316" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369297983" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369298448" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369299265" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369299820" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369300327" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369300923" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369301360" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369302099" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369302505" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369345632" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369347909" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369368439" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369370279" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369384531" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369393281" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583369500715" elementId="org.eclipse.ui.file.refresh" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583429329729" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583429375810" elementId="no.hal.learning.exercise.ui.commands.OpenExerciseView" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583429564150" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583429564309" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583429564743" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583429593840" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583429596479" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583436964847" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583436983425" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583437199954" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583437322066" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583437323813" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583437386160" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583437387556" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583437440289" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583437440651" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583437441012" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583437441393" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583437442818" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583437443233" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583437443624" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583437443988" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583437444731" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583437446580" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583437450930" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583437491487" elementId="org.eclipse.ui.edit.cut" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583437492887" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583438528983" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583438531036" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583438583315" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583438626442" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583438737258" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439034876" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439045456" elementId="org.eclipse.jdt.junit.junitShortcut.run" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439102811" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439105255" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439238475" elementId="AUTOGEN:::org.eclipse.jdt.internal.ui.CompilationUnitEditor.ruler.actions/org.eclipse.jdt.internal.ui.javaeditor.JavaSelectRulerAction" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439246305" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439258378" elementId="org.eclipse.jdt.junit.junitShortcut.debug" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439410370" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439418869" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439421439" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439423830" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439426997" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439428685" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439434096" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439436332" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439441768" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439446200" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439460822" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439464735" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439468901" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439470182" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439474174" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439474503" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439475365" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439476170" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439476473" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439476825" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439484073" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439487409" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439492348" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439493684" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439494812" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439497460" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439498164" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439500332" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439501172" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439503452" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439504296" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439505072" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439505636" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439506216" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439512531" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439513663" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439514531" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439515991" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439517043" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439518251" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439520535" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439523991" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439524399" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439524735" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439525255" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439526998" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439527214" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439527458" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439528278" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439528466" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439528666" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439530419" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439533046" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439533782" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439553475" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439570031" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439571806" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439573745" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439585192" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439590471" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439592715" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439593286" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439593666" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439595542" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439596074" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439597014" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439597634" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439598010" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439598398" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439598718" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439599322" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439599626" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439600158" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439600633" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439601006" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439601577" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439602062" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439602706" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439603382" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439605753" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439615093" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439617594" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439625203" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439628992" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439638528" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439649278" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439650519" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439653555" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439656159" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439662002" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439670766" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439682769" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439685680" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439691573" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439695716" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439698833" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439702332" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439706416" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439710920" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439712435" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439727987" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439729511" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439730513" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439733218" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439734634" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439736714" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439737306" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439737978" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439738903" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439763641" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583439766717" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440163099" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440174843" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440185642" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440188038" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440189862" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440192190" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440193014" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440199110" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440207549" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440231444" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440237923" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440238490" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440250507" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440256913" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440261722" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440277304" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440279491" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440302308" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440308915" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440314271" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440319359" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440330882" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440338901" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440359298" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440364472" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440366303" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440372145" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440375779" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440377915" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440379287" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440380851" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440385746" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440387311" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440388358" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440414921" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440419019" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440430202" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440436329" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440444036" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440463929" elementId="org.eclipse.jdt.junit.junitShortcut.run" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440477417" elementId="org.eclipse.ui.edit.selectAll" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440501505" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440508832" elementId="org.eclipse.ui.ide.showInSystemExplorer" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440563441" elementId="org.eclipse.ui.file.refresh" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440704408" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440704844" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440758330" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583440777536" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583442230478" elementId="org.eclipse.ui.file.refresh" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583442235234" elementId="org.eclipse.ui.file.refresh" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583442236726" elementId="org.eclipse.ui.file.refresh" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1583442238866" elementId="org.eclipse.ui.file.refresh" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585161171593" elementId="no.hal.learning.exercise.ui.commands.OpenExerciseView" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585161191674" elementId="org.eclipse.jdt.junit.junitShortcut.run" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585161208064" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585161210602" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585161497412" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585161499256" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585161511919" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585161512601" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585161527083" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585161536360" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585161538157" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585161542657" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585161544741" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585161560935" elementId="org.eclipse.jdt.junit.junitShortcut.run" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585161761256" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585161765226" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585161812301" elementId="org.eclipse.ui.edit.cut" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585161814392" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585161818033" elementId="org.eclipse.ui.edit.cut" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585161819704" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585161837651" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585161839278" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585162326876" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585162466927" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585162467460" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585162623854" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585162630086" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585162785289" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585162795474" elementId="org.eclipse.jdt.junit.junitShortcut.run" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585162816936" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585162818789" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585162961796" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585163046333" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585163632396" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585163644450" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164002089" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164004992" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164005676" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164252779" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164264332" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164315239" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164316427" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164413351" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164415251" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164415828" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164416454" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164449346" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164450840" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164502712" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164504729" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164533328" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164535142" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164607495" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164609922" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164623826" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164654453" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164665217" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164693656" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164769368" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164771488" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164775131" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164802559" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164907395" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164908073" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164912187" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164922947" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164925717" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164931709" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585164947665" elementId="org.eclipse.ui.edit.findNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585166532542" elementId="org.eclipse.ui.file.properties" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585166548951" elementId="org.eclipse.ui.edit.text.smartEnter" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585166575655" elementId="org.eclipse.jdt.ui.edit.text.java.create.getter.setter" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585166598178" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585166626501" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585166629151" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585166753620" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585166774385" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585166778949" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585166782704" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585166809142" elementId="AUTOGEN:::org.eclipse.jdt.internal.ui.CompilationUnitEditor.ruler.actions/org.eclipse.jdt.internal.ui.javaeditor.JavaSelectRulerAction" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585166869078" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585167061307" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585167061995" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585167062705" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585167063262" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585167171843" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585167483435" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585167491152" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585167500064" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585167520413" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585167677954" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585167700487" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585167708845" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585167865423" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585167865758" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585167869275" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585167985733" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585168004364" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585168048593" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585168071586" elementId="no.hal.learning.exercise.ui.commands.OpenExerciseView" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585168100083" elementId="org.eclipse.jdt.junit.junitShortcut.run" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585168108542" elementId="org.eclipse.jdt.junit.junitShortcut.run" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585168141908" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585168148931" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585168153291" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585168275004" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585168399780" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585168400304" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585168404622" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585168407327" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585168445219" elementId="AUTOGEN:::org.eclipse.jdt.internal.ui.CompilationUnitEditor.ruler.actions/org.eclipse.jdt.internal.ui.javaeditor.JavaSelectRulerAction" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585168456868" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585168462970" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585168497209" elementId="org.eclipse.jdt.junit.junitShortcut.run" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585168525259" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585168780758" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585168786503" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585168791114" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585168793185" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585168903057" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585168907554" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585168924632" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585168926300" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169026867" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169029173" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169084064" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169162838" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169180237" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169185460" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169195929" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169197631" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169208972" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169210550" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169310586" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169317148" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169374674" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169376093" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169402567" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169571312" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169573057" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169592041" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169599794" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169639282" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169650485" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169652999" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169655283" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169661263" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169671531" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169672114" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169672442" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169672778" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169673113" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169673769" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169675262" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169716435" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169736150" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169755964" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169766230" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169779252" elementId="org.eclipse.debug.ui.commands.Terminate" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169782889" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169785511" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169830975" elementId="org.eclipse.jdt.junit.junitShortcut.run" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169866447" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169869519" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169914286" elementId="org.eclipse.debug.ui.commands.Terminate" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169916460" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169943091" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169945415" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169947969" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585169975513" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170050533" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170051705" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170056792" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170061584" elementId="org.eclipse.debug.ui.commands.Terminate" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170107685" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170117949" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170125279" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170126856" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170127944" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170128476" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170129704" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170147227" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170149095" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170163666" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170171310" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170191457" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170192376" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170207820" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170214631" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170215183" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170215947" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170216275" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170216639" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170217459" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170219667" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170220507" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170220875" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170221371" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170221719" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170222259" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170222647" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170223247" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170223819" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170224287" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170224823" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170225195" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170225447" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170225755" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170225967" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170226183" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170227038" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170227682" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170227938" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170228214" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170228846" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170229434" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170229794" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170230270" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170234031" elementId="org.eclipse.debug.ui.commands.Terminate" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170248613" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170254841" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170256281" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170262040" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170283371" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170288577" elementId="org.eclipse.debug.ui.commands.Terminate" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170301158" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170302070" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170302642" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170304574" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170305822" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170328573" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170330492" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170332328" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170400430" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170425704" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170428087" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170431248" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170512298" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170514558" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170516046" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170517650" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170521109" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170522477" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170522829" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170526590" elementId="org.eclipse.debug.ui.commands.Terminate" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170534357" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170535993" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170537660" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170538676" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170539516" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170545462" elementId="org.eclipse.debug.ui.commands.Terminate" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170555479" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170609973" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170612165" elementId="org.eclipse.debug.ui.commands.Terminate" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170630991" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170652890" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170658997" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170659701" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170660857" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170661637" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170662045" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170662481" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170663321" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170664065" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170674101" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170676696" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170678928" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170681524" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170682152" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170683032" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170683336" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170683620" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170683997" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170684285" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170684984" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170685520" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170687128" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170687460" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170687872" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170688388" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170688744" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170689068" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170689420" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170689940" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170690276" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170690592" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170690832" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170691048" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170691219" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170691421" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170691524" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170691622" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170691935" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170692004" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170692007" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170692232" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170692233" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170692234" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170695341" elementId="org.eclipse.debug.ui.commands.Terminate" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170740693" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170741698" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170811055" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170838993" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170839424" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170840499" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170845335" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170870137" elementId="org.eclipse.debug.ui.commands.Resume" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170872971" elementId="org.eclipse.debug.ui.commands.Resume" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170880989" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170889688" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170891512" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170892453" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170906244" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170927743" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170929238" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170937501" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170939289" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170947900" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585170950080" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585171022589" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585171028571" elementId="org.eclipse.debug.ui.commands.Terminate" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585171038800" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585171039999" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585171042547" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585171159837" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585171160653" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585171161296" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585171177332" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585171178372" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585172685544" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585172688416" elementId="org.eclipse.debug.ui.commands.Terminate" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585172708651" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585172728430" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585172731557" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585172741869" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585172742393" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585172757036" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585172757520" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585172761966" elementId="org.eclipse.debug.ui.commands.Resume" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585172767384" elementId="org.eclipse.debug.ui.commands.Resume" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585172806419" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585172808267" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585172920927" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585172927590" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585172945429" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585172959275" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585172977733" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585172978124" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585173000727" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585173143699" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585173146801" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585173184537" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585173190253" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
      </proposals>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a">
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822269048" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822269064" elementId="no.hal.learning.exercise.views.ExerciseView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822269065" elementId="no.hal.learning.exercise.views.ExerciseView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822269132" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822300609" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822300623" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822306807" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822306816" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822318646" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822318660" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822326271" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822326279" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822336273" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822336382" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822337730" elementId="no.hal.learning.exercise.views.ExerciseView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822337748" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822337764" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822350944" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822350945" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822350963" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822352327" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822352328" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822352359" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822353893" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822353914" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822357234" elementId="org.eclipse.mylyn.tasks.ui.views.tasks" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822357238" elementId="org.eclipse.mylyn.tasks.ui.views.tasks" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822357358" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822357396" elementId="org.eclipse.mylyn.tasks.ui.views.tasks" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822358626" elementId="org.eclipse.mylyn.tasks.ui.views.tasks" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822358627" elementId="org.eclipse.ui.views.ContentOutline" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822358651" elementId="org.eclipse.ui.views.ContentOutline" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822368634" elementId="org.eclipse.ui.views.ContentOutline" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822368640" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822368902" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822368903" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822368955" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822375880" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822375881" elementId="no.hal.learning.exercise.views.ExerciseView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822375902" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822379152" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822379152" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822379170" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822380212" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822380213" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822380244" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822381113" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822381113" elementId="no.hal.learning.exercise.views.ExerciseView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822381137" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822383073" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822383077" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822389228" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822389243" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822400803" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822400807" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822405820" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822405954" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822407724" elementId="no.hal.learning.exercise.views.ExerciseView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822407743" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822407762" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822416006" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822416006" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822416037" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822418726" elementId="org.eclipse.ui.DefaultTextEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/encapsulation/Card.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822418731" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822418762" elementId="org.eclipse.ui.DefaultTextEditor" action="activated" inputUri="platform:/resource/ovinger/tests/encapsulation/Card.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822420666" elementId="org.eclipse.ui.DefaultTextEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/encapsulation/Card.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822420689" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822420758" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822422588" elementId="no.hal.learning.exercise.views.ExerciseView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822422607" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822422647" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822425590" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822425590" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822425609" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822426221" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822426221" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822426251" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822426603" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822426605" elementId="net.sourceforge.plantuml.eclipse.views.PlantUmlView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822426632" elementId="net.sourceforge.plantuml.eclipse.views.PlantUmlView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822431967" elementId="net.sourceforge.plantuml.eclipse.views.PlantUmlView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822431968" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822431998" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822434064" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822434084" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822451094" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822451102" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822460797" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822462598" elementId="no.hal.learning.exercise.views.ExerciseView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822462619" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822462636" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822466275" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822466276" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822466306" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822510641" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822510644" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822510680" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822512028" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822512030" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822512063" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822513991" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822513991" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822514013" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822514855" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822514856" elementId="no.hal.learning.exercise.views.ExerciseView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822514875" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822516620" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822516621" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822516639" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822519774" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/encapsulation/Card.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822519838" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822519878" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/encapsulation/Card.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822525178" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/encapsulation/Card.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822525209" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822525277" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822555010" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822555019" elementId="org.eclipse.ui.views.ContentOutline" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822557906" elementId="org.eclipse.ui.views.ContentOutline" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822557948" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822558669" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822558677" elementId="org.eclipse.ui.views.ContentOutline" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822562293" elementId="org.eclipse.ui.views.ContentOutline" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822562308" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822608694" elementId="no.hal.learning.exercise.views.ExerciseView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822608714" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822608755" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822612963" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822612964" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822612983" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822615800" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822615815" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822726621" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822726630" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822728431" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822728445" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822743347" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822743357" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822748084" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822748099" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822851532" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822851566" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822870011" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822870026" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822994137" elementId="org.eclipse.debug.ui.DebugView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822994140" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822994303" elementId="org.eclipse.debug.ui.VariableView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822994305" elementId="org.eclipse.debug.ui.VariableView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822994352" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822995543" elementId="org.eclipse.debug.ui.ExpressionView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822995604" elementId="org.eclipse.debug.ui.BreakpointView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822995662" elementId="org.eclipse.jdt.debug.ui.DisplayView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822995932" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="opened" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Preconditions.class5134365186623226154.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822995938" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Preconditions.class5134365186623226154.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822996050" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580822996061" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="activated" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Preconditions.class5134365186623226154.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823004765" elementId="org.eclipse.ui.views.ProblemView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823004768" elementId="org.eclipse.ui.views.ProblemView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823004808" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="deactivated" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Preconditions.class5134365186623226154.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823004838" elementId="org.eclipse.ui.views.ProblemView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823011222" elementId="org.eclipse.ui.views.ProblemView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823011223" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823011243" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823015529" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823015580" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823015631" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823178669" elementId="org.eclipse.ui.views.ProblemView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823178698" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823178738" elementId="org.eclipse.ui.views.ProblemView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823180352" elementId="org.eclipse.ui.views.ProblemView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823180353" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823180372" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823182696" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823182696" elementId="org.eclipse.ui.views.ProblemView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823182733" elementId="org.eclipse.ui.views.ProblemView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823183345" elementId="org.eclipse.ui.views.ProblemView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823183347" elementId="org.eclipse.jdt.debug.ui.DisplayView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823183416" elementId="org.eclipse.jdt.debug.ui.DisplayView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823184282" elementId="org.eclipse.jdt.debug.ui.DisplayView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823184283" elementId="org.eclipse.ui.views.ProblemView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823184317" elementId="org.eclipse.ui.views.ProblemView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823197763" elementId="org.eclipse.ui.views.ProblemView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823197764" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823197784" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823198852" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823198869" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823216109" elementId="org.eclipse.jdt.ui.PackageExplorer" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823216110" elementId="org.eclipse.jdt.ui.PackageExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823216176" elementId="org.eclipse.mylyn.tasks.ui.views.tasks" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823216199" elementId="org.eclipse.ui.views.ContentOutline" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823216224" elementId="org.eclipse.ui.views.ProblemView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823219127" elementId="org.eclipse.jdt.ui.JavadocView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823219131" elementId="org.eclipse.jdt.ui.JavadocView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823219175" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823219215" elementId="org.eclipse.jdt.ui.JavadocView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823221332" elementId="org.eclipse.jdt.ui.SourceView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823221337" elementId="org.eclipse.jdt.ui.SourceView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823221372" elementId="org.eclipse.jdt.ui.JavadocView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823221378" elementId="org.eclipse.jdt.ui.SourceView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823222620" elementId="org.eclipse.jdt.ui.SourceView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823222628" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823227838" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="opened" inputUri="platform:/resource/ovinger/tests/encapsulation/Card.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823227848" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/encapsulation/Card.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823227854" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823227874" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="activated" inputUri="platform:/resource/ovinger/tests/encapsulation/Card.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823232093" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="deactivated" inputUri="platform:/resource/ovinger/tests/encapsulation/Card.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823232101" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823234504" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823234507" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823234508" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823234512" elementId="no.hal.learning.exercise.views.ExerciseView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823234552" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823234569" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823234579" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823235835" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823235852" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="activated" inputUri="platform:/resource/ovinger/tests/encapsulation/Card.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823235964" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823236027" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="deactivated" inputUri="platform:/resource/ovinger/tests/encapsulation/Card.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823236040" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823236116" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="closed" inputUri="platform:/resource/ovinger/tests/encapsulation/Card.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823236889" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823236900" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823239955" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823239971" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823246189" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823246204" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823255780" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823303120" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823308511" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823311561" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823311581" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823311620" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823331471" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823331472" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823331492" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823333961" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823333965" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823333989" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823342494" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ArrayList.class1423997865657499724.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823349276" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823355964" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ArrayList.class1423997865657499724.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823390378" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823391825" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ArrayList.class3012933710655311351.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823394346" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823394347" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823394366" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823395333" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823395339" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823395361" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823423831" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823433123" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ArrayList.class14703432608791744307.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823435445" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823437258" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ArrayList.class14703432608791744307.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823437983" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823443507" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ArrayList.class14703432608791744307.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823446815" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823454404" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ArrayList.class14703432608791744307.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823460586" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823467798" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ArrayList.class15438413143557341076.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823474548" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823487667" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823487668" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823487687" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823488445" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823488451" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823488473" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823491925" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823491925" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823491957" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823516075" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823516152" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823541477" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823545504" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823548712" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823548733" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823548774" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823571150" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823571151" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823571170" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823574443" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ArrayList.class17022375881652307498.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823575656" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823578332" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823578335" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823578357" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823581608" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823581609" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823581627" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823582889" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823582891" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823582912" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823583928" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/PrintStream.class2423047695231721176.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823605039" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823605171" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823605172" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823605199" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823608453" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823608470" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823700182" elementId="no.hal.learning.exercise.views.ExerciseView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823700208" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823700252" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823707686" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823707689" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823707709" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823716131" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823716131" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823716159" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823723442" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823723458" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823725114" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823725134" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823725172" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823730112" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823730120" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823735488" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823735488" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823735517" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823740630" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/encapsulation/CardDeckTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823740692" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823740745" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/encapsulation/CardDeckTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823742597" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/encapsulation/CardDeckTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823742627" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823742694" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823745603" elementId="org.eclipse.ui.DefaultTextEditor" action="closed" inputUri="platform:/resource/ovinger/tests/encapsulation/Card.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823748202" elementId="org.eclipse.ui.DefaultTextEditor" action="closed" inputUri="platform:/resource/ovinger/tests/encapsulation/CardDeck.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823748655" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/encapsulation/CardDeckTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823749794" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="closed" inputUri="file:C:/Users/kehof/AppData/Local/Temp/PrintStream.class2423047695231721176.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823752234" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823752272" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823752325" elementId="org.eclipse.jdt.ui.PackageExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823752330" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823752339" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823752387" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823752460" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823766307" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823766380" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823770231" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823770247" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823787919" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580823787931" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580824896355" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580824896430" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580832723682" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580832723695" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580832788843" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580832789110" elementId="org.eclipse.team.sync.views.SynchronizeView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580832789111" elementId="org.eclipse.team.sync.views.SynchronizeView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580832789238" elementId="org.eclipse.team.sync.views.SynchronizeView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580832793505" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580832793510" elementId="org.eclipse.team.sync.views.SynchronizeView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580832793520" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580832793556" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580832793571" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580832793578" elementId="org.eclipse.team.sync.views.SynchronizeView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580833287835" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="opened" inputUri="platform:/resource/ovinger/tests/encapsulation/Card.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580833287844" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/encapsulation/Card.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580833287849" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580833287862" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="activated" inputUri="platform:/resource/ovinger/tests/encapsulation/Card.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580833298393" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580833298450" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="deactivated" inputUri="platform:/resource/ovinger/tests/encapsulation/Card.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580833315454" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580833315525" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="closed" inputUri="platform:/resource/ovinger/tests/encapsulation/Card.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580833317699" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580833317728" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/encapsulation/Card.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580833317796" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/encapsulation/Card.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580833320674" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/encapsulation/Card.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580833320702" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580833320767" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580833334079" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580833334148" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580833342030" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580833342036" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580833364739" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580833364808" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580835298188" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580835298263" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580835308322" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580835308323" elementId="no.hal.learning.exercise.views.ExerciseView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580835308368" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580835314401" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580835314409" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580835314634" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580835314635" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580835314751" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580835314805" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580835315471" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580835315482" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580835315719" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580835315720" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580835315837" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580835315891" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580835317519" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580835317548" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580835317613" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580835835888" elementId="org.eclipse.debug.ui.BreakpointView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580835836008" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580835836056" elementId="org.eclipse.debug.ui.BreakpointView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580835854506" elementId="org.eclipse.debug.ui.BreakpointView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580835854507" elementId="org.eclipse.debug.ui.VariableView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580835854529" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580835870758" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580835870828" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838397259" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838402233" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838402257" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838402311" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838406038" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838406062" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838406115" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838408397" elementId="org.eclipse.jdt.debug.ui.DisplayView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838408412" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838408462" elementId="org.eclipse.jdt.debug.ui.DisplayView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838409304" elementId="org.eclipse.jdt.debug.ui.DisplayView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838409305" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838409322" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838410145" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838410193" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838410244" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838414455" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838414900" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838414925" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838415004" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838862851" elementId="org.eclipse.debug.ui.BreakpointView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838862871" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838862920" elementId="org.eclipse.debug.ui.BreakpointView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838867470" elementId="org.eclipse.debug.ui.BreakpointView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838867512" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838869590" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="opened" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Thread.class12225757437301439881.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838869597" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Thread.class12225757437301439881.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838869724" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838869735" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="activated" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Thread.class12225757437301439881.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838883960" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838884008" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="deactivated" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ThreadGroup.class4048404871617916626.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838884021" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838884086" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="closed" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ThreadGroup.class4048404871617916626.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838900168" elementId="org.eclipse.debug.ui.VariableView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838900186" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838900241" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838902854" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838902907" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838965381" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838965403" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838965455" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838971453" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838971480" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838971578" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838975838" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838975861" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838975914" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838984862" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838984890" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838992440" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838992487" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580838992565" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839052623" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839052647" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839052703" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839104114" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839104123" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839113804" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839113840" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839114620" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839118506" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839126971" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="opened" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Random.class14514141205128791280.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839126974" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Random.class14514141205128791280.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839135788" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839283650" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839283732" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839303624" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839303651" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Random.class14514141205128791280.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839303735" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="activated" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Random.class14514141205128791280.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839307707" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="deactivated" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Random.class14514141205128791280.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839307736" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839307824" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839310098" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839310133" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Math.class2529586834334470406.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839310218" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="activated" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Math.class2529586834334470406.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839312472" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="deactivated" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Math.class2529586834334470406.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839312500" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839312589" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839313372" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839313395" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839313471" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839338650" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839338678" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839348499" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839348564" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839350986" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839351010" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839351096" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839358600" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839358629" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Random.class3533261269461575624.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839358707" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="activated" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Random.class3533261269461575624.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839359973" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="deactivated" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Random.class3533261269461575624.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839359999" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839360090" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839364729" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839364758" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839378384" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839378461" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839404298" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839404324" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Random.class3533261269461575624.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839404397" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="activated" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Random.class3533261269461575624.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839406927" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="deactivated" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Random.class3533261269461575624.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839406953" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839407041" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839407642" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839407673" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Math.class12386012798641541298.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839407754" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="activated" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Math.class12386012798641541298.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839408742" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="deactivated" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Math.class12386012798641541298.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839408768" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839408857" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839409582" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839409605" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839409682" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839412929" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839412958" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839421494" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839421559" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839430315" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839430347" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839449427" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839449494" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839539150" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839539159" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839548028" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839548030" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839548056" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839555718" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839555722" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839555722" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839555725" elementId="no.hal.learning.exercise.views.ExerciseView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839555760" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839555780" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839555788" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839732945" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580839733017" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580856685006" elementId="net.sourceforge.plantuml.eclipse.views.PlantUmlView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580856685024" elementId="org.eclipse.jdt.ui.PackageExplorer" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580856685040" elementId="org.eclipse.jdt.ui.JavadocView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580856685062" elementId="org.eclipse.jdt.ui.SourceView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580856685074" elementId="org.eclipse.mylyn.tasks.ui.views.tasks" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580856685091" elementId="org.eclipse.ui.views.ContentOutline" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580856685118" elementId="org.eclipse.debug.ui.BreakpointView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580856685130" elementId="org.eclipse.debug.ui.ExpressionView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580856685144" elementId="org.eclipse.debug.ui.VariableView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580856685157" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/encapsulation/Card.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580856685181" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/encapsulation/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580856685202" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580856685231" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="closed" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Math.class12386012798641541298.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580856685248" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580856685266" elementId="org.eclipse.ui.console.ConsoleView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580856685277" elementId="org.eclipse.ui.views.ProblemView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580856685285" elementId="org.eclipse.jdt.debug.ui.DisplayView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580856685293" elementId="no.hal.learning.exercise.views.ExerciseView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580856685321" elementId="org.eclipse.debug.ui.DebugView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580856685330" elementId="org.eclipse.jdt.junit.ResultView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580856685346" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1580856685348" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582660127347" elementId="no.hal.learning.exercise.views.ExerciseView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582660127788" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582661823250" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582661823330" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/objectstructures/CoffeCupTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582661978936" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/objectstructures/CoffeCupTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582661978954" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582661990209" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582661990226" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/objectstructures/CoffeCupTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662124206" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/objectstructures/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662124217" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/objectstructures/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662124221" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/objectstructures/CoffeCupTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662124240" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/objectstructures/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662148578" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/objectstructures/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662148582" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/objectstructures/CoffeCupTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662148597" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/objectstructures/CoffeCupTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662348259" elementId="org.eclipse.jdt.junit.ResultView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662348262" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662348403" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/objectstructures/CoffeCupTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662348444" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662350482" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662350485" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662350519" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662363212" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662363214" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662363248" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662363394" elementId="org.eclipse.ui.console.ConsoleView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662374152" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662374171" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/objectstructures/CoffeCupTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662378674" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/objectstructures/CoffeCupTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662378711" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662387585" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662387607" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/objectstructures/CoffeCupTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662501761" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/objectstructures/CoffeCupTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662501798" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662653678" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662653753" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/objectstructures/CoffeCupTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662734745" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/objectstructures/CoffeCupTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662734785" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662742131" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662742150" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/objectstructures/CoffeCupTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662767545" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662767571" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/objectstructures/CoffeCupTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582662767605" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582663456273" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582663456339" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/objectstructures/CoffeCupTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582663468172" elementId="org.eclipse.jdt.junit.ResultView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582663468195" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582663468210" elementId="org.eclipse.ui.console.ConsoleView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582663468229" elementId="no.hal.learning.exercise.views.ExerciseView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582663468257" elementId="org.eclipse.debug.ui.VariableView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582663468274" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/objectstructures/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582663468290" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/objectstructures/CoffeCupTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582663468291" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/objectstructures/CoffeCupTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583358292632" elementId="no.hal.learning.exercise.views.ExerciseView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583358293222" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/objectstructures/CoffeCupTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583358407557" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/objectstructures/CoffeCupTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583358407579" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583361833764" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583361833840" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/objectstructures/CoffeCupTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583361953855" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/objectstructures/CoffeCupTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583361953932" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583366503414" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="opened" inputUri="platform:/resource/ovinger/tests/interfaces/twitter/TwitterComparison.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583366503426" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/twitter/TwitterComparison.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583366503433" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583366503457" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/twitter/TwitterComparison.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583366506447" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/objectstructures/CoffeCupTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583366506449" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/twitter/TwitterComparison.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583366506459" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/objectstructures/CoffeCupTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583366506540" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="closed" inputUri="platform:/resource/ovinger/tests/interfaces/twitter/TwitterComparison.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583366507269" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/objectstructures/CoffeCupTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583366507276" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583366517904" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583366517948" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583366568067" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583366568170" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/objectstructures/CoffeCupTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583366568327" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/objectstructures/Tweet.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583366568346" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/objectstructures/Tweet.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583366568349" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/objectstructures/CoffeCupTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583366568358" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/objectstructures/Tweet.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583366568384" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/objectstructures/CoffeCupTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583366601521" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583366601539" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583366601543" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/objectstructures/Tweet.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583366601557" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583366808360" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583366808367" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583366830966" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583366830968" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583366830978" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583366831027" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367057200" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367057203" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367057215" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367061431" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367061433" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367061445" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367062482" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367062484" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367062494" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367063893" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367063895" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367063906" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367065581" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367065583" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367065594" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367066757" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367066759" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367066769" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367386100" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367386106" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367395648" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/tests/interfaces/twitter/UserNameComparatorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367395649" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/twitter/UserNameComparatorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367395658" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367395704" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/twitter/UserNameComparatorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367407131" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/twitter/UserNameComparatorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367407137" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367438787" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367438792" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367438845" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367447895" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367447897" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/twitter/UserNameComparatorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367447907" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/twitter/UserNameComparatorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367451280" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/twitter/UserNameComparatorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367451286" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367482956" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367482998" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/twitter/UserNameComparatorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367484014" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/twitter/UserNameComparatorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367484021" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367502570" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/tests/objectstructures/TwitterAccountTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367502571" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/objectstructures/TwitterAccountTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367502581" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367502634" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/objectstructures/TwitterAccountTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367520443" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/objectstructures/TwitterAccountTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367527778" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/objectstructures/TwitterAccountTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367527784" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367658174" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367658190" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/objectstructures/TwitterAccountTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367666324" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/objectstructures/TwitterAccountTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367666330" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367677165" elementId="org.eclipse.jdt.junit.ResultView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367677326" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367677328" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367677411" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367677520" elementId="org.eclipse.ui.console.ConsoleView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367677906" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367677964" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/objectstructures/TwitterAccountTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367678035" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/twitter/UserNameComparatorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367678037" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/objectstructures/TwitterAccountTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367678047" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/twitter/UserNameComparatorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367678109" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/objectstructures/TwitterAccountTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367680101" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/twitter/UserNameComparatorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367680111" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367682719" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367682724" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367682757" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367685681" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367685683" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/twitter/UserNameComparatorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367685693" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/twitter/UserNameComparatorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367711227" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/twitter/UserNameComparatorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367711229" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367711239" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367715950" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367715957" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367719167" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367719168" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367719204" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367762546" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowerCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367762547" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowerCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367762556" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367762607" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowerCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367765590" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowerCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367765596" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367793447" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TweetsCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367793448" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TweetsCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367793457" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367793508" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TweetsCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367798012" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TweetsCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367798014" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367798026" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367799922" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367799924" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TweetsCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367799934" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TweetsCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367800947" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TweetsCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367800948" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367800959" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367805331" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367805342" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TweetsCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367805354" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TweetsCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367828831" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TweetsCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367828833" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367828846" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367832841" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367832844" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowerCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367832854" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowerCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367833849" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowerCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367833851" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/twitter/UserNameComparatorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367833861" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/twitter/UserNameComparatorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367834694" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/twitter/UserNameComparatorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367834696" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TweetsCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367834707" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TweetsCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367836072" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/interfaces/twitter/UserNameComparatorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367905830" elementId="org.eclipse.ui.views.ProblemView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367963250" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TweetsCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367963256" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367967522" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367967524" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367967563" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367982296" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367982298" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367982333" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367989391" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367989394" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367989433" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367993318" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367993337" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TweetsCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367999501" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TweetsCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583367999521" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368005212" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowerCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368005217" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368005245" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowerCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368006501" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowerCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368006503" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368006512" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368200229" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368200231" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowerCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368200242" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowerCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368202964" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowerCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368202965" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368202975" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368211283" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368211285" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowerCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368211295" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowerCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368229661" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowerCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368229663" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368229674" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368264154" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368264157" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowerCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368264170" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowerCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368285492" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowerCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368285494" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368285504" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368288511" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368288513" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowerCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368288525" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowerCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368298559" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368298560" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368298564" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowerCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368298572" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368312988" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368312990" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368313001" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368316803" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368316805" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368316815" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368319194" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368319196" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368319206" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368321542" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368321544" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368321554" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368325704" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368325707" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowerCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368325719" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowerCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368331268" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowerCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368331289" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368331373" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368331377" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368331384" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368331426" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368331478" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowerCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368331493" elementId="org.eclipse.jdt.junit.ResultView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368333916" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowerCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368333921" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368338958" elementId="org.eclipse.jdt.junit.ResultView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368339148" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368339149" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368339231" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368348948" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368348966" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowerCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368358536" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368358568" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowerCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368358584" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368378419" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368378421" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368378453" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368389423" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368389429" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368389478" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368390732" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368390735" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368390747" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368398853" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368398889" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368402577" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TweetsCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368402582" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368402615" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TweetsCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368404083" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TweetsCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368404085" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowersCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368404096" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowersCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368405784" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowersCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368405787" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368405797" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368418264" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368418266" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368418276" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368421210" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368421213" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368421220" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368421248" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368422571" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/objectstructures/Tweet.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368423510" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368423512" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583368423523" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369004533" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369004573" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369005092" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369005092" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369005127" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369013760" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369013765" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369013817" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369016396" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369016413" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369035970" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369036007" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369036048" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369053293" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369053294" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369053303" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369053352" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369056334" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369056336" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TweetsCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369056346" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TweetsCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369059371" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TweetsCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369059373" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369059384" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369115166" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369115168" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowersCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369115179" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowersCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369116236" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowersCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369116238" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369116250" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369230957" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369230959" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369230970" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369236449" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369236451" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369236462" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369277278" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369277280" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowersCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369277290" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowersCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369292230" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowersCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369292232" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369292243" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369362922" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369362924" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369362935" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369369078" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369369081" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369369092" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369498600" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369498648" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369505520" elementId="org.eclipse.ui.console.ConsoleView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369505527" elementId="org.eclipse.ui.views.ProblemView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369505544" elementId="no.hal.learning.exercise.views.ExerciseView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369505572" elementId="org.eclipse.debug.ui.VariableView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369505582" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/interfaces/twitter/UserNameComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369505619" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/interfaces/twitter/FollowersCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369505635" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TweetsCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369505645" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369505662" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369505695" elementId="org.eclipse.jdt.junit.ResultView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369505714" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583369505716" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583422784230" elementId="no.hal.learning.exercise.views.ExerciseView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583422784626" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583429106255" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583429106302" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583429260046" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583429260079" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583429260080" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583429260110" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583429261604" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TweetsCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583429261635" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TweetsCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583429261636" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583429261663" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TweetsCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583429344197" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TweetsCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583429344242" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583429353501" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583429353539" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583429360745" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583429360785" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583429375679" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583429375696" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583429381356" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583429381370" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TweetsCountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583429383254" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583429383260" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583429386073" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccountComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583429387510" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583429387515" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583429408280" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583429408384" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583429408386" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583429408468" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583438627753" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583438627763" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583438630656" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583438630674" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439041997" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439042009" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439047531" elementId="org.eclipse.jdt.junit.ResultView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439047829" elementId="org.eclipse.ui.console.ConsoleView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439047862" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439047989" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439047994" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439065611" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439065639" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439105150" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439105208" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439113105" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439113146" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439113156" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439117523" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439117535" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439117536" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439117608" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439147548" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439147556" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439147566" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439229454" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439229463" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439232788" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439232814" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439238351" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="opened" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Iterator.class11386783286625003280.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439238357" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439238380" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="activated" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Iterator.class11386783286625003280.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439238410" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Iterator.class11386783286625003280.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439241409" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="deactivated" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Iterator.class11386783286625003280.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439241427" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439241477" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439241521" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="closed" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Iterator.class11386783286625003280.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439255102" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439255111" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439261171" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439261223" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439261229" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439261425" elementId="org.eclipse.debug.ui.DebugView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439261428" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439261539" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439261551" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439262393" elementId="org.eclipse.debug.ui.ExpressionView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439262485" elementId="org.eclipse.debug.ui.BreakpointView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439262738" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439262862" elementId="org.eclipse.jdt.debug.ui.DisplayView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439268475" elementId="org.eclipse.ui.views.ProblemView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439268561" elementId="org.eclipse.ui.views.ProblemView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439268563" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439268581" elementId="org.eclipse.ui.views.ProblemView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439270887" elementId="org.eclipse.ui.views.ProblemView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439270921" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439270925" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439276522" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439276633" elementId="org.eclipse.jdt.debug.ui.DisplayView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439276636" elementId="org.eclipse.jdt.debug.ui.DisplayView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439287348" elementId="org.eclipse.jdt.debug.ui.DisplayView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439287385" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439287389" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439299622" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439299668" elementId="org.eclipse.ui.views.ProblemView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439299672" elementId="org.eclipse.ui.views.ProblemView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439300709" elementId="org.eclipse.ui.views.ProblemView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439300740" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439300743" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439417695" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439417752" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439419405" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="opened" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Collections.class2734522642782060887.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439419435" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Collections.class2734522642782060887.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439421501" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439423971" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Collections.class2734522642782060887.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439427059" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439446478" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439474628" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439476959" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439487690" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/NativeMethodAccessorImpl.class17792373458613266133.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439499714" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439499808" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="activated" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Method.class11822769098999510747.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439508142" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="deactivated" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Method.class11822769098999510747.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439508152" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439509604" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestResult.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439509631" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestResult.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439509640" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="closed" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Method.class11822769098999510747.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439511730" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439511753" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestResult.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439518419" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestSuite.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439518475" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439518488" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439520644" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439520724" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439520737" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439527329" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439527382" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439527393" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439528779" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439528862" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439528873" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439534034" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="opened" inputUri="file:C:/Users/kehof/AppData/Local/Temp/NativeMethodAccessorImpl.class18014863673801321387.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439534040" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439534057" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="activated" inputUri="file:C:/Users/kehof/AppData/Local/Temp/NativeMethodAccessorImpl.class18014863673801321387.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439534076" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/NativeMethodAccessorImpl.class18014863673801321387.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439534089" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestSuite.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439541487" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="deactivated" inputUri="file:C:/Users/kehof/AppData/Local/Temp/NativeMethodAccessorImpl.class18014863673801321387.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439541506" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439541584" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439541660" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="closed" inputUri="file:C:/Users/kehof/AppData/Local/Temp/NativeMethodAccessorImpl.class18014863673801321387.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439544563" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439544645" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439547734" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439547734" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439547800" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439554884" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439554892" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439554902" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439557928" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439557928" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439558025" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439568969" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439568996" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439585088" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439585168" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439587692" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439587742" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439587752" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439594224" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestCase.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439594238" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestCase.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439603508" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439603529" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439603540" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/org/junit/internal/runners/JUnit38ClassRunner.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439606786" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439606801" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439606895" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439606962" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439607042" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439607107" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439615121" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439615125" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439615137" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439615151" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439616833" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439616899" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439616976" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439617041" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439617702" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439617707" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439617720" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439617733" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439619390" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439619454" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439619534" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439619599" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439622914" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439622995" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439624069" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439624069" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439624103" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439627544" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439627596" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439627608" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439662123" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439668091" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439668149" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439698898" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439730626" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439733283" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439738663" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestCase.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439738675" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestCase.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439746389" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439746492" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439747953" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439747953" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439748041" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439750082" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439750089" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439750101" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439752996" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439752996" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439753066" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439760658" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439760658" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439760751" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439765750" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439765824" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439988246" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439988567" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439989884" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583439989894" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440026321" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440026321" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440026397" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440058635" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440058635" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440058688" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440059298" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440059333" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440059338" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440064687" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440064714" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440074320" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440074328" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440074338" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440088629" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440088636" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440088646" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440158831" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440158839" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440158850" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440159102" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440159114" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440164334" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440164343" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440167683" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440167737" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440167747" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440169928" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440169987" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440176321" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="C:/Users/kehof/.m2/repository/org/eclipse/xtext/org.eclipse.xtext.xbase.lib/2.9.1/org.eclipse.xtext.xbase.lib-2.9.1-sources.jar/org/eclipse/xtext/xbase/lib/DoubleExtensions.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440185965" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="opened" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Double.class6258216793321383701.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440185980" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Double.class6258216793321383701.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440185989" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="C:/Users/kehof/.m2/repository/org/eclipse/xtext/org.eclipse.xtext.xbase.lib/2.9.1/org.eclipse.xtext.xbase.lib-2.9.1-sources.jar/org/eclipse/xtext/xbase/lib/DoubleExtensions.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440188284" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="C:/Users/kehof/.m2/repository/org/eclipse/xtext/org.eclipse.xtext.xbase.lib/2.9.1/org.eclipse.xtext.xbase.lib-2.9.1-sources.jar/org/eclipse/xtext/xbase/lib/DoubleExtensions.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440188301" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="C:/Users/kehof/.m2/repository/org/eclipse/xtext/org.eclipse.xtext.xbase.lib/2.9.1/org.eclipse.xtext.xbase.lib-2.9.1-sources.jar/org/eclipse/xtext/xbase/lib/DoubleExtensions.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440188309" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="closed" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Double.class6258216793321383701.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440190156" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="opened" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Double.class15248777957796768462.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440190173" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Double.class15248777957796768462.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440190182" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="C:/Users/kehof/.m2/repository/org/eclipse/xtext/org.eclipse.xtext.xbase.lib/2.9.1/org.eclipse.xtext.xbase.lib-2.9.1-sources.jar/org/eclipse/xtext/xbase/lib/DoubleExtensions.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440192435" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="C:/Users/kehof/.m2/repository/org/eclipse/xtext/org.eclipse.xtext.xbase.lib/2.9.1/org.eclipse.xtext.xbase.lib-2.9.1-sources.jar/org/eclipse/xtext/xbase/lib/DoubleExtensions.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440192451" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="C:/Users/kehof/.m2/repository/org/eclipse/xtext/org.eclipse.xtext.xbase.lib/2.9.1/org.eclipse.xtext.xbase.lib-2.9.1-sources.jar/org/eclipse/xtext/xbase/lib/DoubleExtensions.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440192460" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="closed" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Double.class15248777957796768462.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440193122" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440207659" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440226468" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440226555" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440231552" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440231608" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440231618" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440238720" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="opened" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Double.class9490558145157233252.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440238727" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440238746" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="activated" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Double.class9490558145157233252.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440238764" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Double.class9490558145157233252.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440238779" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="C:/Users/kehof/.m2/repository/org/eclipse/xtext/org.eclipse.xtext.xbase.lib/2.9.1/org.eclipse.xtext.xbase.lib-2.9.1-sources.jar/org/eclipse/xtext/xbase/lib/DoubleExtensions.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440243407" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="deactivated" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Double.class9490558145157233252.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440243439" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440244994" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440245038" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="activated" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Double.class9490558145157233252.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440245114" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="deactivated" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Double.class9490558145157233252.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440245134" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440245190" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440245242" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="closed" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Double.class9490558145157233252.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440247926" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440247926" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440247989" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440252897" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440252967" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440252979" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440256032" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440256053" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440258080" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440258138" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440260032" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440260033" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440260058" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440271452" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440271524" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440279396" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440279458" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440281638" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440281692" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440281702" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440284803" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440284863" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440299818" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440299901" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440302443" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440302498" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440302508" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440305344" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440305386" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440350559" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440350644" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440356272" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440356272" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440356296" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440361861" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440361921" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440361931" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440362088" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440364965" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestCase.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440364977" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestCase.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440368826" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440368843" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440370646" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440370646" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440370672" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440374372" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440374426" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440374436" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440374607" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440375898" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440381082" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="opened" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Collections.class1179598282174252226.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440381100" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Collections.class1179598282174252226.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440381109" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestCase.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440388417" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440399016" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440399040" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440426608" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440426665" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440428634" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440428634" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440428658" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440432315" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440432370" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440432381" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440432562" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440435534" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440435555" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440438607" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440438666" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440440353" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440440354" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440440378" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440450967" elementId="no.hal.learning.exercise.views.ExerciseView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440450968" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440451002" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440455734" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440455735" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440455765" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440456705" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440456748" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440456751" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440465849" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440465901" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440465905" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440473480" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440473505" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440474722" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440474736" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440474785" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440474830" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440497212" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440497272" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440497328" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440497338" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440497402" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440497402" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440497520" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440497572" elementId="org.eclipse.jdt.junit.ResultView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440505384" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440505396" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440560615" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440560701" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440561502" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440561510" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440586420" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440586431" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440586432" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440586507" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440586946" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440586954" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440587239" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440587251" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440587252" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440587333" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440588337" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="closed" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Collections.class1179598282174252226.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440589031" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440593096" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440593105" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440603700" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440603721" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440620973" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440620980" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440620989" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440780710" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440780717" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440780728" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583440788330" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583441037542" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583441037552" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583441037564" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583442229054" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583442229146" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583442266627" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583442266709" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583442441169" elementId="org.eclipse.debug.ui.DebugView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583442441210" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583442441240" elementId="org.eclipse.ui.views.ProblemView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583442441250" elementId="org.eclipse.jdt.debug.ui.DisplayView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583442441258" elementId="no.hal.learning.exercise.views.ExerciseView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583442441307" elementId="org.eclipse.ui.console.ConsoleView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583442441321" elementId="org.eclipse.debug.ui.BreakpointView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583442441337" elementId="org.eclipse.debug.ui.ExpressionView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583442441367" elementId="org.eclipse.debug.ui.VariableView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583442441395" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583442441433" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1583442441434" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161171253" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161171368" elementId="no.hal.learning.exercise.views.ExerciseView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161171369" elementId="no.hal.learning.exercise.views.ExerciseView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161171458" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161188325" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161188329" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161193195" elementId="org.eclipse.jdt.junit.ResultView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161193429" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161193430" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161193511" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161193639" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161195810" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/tests/patterns/delegation/office/ClerkTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161195811" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/delegation/office/ClerkTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161195821" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161195867" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/delegation/office/ClerkTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161199244" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Clerk.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161199246" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/delegation/office/ClerkTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161199255" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Clerk.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161199305" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/patterns/delegation/office/ClerkTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161210510" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Clerk.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161210542" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161236976" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Printer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161236981" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161237026" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Printer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161365493" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Printer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161365494" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Clerk.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161365506" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Clerk.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161380712" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161380748" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Clerk.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161380778" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161385788" elementId="org.eclipse.ui.DefaultTextEditor" action="opened" inputUri="platform:/resource/ovinger/tests/patterns/delegation/office/Clerk.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161385800" elementId="org.eclipse.ui.DefaultTextEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/delegation/office/Clerk.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161385806" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161385866" elementId="org.eclipse.ui.DefaultTextEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/delegation/office/Clerk.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161426549" elementId="org.eclipse.ui.DefaultTextEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/delegation/office/Clerk.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161426569" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Printer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161426583" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Printer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161435395" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161435426" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Printer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161435462" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161447371" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161447392" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Printer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161461785" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Printer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161461794" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161465146" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161465165" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Printer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161499156" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Printer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161499190" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161511066" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161511087" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Printer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161544651" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Printer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161544685" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161548557" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161548578" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Printer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161554861" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161554889" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Printer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161554918" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161562883" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161562884" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161562925" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161592189" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161592210" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Printer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161765131" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Printer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161765165" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161790488" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161790506" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Printer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161839186" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Printer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161839222" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161842515" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Clerk.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161842521" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161842564" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Clerk.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161846219" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161846246" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Clerk.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161846274" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161862747" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161862748" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161862756" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585161862819" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162792514" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162792527" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162797498" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162797499" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162797556" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162804577" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162804610" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162818679" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162818732" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162844937" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/tests/patterns/delegation/office/ManagerTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162844939" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/delegation/office/ManagerTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162844954" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162845011" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/delegation/office/ManagerTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162855479" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162855495" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/delegation/office/ManagerTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162855506" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162855593" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/patterns/delegation/office/ManagerTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162874178" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162874192" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162876603" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/tests/patterns/delegation/office/ManagerTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162876605" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/delegation/office/ManagerTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162876620" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162876677" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/delegation/office/ManagerTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162904934" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162904937" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/delegation/office/ManagerTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162904948" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162905043" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/patterns/delegation/office/ManagerTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162905918" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162905963" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162906011" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162909086" elementId="org.eclipse.ui.DefaultTextEditor" action="opened" inputUri="platform:/resource/ovinger/tests/patterns/delegation/office/Manager.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162909105" elementId="org.eclipse.ui.DefaultTextEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/delegation/office/Manager.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162909117" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162909202" elementId="org.eclipse.ui.DefaultTextEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/delegation/office/Manager.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162917714" elementId="org.eclipse.ui.DefaultTextEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/delegation/office/Manager.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162917744" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585162917765" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585163643129" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585163643173" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585163643231" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585163649932" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585163649964" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585163662218" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585163662284" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585163662345" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585163674723" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585163674748" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585163696007" elementId="no.hal.learning.exercise.views.ExerciseView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585163696046" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585163696126" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585163701412" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585163701413" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585163701444" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585163702104" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585163702125" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166392635" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166392760" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166414044" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166414046" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166414068" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166414154" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166598760" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166598772" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166612932" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166612934" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166612952" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166613041" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166631461" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166631473" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166643861" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166643874" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166643926" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166761653" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166761667" elementId="org.eclipse.ui.DefaultTextEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/delegation/office/Manager.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166761689" elementId="org.eclipse.ui.DefaultTextEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/delegation/office/Manager.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166762966" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166762971" elementId="org.eclipse.ui.DefaultTextEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/delegation/office/Manager.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166762997" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166763072" elementId="org.eclipse.ui.DefaultTextEditor" action="closed" inputUri="platform:/resource/ovinger/tests/patterns/delegation/office/Manager.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166766240" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166766243" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Clerk.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166766265" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Clerk.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166767433" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Clerk.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166767436" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Printer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166767458" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Printer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166775225" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Printer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166775227" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166775249" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166776516" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166776519" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166776541" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166789871" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166789873" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Clerk.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166789894" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Clerk.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166792428" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Clerk.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166792430" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166792451" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166794527" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166794531" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166794549" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166803566" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166803569" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166803591" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166928135" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166928139" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166928159" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166933596" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166933599" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166933620" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166938352" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166938355" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166938376" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166939830" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166939833" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166939855" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166952173" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166952175" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166952196" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166953694" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166953698" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585166953720" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167175506" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167175520" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167230370" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167230371" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167230388" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167230474" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167522493" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167522497" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167522519" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167542927" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167542929" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167542948" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167543647" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167543650" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167543668" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167568792" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167568794" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167568815" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167572386" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167572389" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167572410" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167621521" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167621526" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167621547" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167622744" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167622746" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167622768" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167958673" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167958676" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167958697" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167961574" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167961577" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585167961598" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168067801" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168067903" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168071273" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168071274" elementId="no.hal.learning.exercise.views.ExerciseView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168071353" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168086351" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168086374" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168097663" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168097675" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168102335" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168102336" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168102392" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168104252" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168104253" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168104309" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168110478" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168110478" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168110533" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168128579" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168128613" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168153193" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168153249" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168160239" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168160272" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168343882" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168343993" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168390701" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168390809" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168407206" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168407266" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168423606" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168423641" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168425102" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168425116" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168432516" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168432547" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168445131" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168445136" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168445148" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168448381" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168448383" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168448404" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168462884" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168462942" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168490644" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168490644" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168490699" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168499665" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168499665" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168499729" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168509286" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168509319" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168511768" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168511800" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168511854" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168512727" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168512751" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168527327" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168527342" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168551535" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168551566" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168631396" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168631408" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168641976" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168642006" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168650497" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168650508" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168659337" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168659364" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168673598" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168673645" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168673698" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168678029" elementId="org.eclipse.ui.DefaultTextEditor" action="opened" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168678047" elementId="org.eclipse.ui.DefaultTextEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168678065" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168678149" elementId="org.eclipse.ui.DefaultTextEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168681520" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168681573" elementId="org.eclipse.ui.DefaultTextEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168681610" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168683472" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168683501" elementId="org.eclipse.ui.DefaultTextEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168752371" elementId="org.eclipse.ui.DefaultTextEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168752401" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168752419" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168763414" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168763428" elementId="org.eclipse.ui.DefaultTextEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168763445" elementId="org.eclipse.ui.DefaultTextEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168771022" elementId="org.eclipse.ui.DefaultTextEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168771053" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168771078" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168786381" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168786434" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168789966" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168789998" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168798357" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168798368" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168804663" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168804697" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168823630" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168823633" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168823651" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168828008" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168828011" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168828031" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168907438" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168907508" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168915818" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168915828" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168915899" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168917705" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168917707" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168917728" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168918820" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168918824" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168918845" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168921467" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168921469" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168921492" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168945269" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168945289" elementId="org.eclipse.ui.DefaultTextEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168945312" elementId="org.eclipse.ui.DefaultTextEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168997050" elementId="org.eclipse.ui.DefaultTextEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168997091" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585168997116" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169000506" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169000509" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169000531" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169029060" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169029118" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169040352" elementId="org.eclipse.ui.DefaultTextEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169040366" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169040422" elementId="org.eclipse.ui.DefaultTextEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169070899" elementId="org.eclipse.ui.DefaultTextEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169070929" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169070952" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169071944" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169071946" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169071967" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169080532" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169080534" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169080554" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169095235" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169095246" elementId="org.eclipse.ui.DefaultTextEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169095268" elementId="org.eclipse.ui.DefaultTextEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169104540" elementId="org.eclipse.ui.DefaultTextEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169104575" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169104600" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169197539" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169197600" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169202854" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169202888" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169210452" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169210519" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169222732" elementId="org.eclipse.ui.DefaultTextEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169222743" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169222794" elementId="org.eclipse.ui.DefaultTextEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169246372" elementId="org.eclipse.ui.DefaultTextEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169246401" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169246425" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169317065" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169317120" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169325590" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169325602" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169325652" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169327042" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169327048" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169327069" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169339835" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169339837" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169339854" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169341854" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169341859" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169341877" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169375983" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169376034" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169380658" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169380692" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169402443" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169402495" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169428962" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169428994" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169602418" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169602429" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169606765" elementId="org.eclipse.debug.ui.DebugView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169606769" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169606771" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169606889" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169607811" elementId="org.eclipse.debug.ui.ExpressionView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169607902" elementId="org.eclipse.debug.ui.BreakpointView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169608010" elementId="org.eclipse.jdt.debug.ui.DisplayView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169616382" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169616440" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169621647" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169621739" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169633537" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169633583" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169639759" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="opened" inputUri="file:C:/Users/kehof/AppData/Local/Temp/DirectMethodHandle.class10666261705945766793.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169639766" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/DirectMethodHandle.class10666261705945766793.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169650619" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169650632" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169650661" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="closed" inputUri="file:C:/Users/kehof/AppData/Local/Temp/DirectMethodHandle.class10666261705945766793.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169655371" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169661605" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="opened" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ArrayList.class9647471760539256796.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169661616" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ArrayList.class9647471760539256796.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169661641" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169675313" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169692051" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169692117" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169762423" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169762456" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169762493" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169768184" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169768185" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169768228" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169780130" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169780147" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169784263" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169784300" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169784336" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169797014" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169797037" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169809363" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169809372" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169820005" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169820005" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169820041" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169833032" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169833033" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169833082" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169846064" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169846083" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169847229" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169847239" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169849263" elementId="org.eclipse.ui.DefaultTextEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169849270" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169849300" elementId="org.eclipse.ui.DefaultTextEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169851231" elementId="org.eclipse.ui.DefaultTextEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169851251" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169851268" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169853248" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169853258" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169860067" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169860067" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169860081" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169860113" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169869376" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169869430" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169877754" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169877755" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169877803" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169894821" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169894864" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169915308" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169915365" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169950097" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169950136" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169950189" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169954749" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169954751" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169954792" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169959388" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585169959427" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170015862" elementId="org.eclipse.ui.DefaultTextEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170015870" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170015942" elementId="org.eclipse.ui.DefaultTextEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170017427" elementId="org.eclipse.ui.DefaultTextEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170017447" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170017466" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170021679" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170021681" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170021696" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170048182" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170048184" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170048199" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170057510" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestCase.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170057512" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestCase.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170057516" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170057533" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestCase.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170057563" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="closed" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ArrayList.class9647471760539256796.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170065977" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170065980" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestCase.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170065989" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170066080" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestCase.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170095007" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170095042" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170095095" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170099228" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170099230" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170099288" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170102155" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170102172" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170106010" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170106042" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170107773" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170125564" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="opened" inputUri="file:C:/Users/kehof/AppData/Local/Temp/DirectMethodHandle.class1505634788435705638.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170125569" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/DirectMethodHandle.class1505634788435705638.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170126948" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170126955" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170126970" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="closed" inputUri="file:C:/Users/kehof/AppData/Local/Temp/DirectMethodHandle.class1505634788435705638.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170129768" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170147438" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="opened" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ArrayList.class2535000894363732241.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170147442" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ArrayList.class2535000894363732241.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170147459" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170149136" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170171346" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170189540" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170189608" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170198907" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170198939" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170204636" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170204699" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170208313" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestCase.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170208315" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestCase.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170208318" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170208327" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestCase.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170208356" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="closed" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ArrayList.class2535000894363732241.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170226320" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170226330" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170226334" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/org/junit/internal/runners/JUnit38ClassRunner.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170226338" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170226367" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/org/junit/internal/runners/JUnit38ClassRunner.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170232326" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170232360" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170232372" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170234132" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170234141" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170240930" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170240932" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170240976" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170270767" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170270784" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170273780" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170273817" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170284004" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestCase.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170284005" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestCase.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170290118" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170290150" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170290214" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170295361" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170295362" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170295403" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170295697" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170314965" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170315005" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170328666" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170330525" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170335250" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170335312" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170354687" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170354689" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170354704" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170355722" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170355723" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170355737" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170436105" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170436140" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170436183" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170448166" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170448175" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170448234" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170449540" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170449549" elementId="org.eclipse.ui.DefaultTextEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170449564" elementId="org.eclipse.ui.DefaultTextEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170450303" elementId="org.eclipse.ui.DefaultTextEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170450327" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170450344" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170486313" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170486315" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170486330" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170490008" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170490010" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170490025" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170492928" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170492930" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170492945" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170503671" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170503680" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170506973" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170506974" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170507020" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170507304" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170512382" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170516188" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="opened" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ArrayList.class15657721013453443404.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170516192" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ArrayList.class15657721013453443404.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170516214" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestCase.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170517687" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170522863" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170528488" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170528488" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170528526" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170532596" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170532597" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170532642" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170534438" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170537749" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ArrayList.class15657721013453443404.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170538713" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170539601" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ArrayList.class15657721013453443404.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170548766" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170548766" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170548804" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170553743" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170553745" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170553788" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170554082" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170555564" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170557656" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170557705" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170576908" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170576915" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170576994" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170580215" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170580217" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170580232" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170612792" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170612829" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170612875" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170616976" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170616978" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170617024" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170622668" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170622707" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170630162" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170630224" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170631065" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170631069" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170631111" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170635508" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170635544" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170651957" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170652020" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170652970" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170652976" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ArrayList.class15657721013453443404.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170653017" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="activated" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ArrayList.class15657721013453443404.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170664091" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="deactivated" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ArrayList.class15657721013453443404.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170664097" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170664140" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170666744" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170666775" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170676732" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170678998" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170684126" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/NativeMethodAccessorImpl.class8267547207703508465.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170686193" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestCase.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170686197" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestCase.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170686215" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="closed" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Method.class18169443153916869081.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170691850" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="opened" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Vector.class15794339415568064827.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170691855" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Vector.class15794339415568064827.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170691884" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestSuite.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170692167" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestSuite.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170692171" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestSuite.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170692190" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="closed" inputUri="file:C:/Users/kehof/AppData/Local/Temp/Vector.class15794339415568064827.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170692533" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170693301" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170693368" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170697125" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170697127" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170697141" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170723692" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170723694" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170723713" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170725325" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170725326" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170725343" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170750766" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170750767" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170750781" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170815644" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170815645" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170815660" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170818638" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170818639" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170818654" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170822082" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170822083" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170822099" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170831972" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170831974" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170831986" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170848759" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170848761" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170848776" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170851755" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170851759" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170851774" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170858270" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170858306" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170858359" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170864552" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170864553" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170864622" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170864892" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170870231" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170877382" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170877398" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170882384" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170882393" elementId="org.eclipse.ui.DefaultTextEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170882405" elementId="org.eclipse.ui.DefaultTextEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170883492" elementId="org.eclipse.ui.DefaultTextEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170883512" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170883527" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170887429" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170887430" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170887449" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170893786" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170893789" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170893803" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170912256" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170912290" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170912326" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170914317" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170914339" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170920950" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170920960" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170923789" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170923790" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170923838" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170929376" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="opened" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ArrayList.class3452675873612558613.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170929380" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ArrayList.class3452675873612558613.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170929398" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="C:/Users/kehof/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestSuite.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170934553" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170934600" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170937533" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170939368" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ArrayList.class3452675873612558613.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170947930" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170979677" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585170979770" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585171031138" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585171031172" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585171031213" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585171035374" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585171035375" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585171035421" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585171040083" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ArrayList.class3452675873612558613.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585171042577" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585171050932" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585171050980" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585171161370" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585171175693" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585171175761" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585171181181" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585171181214" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172510709" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172510718" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172510808" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172527049" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172527051" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172527066" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172687268" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172687310" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172687357" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172695668" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172695669" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172695713" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172702484" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172702528" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172707707" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172707772" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172708731" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172708734" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172708774" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172712034" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172712071" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172728515" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="broughtToTop" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ArrayList.class3452675873612558613.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172742425" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172757554" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172762045" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172787796" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172787869" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172811932" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172811934" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172811949" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172812992" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172813002" elementId="org.eclipse.ui.DefaultTextEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172813016" elementId="org.eclipse.ui.DefaultTextEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172815665" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172815702" elementId="org.eclipse.ui.DefaultTextEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172815727" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172817102" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172817123" elementId="org.eclipse.ui.DefaultTextEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172855163" elementId="org.eclipse.ui.DefaultTextEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172855183" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172855201" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172857096" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172857106" elementId="org.eclipse.ui.DefaultTextEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172857120" elementId="org.eclipse.ui.DefaultTextEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172861833" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172861867" elementId="org.eclipse.ui.DefaultTextEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172861889" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172896941" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/tests/patterns/observable/ActualFuckingStockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172896962" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/ActualFuckingStockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172896977" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172897054" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ActualFuckingStockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172899025" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ActualFuckingStockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172899034" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172901336" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172901346" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172901401" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172921461" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172921469" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172923268" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/ActualFuckingStockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172923277" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172923304" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ActualFuckingStockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172938334" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ActualFuckingStockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172938342" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172945433" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172945449" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/patterns/observable/ActualFuckingStockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172948460" elementId="org.eclipse.ui.DefaultTextEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172948469" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172948497" elementId="org.eclipse.ui.DefaultTextEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172949506" elementId="org.eclipse.ui.DefaultTextEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172949526" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172949545" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172956989" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172956998" elementId="org.eclipse.ui.DefaultTextEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172957011" elementId="org.eclipse.ui.DefaultTextEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172958321" elementId="org.eclipse.ui.DefaultTextEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172958342" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585172958360" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173128722" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173128724" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173128740" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173130399" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173130401" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173130415" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173145820" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173145822" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173145837" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173192751" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173192786" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173192830" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173200985" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173201004" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173291136" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173291175" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173291219" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173381478" elementId="org.eclipse.jdt.debug.ui.DisplayView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173381487" elementId="no.hal.learning.exercise.views.ExerciseView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173381528" elementId="org.eclipse.ui.console.ConsoleView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173381545" elementId="org.eclipse.debug.ui.BreakpointView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173381555" elementId="org.eclipse.debug.ui.ExpressionView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173381571" elementId="org.eclipse.debug.ui.VariableView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173381588" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173381599" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Employee.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173381611" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Clerk.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173381641" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Printer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173381653" elementId="org.eclipse.ui.DefaultTextEditor" action="closed" inputUri="platform:/resource/ovinger/tests/patterns/delegation/office/Clerk.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173381665" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/patterns/delegation/office/Manager.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173381700" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/patterns/observable/Stock.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173381765" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/patterns/observable/StockListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173381779" elementId="org.eclipse.ui.DefaultTextEditor" action="closed" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndex.jextest"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173381791" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/patterns/observable/StockIndexTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173381822" elementId="org.eclipse.jdt.ui.ClassFileEditor" action="closed" inputUri="file:C:/Users/kehof/AppData/Local/Temp/ArrayList.class3452675873612558613.class"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173381854" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/patterns/observable/StockIndex.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173381926" elementId="org.eclipse.debug.ui.DebugView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173381940" elementId="org.eclipse.jdt.junit.ResultView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173381957" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585173381958" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="closed"/>
      </proposals>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
