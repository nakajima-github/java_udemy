package com.company;

public class Main {

    public static void main(String[] args) {
	// write your code here
        int result = 1 + 2;
        System.out.println("1 + 2 = " + result);

        int previousResult = result;
        result = result - 1;
        System.out.println(previousResult + " - 1 = " + result);

        previousResult = result;
        result = result * 10;
        System.out.println(previousResult + " * 10 = " + result);

        previousResult = result;

        result = result / 5;
        System.out.println(previousResult + " / 5 = " + result);

        previousResult = result;
        result = result % 3;
        System.out.println(previousResult + " % 3 = " + result);

        previousResult = result;
        result = result + 1;
        System.out.println("result is now " + result);

        result++;
        System.out.println("result is now " + result);

        result--;
        System.out.println("result is now " + result);

        result += 2;
        System.out.println("result is now " + result);

        result *= 10;
        System.out.println("result is now " + result);

        result -= 10;
        System.out.println("result is now " + result);

        result /= 10;
        System.out.println("result is now " + result);

        boolean isAlien = true;
        if (isAlien == true) {
            System.out.println("It is an Alien!");
        }

        int topScore = 80;
        if (topScore >= 100) {
            System.out.println("you got the high score.");
        }

        int secondTopScore = 81;
        if ((topScore > secondTopScore) && (topScore < 100)) {
            System.out.println("Greater than top score and less than 100.");
        }

        if ((topScore > 90) || (secondTopScore <= 90)){
            System.out.println("One of the these test is true");
        }

        int newValue = 50;
        if (newValue == 50){
            System.out.println("This is true");
        }

        boolean isCar = false;
        if (isCar = true){
            System.out.println("This is not supposed to happen");
        }

//        isCar = false;
        boolean wasCar = isCar;
        if (wasCar) {
            System.out.println("wasCar is true");
        }

        double doubleValue = 20d;
        double secondDoubleValue = 80d;
        double ans = (doubleValue + secondDoubleValue) * 25d;
        double theRemainder = ans % 40;

        if (theRemainder <= 20) {
            System.out.println("Total was over the limit");
        }



    }


}
