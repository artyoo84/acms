package kr.co.doollee.acms.sample.board.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TestData {

	List<String> rowData1 = new ArrayList<String>();
	List<String> rowData2 = new ArrayList<String>();
	List<String> rowData3 = new ArrayList<String>();
	List<String> rowData4 = new ArrayList<String>();
	List<String> rowData5 = new ArrayList<String>();
	List<String> rowData6 = new ArrayList<String>();
	List<String> rowData7 = new ArrayList<String>();
	
	List<List<String>> data = new ArrayList<List<String>>();
	
	int length = 10;
	public TestData(String length) {
		this.length = length == null ? 10 : Integer.parseInt(length);
		
		rowData1.add("1");
		rowData1.add("Airi");
		rowData1.add("Satou");
		rowData1.add("Accountant");
		rowData1.add("Tokyo");
		rowData1.add("28th Nov 08");
		rowData1.add("$162,700");

		for(int i = 0 ; i < this.length ; i ++){
			this.data.add(rowData1);
		}
		
	}

	public List<List<String>> getData(){
		return this.data;
	}
}
