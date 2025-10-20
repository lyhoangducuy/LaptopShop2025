package com.laptopshop.LaptopShop.repository;

import com.laptopshop.LaptopShop.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@Repository
public class UserRepository {

    @Autowired
    private DataSource dataSource; // Spring Boot tự inject từ config

    public List<User> getAllUsers() {
        List<User> users = new ArrayList<>();
        String sql = "SELECT * FROM users";

        try (Connection conn = dataSource.getConnection();  // 👈 lấy connection từ pool
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                User u = new User();
                u.setId(rs.getLong("id"));
                u.setEmail(rs.getString("email"));
                u.setPassword(rs.getString("password"));
                u.setFullName(rs.getString("full_name"));
                u.setAddress(rs.getString("address"));
                u.setPhone(rs.getString("phone"));
                u.setAvatar(rs.getString("avatar"));
                users.add(u);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return users;
    }
}
