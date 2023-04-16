package com.rachel.service;
import com.alibaba.fastjson.JSON;
import com.rachel.service.domain.SignTable;
import com.rachel.service.domain.StudentRecord;
import com.rachel.service.domain.User;
import com.rachel.service.repository.AdminMapper;
import com.rachel.service.repository.StudentMapper;
import com.rachel.service.repository.UserMapper;
import com.rachel.service.service.impl.AdminServiceImpl;
import com.rachel.service.service.impl.StudentServiceImpl;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

@SpringBootTest
class ServiceApplicationTests {

//    public static class test1{
//        public  void TestRecord() throws IOException {
//            String resource = "mybatis-config.xml";
//            InputStream inputStream = Resources.getResourceAsStream(resource);
//            SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
//            SqlSession sqlSession = sqlSessionFactory.openSession();
//            UserMapper mapper1 = sqlSession.getMapper(UserMapper.class);
//            AdminMapper mapper = sqlSession.getMapper(AdminMapper.class);
//            User user = mapper1.getUserByUserName("admin");
//            AdminServiceImpl adminService1 = new AdminServiceImpl(mapper1, mapper);
//            int token = adminService1.autotoken();
////            int token = 1111;
////            System.out.println("第一次："+token);
////            int temp = token;
////            System.out.println("第二次："+temp);
//            adminService1.sign(user.getId(),token);
//            String datatime = mapper.findByToken(token);
//            List<SignTable>  all = mapper.findAlldata(datatime);
//            System.out.println(all);
//            sqlSession.commit();
//            sqlSession.close();
//        }
//    }
//
//
//    public static class test2{
//        public  void SignRecord() throws IOException {
//            String resource = "mybatis-config.xml";
//            InputStream inputStream = Resources.getResourceAsStream(resource);
//            SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
//            SqlSession sqlSession = sqlSessionFactory.openSession();
//
//            UserMapper mapper1 = sqlSession.getMapper(UserMapper.class);
//            StudentMapper mapper2 = sqlSession.getMapper(StudentMapper.class);
//            AdminMapper mapper3 = sqlSession.getMapper(AdminMapper.class);
//
//            StudentServiceImpl studentService = new StudentServiceImpl(mapper1, mapper3, mapper2);
//            AdminServiceImpl adminService = new AdminServiceImpl(mapper1, mapper3);
//            int token = adminService.autotoken();
//            System.out.println("老师发起的签到码为："+token);
//            adminService.sign(2,token);
//            studentService.record(token,3);
////            studentService.record(token,1);
////            User user = mapper1.getUserByUserName("student");
////            studentService.insertRecord(token,user.getId());
//            System.out.println("插入成功");
//
//
//            sqlSession.commit();
//            sqlSession.close();
//        }
//    }
    public static class test3{
        public  void SignRecord() throws IOException {
            String resource = "mybatis-config.xml";
            InputStream inputStream = Resources.getResourceAsStream(resource);
            SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
            SqlSession sqlSession = sqlSessionFactory.openSession();

            UserMapper mapper1 = sqlSession.getMapper(UserMapper.class);
            StudentMapper mapper2 = sqlSession.getMapper(StudentMapper.class);
            AdminMapper mapper3 = sqlSession.getMapper(AdminMapper.class);
            StudentServiceImpl studentService = new StudentServiceImpl(mapper1, mapper3, mapper2);
            studentService.doRecord(6666,1);



            sqlSession.commit();
            sqlSession.close();
        }
    }
    public static void main(String[] args) {
        test3 t2 = new test3();
        try {
            t2.SignRecord();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
