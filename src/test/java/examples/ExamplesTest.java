package examples;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

class ExamplesTest {

//    @Test
//    void testParallel() {
//        Results results = Runner.path("classpath:examples")
//                //.outputCucumberJson(true)
//                .parallel(5);
//        assertEquals(0, results.getFailCount(), results.getErrorMessages());
//    }

//    @Test
//    void testParallel() {
//        Results results = Runner.path("classpath:examples")
//                .tags("@Smoke")
//                //.outputCucumberJson(true)
//                .parallel(1);
//        assertEquals(0, results.getFailCount(), results.getErrorMessages());
//    }

    @Karate.Test
    Karate testUsers() {
        return Karate.run("classpath:examples/airline/IgnoreExample.feature")
                //.tags("@run")
                //.tags("@Sanity", "~@Smoke")
                .relativeTo(getClass());
    }
}
