import java.util.Date;

public class Program {
    public static void main(String[] args) {
//        create education level
        EducationLevel educationLevel1 = new EducationLevel();
        educationLevel1.educationLevelID = 1;
        educationLevel1.educationLevelName = EducationLevelName.COLLEGE;
        educationLevel1.teachingTime = 36;
        educationLevel1.creditAccumulate = 150;

        EducationLevel educationLevel2 = new EducationLevel();
        educationLevel2.educationLevelID = 2;
        educationLevel2.educationLevelName = EducationLevelName.UNIVERSITY;
        educationLevel2.teachingTime = 48;
        educationLevel2.creditAccumulate = 210;

//        create student
//        student1
        Student student1 = new Student();
        student1.studentID = 1;
        student1.studentName = "Chuong";
        student1.gender = Gender.MALE;
        student1.birthDay = new Date("2001/05/24");
        student1.country = "Long An";
        student1.educationLevelID = educationLevel2;
//        student2
        Student student2 = new Student();
        student2.studentID = 2;
        student2.studentName = "Phuong";
        student2.gender = Gender.FEMALE;
        student2.birthDay = new Date("2003/05/24");
        student2.country = "TP.HCM";
        student2.educationLevelID = educationLevel2;
//        student3
        Student student3 = new Student();
        student3.studentID = 3;
        student3.studentName = "Nhut";
        student3.gender = Gender.MALE;
        student3.birthDay = new Date("2001/12/01");
        student3.country = "Long An";
        student3.educationLevelID = educationLevel2;
//        student4
        Student student4 = new Student();
        student4.studentID = 4;
        student4.studentName = "Duyen";
        student4.gender = Gender.FEMALE;
        student4.birthDay = new Date("2003/06/04");
        student4.country = "TP.HCM";
        student4.educationLevelID = educationLevel1;
//        student5
        Student student5 = new Student();
        student5.studentID = 5;
        student5.studentName = "Nam";
        student5.gender = Gender.MALE;
        student5.birthDay = new Date("2002/10/25");
        student5.country = "Tiền Giang";
        student5.educationLevelID = educationLevel1;

//        create teacher
//        teacher1
        Teacher teacher1 = new Teacher();
        teacher1.teacherID = 1;
        teacher1.teacherName = "Linh";
        teacher1.gender = Gender.FEMALE;
        teacher1.country = "Đồng Nai";
        teacher1.salary = 8.5f;
        teacher1.birthDay = new Date("1995/04/20");
//        teacher2
        Teacher teacher2 = new Teacher();
        teacher2.teacherID = 2;
        teacher2.teacherName = "Duy";
        teacher2.gender = Gender.MALE;
        teacher2.country = "An Giang";
        teacher2.salary = 10f;
        teacher2.birthDay = new Date("1990/09/13");
//        teacher3
        Teacher teacher3 = new Teacher();
        teacher3.teacherID = 3;
        teacher3.teacherName = "Tinh";
        teacher3.gender = Gender.MALE;
        teacher3.country = "Đồng Tháp";
        teacher3.salary = 11.5f;
        teacher3.birthDay = new Date("1988/11/14");

//        create class credit
//        class credit1
        ClassCredit classCredit1 = new ClassCredit();
        classCredit1.classID = 1;
        classCredit1.className = "Toán cao cấp 23";
        classCredit1.subject = "Toán cao cấp";
        classCredit1.teacherID = teacher1;
        Student[] studentOfClassCredit1 = {student1, student2, student3, student4, student5};
        classCredit1.students = studentOfClassCredit1;
        classCredit1.time = 30;
//        class credit2
        ClassCredit classCredit2 = new ClassCredit();
        classCredit2.classID = 2;
        classCredit2.className = "Front end 23";
        classCredit2.subject = "Front end";
        classCredit2.teacherID = teacher2;
        Student[] studentOfClassCredit2 = {student1, student3, student5};
        classCredit2.students = studentOfClassCredit2;
        classCredit2.time = 50;
//        class credit3
        ClassCredit classCredit3 = new ClassCredit();
        classCredit3.classID = 3;
        classCredit3.className = "Java basic 23";
        classCredit3.subject = "Java";
        classCredit3.teacherID = teacher3;
        Student[] studentOfClassCredit3 = {student1, student4, student5};
        classCredit3.students = studentOfClassCredit3;
        classCredit3.time = 40;
        System.out.println("Method of Student");
        student1.doHomeWork();
        student1.registerCredit();
        student1.joinClub();
        System.out.println("\n");
        System.out.println("Method of Teacher");
        teacher1.teach();
        teacher1.management();
    }
}
