#include "gtest/gtest.h"
#include "chapter1/hello_world.h"

TEST(HelloWorldTest, test1){
     EXPECT_EQ(HelloWorld::shout(), "Hello World!");
}
TEST(HelloWorldTest, test2){
     EXPECT_NE(HelloWorld::shout(), "Hello World");
}

