package com.bobjo.utils.test;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

import com.bobjo.store.db.StoreDTO;

public class YangcheonguCSV extends StoreCSV{
	
	public YangcheonguCSV(String filePath) {
		super(filePath);
	}

	@Override
	public void insertFile() throws IOException {
		FileReader fr = new FileReader(filePath);
		BufferedReader br = new BufferedReader(fr);
		String tmp = null;
		CSVInsertor dao = new CSVInsertor();
		br.readLine();
		int imgNum = 0;
		while((tmp = br.readLine()) != null) {
			String[] data = tmp.split(",");
			if(data.length > 5) continue;
			StoreDTO dto = new StoreDTO();
			dto.setStore_category(data[6]);
			dto.setStore_name(data[2]);
			dto.setAddr("서울특별시 양천구 " + data[3].split(" ")[2]);
			String addrDetailts = "";
			String[] addArr = data[3].split(" ");
			for(int i=3; i<addArr.length; i++) {
				addrDetailts += addArr[i] + " ";
			}
			dto.setAddr_details(addrDetailts.trim());
			dto.setTel(getUKPhoneNumber());
			dto.setOpen("9:00");
			dto.setClose("21:00");
			dto.setTotal_tables(100);
			dto.setStore_content(data[0]);
			dto.setMax_rsrv((int)(Math.random()*9+2));
			dto.setExtra_info(getExtraInfo());
			imgNum %= 100;
			dto.setStore_img("res_img/restaurant"+ ++imgNum +".jpg");
			dto.setM_id("c_test");
			
			dao.insertStore(dto);
		}
		br.close();
	}

}