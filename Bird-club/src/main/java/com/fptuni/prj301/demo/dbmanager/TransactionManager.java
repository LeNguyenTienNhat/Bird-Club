/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.dbmanager;

import com.fptuni.prj301.demo.model.Transaction;
import com.fptuni.prj301.demo.utils.DBUtils;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Administrator
 */
public class TransactionManager {
        public boolean insertTransaction(Transaction transaction) {
        String sql = "INSERT INTO Transactions (PID, UID, Value, PaymentDate, TransactionType, DocNo) " +
                     "VALUES (?, ?, ?, ?, ?, ?)";

        try (Connection conn = DBUtils.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, transaction.getPID());
            ps.setString(2, transaction.getUID());
            ps.setBigDecimal(3, transaction.getValue());
            ps.setDate(4, new java.sql.Date(transaction.getPaymentDate().getTime()));
            ps.setString(5, transaction.getTransactionType());
            ps.setString(6, transaction.getDocNo());

            int rowsInserted = ps.executeUpdate();

            // Check if the insertion was successful
            if (rowsInserted > 0) {
                return true; // Insertion successful
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false; // Insertion failed
    }
        
        public static List<String> existingPIDs(String pattern) {
    List<String> existingPIDs = new ArrayList<>();
    String sql = "SELECT PID FROM Transactions WHERE PID LIKE ?";

    try (Connection conn = DBUtils.getConnection();
         PreparedStatement ps = conn.prepareStatement(sql)) {
        ps.setString(1, pattern);

        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                String pid = rs.getString("PID");
                existingPIDs.add(pid);
            }
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return existingPIDs;
}
        public static void main(String[] args) {
    // Create a sample Transaction object
    Transaction transaction = new Transaction();
    transaction.setPID("123");
    transaction.setUID("UID0");
    transaction.setValue(new BigDecimal("100.00"));
    transaction.setPaymentDate(new Date());
    transaction.setTransactionType("Type");
    transaction.setDocNo("Doc123");

    // Create an instance of your TransactionManager class
    TransactionManager transactionManager = new TransactionManager();

    // Call the insertTransaction method and check the result
    boolean success = transactionManager.insertTransaction(transaction);
    if (success) {
        System.out.println("Transaction inserted successfully");
    } else {
        System.out.println("Failed to insert transaction");
    }
}
}

