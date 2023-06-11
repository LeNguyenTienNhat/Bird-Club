/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tool.utils;

import com.fptuni.prj301.demo.dbmanager.TparticipationManager;
import java.util.List;
import java.util.Random;

public class UIDGenerator {

    public static String generateUID() {
        Random random = new Random();
        int randomNumber = random.nextInt(90000) + 10000;
        return "u" + randomNumber;
    }

    public static String generateTID() {
        List<String> existingTIDs = TparticipationManager.ExistingTID();
        int listSize = existingTIDs.size();
        int tidNumber = listSize + 1;
        return "TID" + tidNumber;
    }

    public static String generateDocNo() {
        List<String> existingTIDs = TparticipationManager.ExistingDoc("Doc.T%");
        int listSize = existingTIDs.size();
        int randomNumber = listSize + 1;
        return "Doc.T" + randomNumber;
    }
    public static void main(String[] args) {
    String docNo = generateDocNo();
    System.out.println("Generated DocNo: " + docNo);
}

}
