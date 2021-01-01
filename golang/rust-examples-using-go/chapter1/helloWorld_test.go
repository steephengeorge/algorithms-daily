package main

import "testing"

func TestHelloWorld(t *testing.T){
    if(helloWorld() != "Hello World!"){
        t.Error("Expected string 'Hello World!'")
    }
}


func TestTableHelloWorld(t *testing.T){

    var tests = []struct{
        expected string 
    }{
       { "Hello World!"},
       { "Hello World"},
       { "Hello world!"},
    }
   
    for _, test := range tests{
        output := helloWorld(); 
        if output != test.expected {
            t.Error("Test failed:{} expected, received: {}", test.expected, output)
        }
    }
}

