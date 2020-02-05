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
      </proposals>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
