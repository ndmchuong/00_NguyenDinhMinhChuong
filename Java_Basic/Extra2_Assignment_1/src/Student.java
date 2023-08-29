import java.util.Date;

public class Student {
    int studentID;
    String studentName;
    Date birthDay;
    Gender gender;
    String country;
    EducationLevel educationLevelID;
    short creditAccumulated;
    void registerCredit() {
        System.out.println("Đăng kí tín chỉ");
    }
    void joinClub() {
        System.out.println("Tham gia các câu lạc bộ");
    }
    void doHomeWork() {
        System.out.println("làm bài tập về nhà");
    }
}
