package tool.utils;

import com.fptuni.prj301.demo.dbmanager.BirdManager;
import com.fptuni.prj301.demo.dbmanager.MemberManager;
import com.fptuni.prj301.demo.model.Bird;
import com.fptuni.prj301.demo.model.Member;
import java.awt.image.BufferedImage;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import javax.imageio.ImageIO;

public class DBgenerator {

    //Absolute path of user.png in media folder
    String USER_PROFILE_PICTURE_PATH = "D:\\gt\\Bird-Club\\Bird-club\\src\\main\\webapp\\media\\user.png";
    //Absolute path of bird.jpg in media folder
    String BIRD_PROFILE_PICTURE_PATH = "D:\\gt\\Bird-Club\\Bird-club\\src\\main\\webapp\\media\\bird.jpg";
    String FULLNAME_PATH = "D:\\gt\\Bird-Club\\Bird-club\\fullName.txt";
    String USERNAME_PATH = "D:\\gt\\Bird-Club\\Bird-club\\username.txt";
    String BIRDNAME_PATH = "D:\\gt\\Bird-Club\\Bird-club\\petName.txt";

    public byte[] ImageToByteArray(String path) throws IOException {
        BufferedImage bImage = ImageIO.read(new File(path));
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        ImageIO.write(bImage, "png", bos);
        byte[] data = bos.toByteArray();
        return data;
    }
    //generate a String array of line from a text file

    public String[] getArrayOfLine(String pathname) {
        try {
            File file = new File(pathname);
            FileReader fr = new FileReader(file);
            BufferedReader br = new BufferedReader(fr);
            String[] arrayOfLines = new String[100];
            int i = 0;
            String line = br.readLine();
            while (line != null) {
                arrayOfLines[i] = line;
                line = br.readLine();
                i++;
            }
            br.close();
            fr.close();
            return arrayOfLines;
        } catch (IOException e) {
            return null;
        }
    }

    public String getRandomDate(int startMonth, int endMonth, int year) {
        Tools tool = new Tools();
        //generate date info
        String day = Integer.toString(tool.getRandomNumber(1, 28));
        String month = Integer.toString(tool.getRandomNumber(startMonth, endMonth));
        //build string
        StringBuilder sb = new StringBuilder();
        sb.append(day);
        sb.append("/");
        sb.append(month);
        sb.append("/");
        sb.append(year);
        return sb.toString();
    }

    public void generateUser() throws IOException {
        DBgenerator db = new DBgenerator();
        Tools tool = new Tools();
        //Copy absolute path of fullName.txt
        String[] fullnameList = db.getArrayOfLine(FULLNAME_PATH);
        //Copy absolute path of username.txt
        String[] usernameList = db.getArrayOfLine(USERNAME_PATH);
        byte[] profilePicture = db.ImageToByteArray(USER_PROFILE_PICTURE_PATH);
        for (int i = 0; i < 50; i++) {
            Member m = new Member();
            m.setUID("UID" + i);
            m.setUserName(usernameList[i]);
            m.setPassword("password");
            m.setFullName(fullnameList[i]);
            String fullname = m.getFullName();
            if (fullname.charAt(fullname.length() - 1) == 'a') {
                m.setGender("male");
            } else {
                m.setGender("female");
            }
            m.setPhone("0123456789");
            m.setEmail("user123@gmail.com");
            m.setStatus("activated");
            int gacha = tool.getRandomNumber(1, 10);
            if (gacha < 5) {
                m.setRole("guest");
            } else {
                m.setRole("member");
            }
            int membershipCode = tool.getRandomNumber(1, 3);
            m.setMID("MID0" + Integer.toString(membershipCode));

            int duration;
            switch (membershipCode) {
                case 1:
                    duration = 1;
                    break;
                case 2:
                    duration = 3;
                    break;
                default:
                    duration = 6;
                    break;
            }
            String day = Integer.toString(tool.getRandomNumber(1, 28));
            String year = "2023";
            int signUpMonth = tool.getRandomNumber(1, 12);
            m.setSignupDate(day + "/" + Integer.toString(signUpMonth) + "/" + year);

            int expiredMonth = signUpMonth + duration;
            if (expiredMonth > 12) {
                year = "2024";
                expiredMonth = expiredMonth - 12;
            }
            m.setExpiredDate(day + "/" + Integer.toString(expiredMonth) + "/" + year);
            m.setProfilePicture(profilePicture);

            MemberManager mm = new MemberManager();
            mm.insert(m);
        }

    }

    public void generateBird() throws IOException {
        DBgenerator db = new DBgenerator();
        Tools tool = new Tools();
        byte[] profilePicture = db.ImageToByteArray(BIRD_PROFILE_PICTURE_PATH);
        //Copy absolute path of petName.txt
        String[] birdNameList = db.getArrayOfLine(BIRDNAME_PATH);
        for (int i = 0; i < 80; i++) {
            Bird b = new Bird();
            b.setBID("BID" + i);
            b.setUID("UID" + tool.getRandomNumber(1, 48));
            b.setName(birdNameList[i]);
            b.setAge(tool.getRandomNumber(1, 5));
            int gacha = tool.getRandomNumber(1, 2);
            if (gacha == 1) {
                b.setGender("male");
            } else {
                b.setGender("female");
            }
            b.setDescription("Not uploaded yet");
            b.setColor("black");
            b.setProfilePic(profilePicture);

            BirdManager bm = new BirdManager();
            bm.insert(b);
        }
    }

    public static void main(String[] args) throws IOException {
        DBgenerator db = new DBgenerator();
//        db.generateUser();
//        db.generateBird();
    }

}
