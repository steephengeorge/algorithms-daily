package com.sm.rust.examples.using.java.chapter1;

import static org.junit.Assert.assertEquals;

import org.junit.jupiter.api.Test;

import com.sm.rust.examples.using.java.chapter1.HelloWorld;

public class HelloWorldTest {
	
    private HelloWorld helloWorld;
    HelloWorldTest(){
    	this.helloWorld = new HelloWorld();
    }
    
	@Test
	public void helloWorldTest() {
		assertEquals("Hello World!", helloWorld.helloWorld());
	}
}
