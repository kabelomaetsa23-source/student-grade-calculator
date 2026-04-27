
package za.ac.tut.model;


public class StudentGradeGenerator {
    
    private String studentNumber;
    private int testOne,testTwo,testThree;

    public StudentGradeGenerator(String studentNumber, Integer testOne, Integer testTwo, Integer testThree) {
        this.studentNumber = studentNumber;
        this.testOne = testOne;
        this.testTwo = testTwo;
        this.testThree = testThree;
    }

    public int getAverage(){
        int avg ;
        
        avg = (testOne + testTwo + testThree)/3;        
        return avg;
    }
    public String determineResults(){
        String results = "Fail";
        
        if (getAverage() > 49) {
            results = "Pass";
        }
        
        return results;
    }
    
}
