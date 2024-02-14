package Practise;

import com.intuit.karate.junit5.Karate;
//import org.junit.jupiter.api.Test;
//import org.junit.runner.RunWith;

//@RunWith(Karate.class)
public class TestRunner {
   @Karate.Test
    Karate getAPITest(){
       return Karate.run("postapi").relativeTo(getClass());

    }
}
