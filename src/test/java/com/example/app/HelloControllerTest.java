package com.example.app;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class HelloControllerTest {

    @Test
    void hello_returns_text() {
        String msg = new HelloController().hello();
        assertEquals("Hello DevOps from EVA2DEVOPS!", msg);
    }
}
