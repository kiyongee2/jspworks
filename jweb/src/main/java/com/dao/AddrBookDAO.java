package com.dao;

import java.util.ArrayList;

//AddrBook의 객체를 관리(추가, 보기, 삭제)하는 클래스
public class AddrBookDAO {
	//객체를 저장할 어레이리스트 객체 선언
	private ArrayList<AddrBook> addrList = new ArrayList<>();
	
	//주소 추가
	public void add(AddrBook addrBook) {
		addrList.add(addrBook);
	}
	
	//목록 보기
	public ArrayList<AddrBook> getListAll(){
		return addrList;
	}
	
	//상세 보기
	public AddrBook getAbByUserName(String username) {
		AddrBook abByUsername = null;
		for(int i=0; i<addrList.size(); i++) {
			AddrBook ab = addrList.get(i);
			//이름 비교
			String dbUser = ab.getUsername(); //이미 입력된 이름 가져오기
			if(dbUser.equals(username)) { //입력된 이름과 외부 입력 이름이 같으면
				abByUsername = ab;  //해당 객체 저장
				break;
			}
		}
		return abByUsername; //객체 반환해 줌
	}
	
	//주소 삭제
	public void delete(String username) {
		for(int i=0; i<addrList.size(); i++) {
			AddrBook ab = addrList.get(i);
			//이름 비교
			String dbUser = ab.getUsername();
			if(dbUser.equals(username)) { //입력된 이름과 외부 입력 이름이 같으면
				addrList.remove(i);  //해당 객체 삭제
				break;
			}
		}
	}
}










