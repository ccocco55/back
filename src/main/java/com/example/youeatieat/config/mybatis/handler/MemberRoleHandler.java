package com.example.youeatieat.config.mybatis.handler;

import com.example.youeatieat.common.enumeration.MemberRole;
import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.MappedTypes;
import org.apache.ibatis.type.TypeHandler;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@MappedTypes(MemberRole.class)
public class MemberRoleHandler implements TypeHandler<MemberRole> {
    @Override
    public void setParameter(PreparedStatement ps, int i, MemberRole parameter, JdbcType jdbcType) throws SQLException {
        ps.setString(i, parameter.getValue());
    }

    @Override
    public MemberRole getResult(ResultSet rs, String columnName) throws SQLException {
        return switch (rs.getString(columnName)){
            case "buyer" -> MemberRole.BUYER;
            case "seller" -> MemberRole.SELLER;
            case "admin" -> MemberRole.ADMIN;
            default -> null;
        };
    }

    @Override
    public MemberRole getResult(ResultSet rs, int columnIndex) throws SQLException {
        return switch (rs.getString(columnIndex)){
            case "buyer" -> MemberRole.BUYER;
            case "seller" -> MemberRole.SELLER;
            case "admin" -> MemberRole.ADMIN;
            default -> null;
        };
    }

    @Override
    public MemberRole getResult(CallableStatement cs, int columnIndex) throws SQLException {
        return switch (cs.getString(columnIndex)){
            case "buyer" -> MemberRole.BUYER;
            case "seller" -> MemberRole.SELLER;
            case "admin" -> MemberRole.ADMIN;
            default -> null;
        };
    }
}
