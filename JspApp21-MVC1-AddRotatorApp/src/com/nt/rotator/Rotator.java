package com.nt.rotator;

import java.util.Random;

public class Rotator {
	private final  String[] images= {"ford-mustang.jpg","honda-city.jpg","mahindra-marazzo.jpg","Suzuki-Ertiga.jpg","tata-nexon.jpg","Toyota-Yaris.jpg"};
	private final  String[] links= {"https://www.ford.com/cars/mustang/models/","https://www.hondacarindia.com/honda-city","https://www.mahindramarazzo.com/buyers-guide/utm_campaign=Mahindra_Marazzo_Brand_Broad_Jan_2019","https://www.marutisuzuki.com/channels/arena/suvs-muvs/ertiga?form=testdrive","https://nexon.tatamotors.com/?utm_campaign=TML_Nexon_Jan2019","https://www.toyotabharat.com/showroom/yaris/"};
	private  int counter=0;
	
	public  String  getImage() {
		return images[counter];
	}
	
	public  String  getLink() {
		return links[counter];
	}
	
	public void  nextAdvertisement() {
		counter=new Random().nextInt(6);
	}

}
