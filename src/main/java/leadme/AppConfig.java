package leadme;

import javax.sql.DataSource;
import org.apache.commons.dbcp.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;


// 스프링 Ioc 컨테이너에게 이 클래스가 컨테이너를 위한 설정정보를 담고있는 
// 클래스라는 것을 알려주기 위해 디음 애노테이션을 추가한다
@Configuration
/*
@ComponentScan(
        basePackages="bitcamp.java110.cms",
        excludeFilters=@Filter(
                type=FilterType.REGEX,
                pattern="bitcamp.java110.cms.web.*"
                ))
*/
@PropertySource(
        {"classpath:/leadme/conf/jdbc.properties",
            "classpath:/leadme/conf/sec.properties"})

//Mybatis에서 자동으로 DAO를생성할 때 사용할 인터페이스가 들어있는 패키지 설정

@MapperScan("leadme.dao")

// 트랜젝션 관리자를 활성화 하려면 다음 애노테이션을 붙여야 한다
@EnableTransactionManagement
@EnableScheduling
public class AppConfig {
    
    @Autowired
    Environment env;
    
    
    public AppConfig() {
        System.out.println("AppConfig() 호출됨!");
    }
    
    
    @Bean(destroyMethod="close")
    public DataSource dataSource() {
        System.out.println("DataSource 객체생성");
        BasicDataSource ds = new BasicDataSource();
        ds.setDriverClassName(env.getProperty("jdbc.driver"));
        ds.setUrl(env.getProperty("jdbc.url"));
        ds.setUsername(env.getProperty("jdbc.username"));
        ds.setPassword(env.getProperty("jdbc.password"));
        ds.setDefaultAutoCommit(false);
        return ds;
    }
    
    
    @Bean
    public SqlSessionFactory sqlSessionFacroty(
            DataSource dataSource, 
            ApplicationContext appCtx) {
        System.out.println("SqlSessioinFactory 객체 생성!");
        System.out.println(dataSource);
        System.out.println(appCtx);
        
        try {
            SqlSessionFactoryBean factory = new SqlSessionFactoryBean();
            // DB커낵션 풀을 관리해주는 객체를 꼽는다
            factory.setDataSource(this.dataSource());
            
            // SQL 맵퍼 파일에서 도매인 객체의 별명을 사용하려면 
            // 도메인 객체가 
            
            // 데이터를 저장할 때 사용할 도메인 객체의 별명을 자동으로 생성할 클래스가 들어있는 패키지 지정
            factory.setTypeAliasesPackage("leadme.domain");
            
            // SQL 맵퍼 파일 경로를 등록한다
            factory.setMapperLocations(appCtx.getResources(
                    "classpath:/leadme/mapper/**/*.xml"));
            return factory.getObject();
            
        }catch (Exception e) {
                throw new RuntimeException(e);
        }
        
        }
    
    // 트랜젝션 관리지의 이름은 반드시 "transactionManager"이어야 한다
    // 그래서 메서드 이름을 다음과 같이 지은 것이다
    // Spring에서 트랜잭션 관리자를 찾을 때 이 이름으로찾는다
    // 만약 트랜잭션 이름을 다른 이름으로 지었다면 
    // 트랜잭션 관리 설정에서 그 이름을 알려줘야한다
    @Bean
    public PlatformTransactionManager transactionManager(
            DataSource dataSource) {
        //트랜젝션 관리자가 하는 일은 DB 커넥션의 Commit과 rolldack을 다루는 것이다
        // 따라서 트랜젝션 관리자는 DB 커넥션을 제공해주는
        // DataSource(DB 커넥션 풀)가 필요하다
        // 그래서 트랜잭션 관리자를 만들 때 
       return new DataSourceTransactionManager(dataSource);
    }
    
  /*  
    public static void main(String[] args) {
        
        // Java Config를 사용할 때는 다음 IoC 컨테이너를 사용한다
        ApplicationContext iocContainer = 
                new AnnotationConfigApplicationContext(AppConfig.class);
        System.out.println("------------------------------");
        
        // 컨테이너에 들어 있는 객체의 개수와 이름 알아내기
        int count = iocContainer.getBeanDefinitionCount();
        System.out.printf("bean 개수 = %d\n", count);
        
        String[] names = iocContainer.getBeanDefinitionNames();
        for (String name : names) {
            System.out.printf("=> %s : %s\n", 
                    name, 
                    iocContainer.getType(name).getName());
        }
        
        System.out.println("------------------------------");
        
        ManagerService s = (ManagerService)iocContainer.getBean(ManagerService.class);
        System.out.println(s.list(1, 5));
        
        
        java.util.Properties props = System.getProperties();
        Set<Entry<String,String>> entrySet = props.entrySet();
                
        
    }*/
/*
    private static final String SENDER_EMAIL = "leadme504@gmail.com";//change with your sender email

    @Bean
    public MailSender mailSender() {
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");//Outgoing server requires authentication
        props.put("mail.smtp.starttls.enable", "true");//TLS must be activated
        mailSender.setJavaMailProperties(props);

        mailSender.setUsername(SENDER_EMAIL);
        mailSender.setPassword("flemal123");//change with your sender email password
        mailSender.setHost("smtp.1and1.com"); //Outgoing smtp server - change it to your SMTP server
        mailSender.setPort(587);//Outgoing port
        return mailSender;
    }

    @Bean
    public SimpleMailMessage defaultMessage() {
        SimpleMailMessage smm = new SimpleMailMessage();
        smm.setTo("default@example.com");
        smm.setFrom(SENDER_EMAIL);
        smm.setSubject("Default subject");
        smm.setText("Default text");
        return smm;
    }*/
}
