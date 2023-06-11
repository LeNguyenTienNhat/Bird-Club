/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tool.utils;

import com.fptuni.prj301.demo.dbmanager.FieldTripParticipantsManager;
import com.fptuni.prj301.demo.dbmanager.MeetingParticipantsManager;
import com.fptuni.prj301.demo.dbmanager.TparticipationManager;
import java.util.List;
import java.util.Random;

public class UIDGenerator {

    public static String generateUID() {
        Random random = new Random();
        int randomNumber = random.nextInt(90000) + 10000;
        return "u" + randomNumber;
    }


    public static String generateFID() {
        List<String> existingFIDs = FieldTripParticipantsManager.ExistingFID();
        int listSize = existingFIDs.size();
        int fidNumber = listSize + 1;
        return "FID" + fidNumber;
    }
    
    public static String generateTID() {
        List<String> existingTIDs = TparticipationManager.ExistingTID();
        int listSize = existingTIDs.size();
        int tidNumber = listSize + 1;
        return "TID" + tidNumber;
    }
    
    public static String generateMeID() {
        List<String> existingMeIDs = MeetingParticipantsManager.ExistingMeID();
        int listSize = existingMeIDs.size();
        int meidNumber = listSize + 1;
        return "MeID" + meidNumber;
    }
    
    public static String generateDocT() {
        List<String> existingTIDs = TparticipationManager.ExistingDoc("Doc.T%");
        int listSize = existingTIDs.size();
        int randomNumber = listSize + 1;
        return "Doc.T" + randomNumber;
    }
    public static String generateDocF() {
        List<String> existingFIDs = FieldTripParticipantsManager.ExistingDoc("Doc.F%");
        int listSize = existingFIDs.size();
        int randomNumber = listSize + 1;
        return "Doc.F" + randomNumber;
    }
    public static String generateDocM() {
        List<String> existingMeIDs = FieldTripParticipantsManager.ExistingDoc("Doc.M%");
        int listSize = existingMeIDs.size();
        int randomNumber = listSize + 1;
        return "Doc.M" + randomNumber;
    }
    public static void main(String[] args) {
    String docNoT = generateDocT();
    System.out.println("Generated DocNo: " + docNoT);
    String docNoF = generateDocF();
    System.out.println("Generated DocNo: " + docNoF);
    String docNoM = generateDocM();
    System.out.println("Generated DocNo: " + docNoM);
}

}
