package org.uma.data;

import com.intuit.karate.junit5.Karate;

import org.junit.jupiter.api.TestInstance;
import org.junit.jupiter.api.TestInstance.Lifecycle;

@TestInstance(Lifecycle.PER_CLASS)
class FunctionalTest {
    
    @Karate.Test
    Karate loadData() {
        return Karate.run("features/loadData").relativeTo(getClass());
    }
}
