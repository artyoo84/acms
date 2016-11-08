package acms;

import org.jasypt.encryption.pbe.StandardPBEStringEncryptor;

public class TestEnc {
	public static void main(String[] args) {
		  StandardPBEStringEncryptor pbeEnc = new StandardPBEStringEncryptor();
	        
	        pbeEnc.setAlgorithm("PBEWithMD5AndDES");
	        pbeEnc.setPassword("doolleeEnc"); // PBE 값(XML PASSWORD설정)
	        
	        String url = pbeEnc.encrypt("jdbc:mysql://222.231.33.171:44006/acms?autoReconnect=true");
	        String username = pbeEnc.encrypt("acms");
	        String password = pbeEnc.encrypt("!doollee1028");
	        
	        System.out.println(url);
	        System.out.println(username);
	        System.out.println(password);		
	}
}
