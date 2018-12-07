package leadme;

import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import leadme.service.RankingService;

//스케쥴링 위한 클래스 및 메서드
@Component
public class Executor {
   
  @Autowired RankingService rankingService; //rankingService 와 연동
  
  
/*사용 예

0 0 12 * * *           ==> 매일 12시에 실행

0 15 10 * * *         ==> 매일 10시 15분에 실행

0 * 14 * * *           ==> 매일 14시에 실행

0 0/5 14 18 * * *    ==> 매일 14시, 18시에 시작해서 5분간격으로 실행

0 0-5 14 * * *        ==> 매일 14시에 시작해서 0분동안 실행 

출처: http://javafactory.tistory.com/1386 [FreeLife의 저장소]

*/
   
  
/*
 @Scheduled(cron="0 0/5 10 * * *")
 public void executor() {
   Calendar calendar = Calendar.getInstance();
   Date date = calendar.getTime();
   String today = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
   System.out.println("스케쥴러 작동 시간 : " + today);
   
   rankingService.executor();
   
   // 클래스.메소드 박아주기?
 }
 */
 

 @Scheduled(fixedDelay = 5000)
 public void executor2 (){
     System.out.println(new Date());
     rankingService.add(null);
     rankingService.delete();
 }

}