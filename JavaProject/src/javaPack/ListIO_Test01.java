package javaPack;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Collections;
import java.util.LinkedList;
import java.util.Scanner;

/** 연결리스트: 메모리 안 자료구조 / 파일입출력: 메모리 밖, 하디에 데이터저장 
 * 배열(String[]): 고정됨, 연속된 공간 
 * 연결리스트(LinkedList<String>: 가변적(자동 늘어남), 노드끼리만 연결, 노드만 연결삭제, 필요할 때마다 공간 씀  
 *  */

public class ListIO_Test01 {

	public static void main(String[] args) {
		/** 연결리스트(LinkedLst) = Node들이 체인처럼 연결된 자료구조 
		 * 배열은 크기고정 중간 삽입삭제 어렵고 늘리려면 새 배열 필요. 그래서 사용.  
		 * */ 
		LinkedList<String> nameList = new LinkedList<>(); 
		Scanner input = new Scanner(System.in); 
		
		// 1. 사용자로부터 이름을 입력받기 
		System.out.println("이름을 입력하세요 (5명): ");
		for(int i = 0; i < 5; i++) {
			System.out.println("> ");
			String name = input.nextLine(); 
			nameList.add(name); 
		}
		
		// 2. 정렬 (선택사항) 
		Collections.sort(nameList);
		
		// 3. 파일에 저장 
		try (BufferedWriter wr = new BufferedWriter(new FileWriter("C:/Users/epslk/Desktop/EclipseFile/TextFile/names.txt"))) {
			
			for(int i = 0; i < nameList.size(); i++) {
				String name = nameList.get(i); 
				/** 16진수로 바꿈 -> 주소처럼 출력 = 실제 메모리주소X, 해당 객체 String에 고유 식별값 ID를 출력 O.  
				 * System.identityHashCode(name), 구조 이해 공부를 위한, 주소인 척 보여주는용 "객체식별값". (자바는 주소 안 보여줌) 
				 * */
				String addr = "A" + Integer.toHexString(System.identityHashCode(name)).toUpperCase(); 
				
				wr.write("연결리스트의 주소: " + addr + "\n내용: " + name + "\n"); 
				wr.newLine(); //줄바꿈 
			}
			
			System.out.println("\n이름이 파일에 저장되었습니다.");
		} catch(IOException e) {
			System.out.println("파일 저장 중 오류 발생: " + e.getMessage());
		}
		/** 연결리스트를 왜 파일로 저장하냐?  
		 * 메모리: 휘발성 -> 데이터를 보존하려면 파일로 저장 필요. 
		 * 관리를 위해, name.List("승연"); -> 메모리 저장 / wr.writer("승연"); -> 파일로 보존 */
	}
}