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
}
