package javaPack;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.LinkedList;

public class ListIO_Test02 {

	public static void main(String[] args) {
		// 1. 연결 리스트 공간 다시 생성 
		LinkedList<String> nameList = new LinkedList<>(); 
		
		// 2. 가져올 파일 경로 지정 
		String filePath = "C:/Users/epslk/Desktop/EclipseFile/TextFile/names.txt"; 
		
		// 3. 파일에서 한 줄씩 읽어와서, 리스트에 추가 
		try (BufferedReader reader = new BufferedReader(new FileReader(filePath))) {
			String line; 
			
			/** 4. reader(경로).readLine() 이 경로에 파일 한 줄을 읽고 String line 변수에 저장. 
				그리고 while 로 라인이 null이 아니라면 계속 반복 (!= null) EOF 구현완 */
			
			while((line = reader.readLine()) != null) {	
				/** 5. if의 line.trim(앞뒤공백제거메소드).isEmpty(문자열이 빌 때 true반환)
					문자열이 공백, 빈줄인 게 true면 건너뜀. !ture인 경우.
				*/
				if(!line.trim().isEmpty()) { 
					nameList.add(line); //리스트추가 
				}
			}
			
			System.out.println("파일에서 데이터를 읽어 연결리스트에 저장 완료\n");
			System.out.println("리스트 내용 출력: ");
			
			for(int i = 0; i < nameList.size(); i+= 2) {
				String adr = nameList.get(i); // 6. 주소의 인덱스 (주소 정보가 저장된 줄 가져오기)
				
				/** 7. 내용. (i + 1 < nameList.size()) = 
					기본 i값의 다음 줄의 내용(i+1), 빈 줄이라도 존재하면 ? nameList.get(i+1) : 아니면 빈 문자열 "" */
				
				String content = (i + 1 < nameList.size()) ? nameList.get(i + 1) : "";
				int index = (i / 2) + 1; 
				
				System.out.println(index + "번째 노드");
				System.out.println(adr); 
				System.out.println(content);
				System.out.println();
			}  
		} catch (IOException e) {
			System.out.println("파일읽기오류: " + e.getMessage());
		} 
	}
}