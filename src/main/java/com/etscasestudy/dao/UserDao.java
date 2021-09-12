package com.etscasestudy.dao;
import java.sql.ResultSet;

import com.etscasestudy.model.UserModel;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import java.sql.SQLException;
import java.util.List;



public class UserDao {
    JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template= template;
    }

    // Save user details to db via DAO layer
    public int save(UserModel userModel) {
        String query = "insert into users(name,surName,phone,address,bloodType) " + "values('" + userModel.getName() + "','" + userModel.getSurName()
                + "','" + userModel.getPhoneNumber() + "','" + userModel.getAddress()
                + "','" + userModel.getBloodType() + "')";
        return template.update(query);
    }
    // Delete user by ID
    public int delete(int id){
        String sql="delete from users where id="+id+"";
        return template.update(sql);
    }
    // List all users
    public List<UserModel> getUsers(){

        List<UserModel> userList = template.query("select * from users",new RowMapper<UserModel>() {

            public UserModel mapRow(ResultSet rs,int row) throws SQLException {

                UserModel user = new UserModel();
                user.setId(rs.getInt(1));
                user.setName(rs.getString(2));
                user.setSurName(rs.getString(3));
                user.setPhoneNumber(rs.getString(4));
                user.setAddress(rs.getString(5));
                user.setBloodType(rs.getString(6));
                //System.out.println(user);

                return user;
            }
        });
        return userList;
    }
}
