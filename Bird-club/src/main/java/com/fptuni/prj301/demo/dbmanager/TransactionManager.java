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
        String sql = "INSERT INTO Transactions (PID, UID, Value, PaymentDate, TransactionType, DocNo) "
                + "VALUES (?, ?, ?, ?, ?, ?)";

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

    public List<Transaction> getRecords(int skip, int numOfRow, String transactionType) {
        List<Transaction> list = new ArrayList();
        String sql = "SELECT * FROM [Transactions] ";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps;
            if (!transactionType.equals("all")) {
                sql = sql + " WHERE transactionType=? "
                        + " ORDER BY paymentDate DESC OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
                ps = conn.prepareStatement(sql);
                ps.setString(1, transactionType);
                ps.setInt(2, skip);
                ps.setInt(3, numOfRow);
            } else {
                sql = sql + " ORDER BY paymentDate DESC OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
                ps = conn.prepareStatement(sql);
                ps.setInt(1, skip);
                ps.setInt(2, numOfRow);
            }
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Transaction t = new Transaction();
                t.setPID(rs.getString("PID"));
                t.setUID(rs.getString("UID"));
                t.setValue(rs.getBigDecimal("value"));
                t.setPaymentDate(rs.getDate("paymentDate"));
                t.setTransactionType(rs.getString("transactionType"));
                t.setDocNo(rs.getString("docNo"));
                list.add(t);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public int countNumAsTransactionType(String transactionType) {
        int count = 0;
        String sql = "SELECT COUNT(PID) as num FROM [Transactions] ";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps;
            if (!transactionType.equals("all")) {
                sql = sql + " where transactionType = ? ";
                ps = conn.prepareStatement(sql);
                ps.setString(1, transactionType);
            } else {
                ps = conn.prepareStatement(sql);
            }
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getInt("num");
            }
        } catch (SQLException e) {
        }
        return count;
    }

    public int getSumAsTransactionType(String transactionType) {
        int count = 0;
        String sql = "SELECT SUM(value) as total FROM [Transactions] ";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps;
            if (!transactionType.equals("all")) {
                sql = sql + " where transactionType = ? ";
                ps = conn.prepareStatement(sql);
                ps.setString(1, transactionType);
            } else {
                ps = conn.prepareStatement(sql);
            }
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getInt("total");
            }
        } catch (SQLException e) {
        }
        return count;
    }
}
