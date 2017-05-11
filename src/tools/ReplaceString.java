package tools;

import java.io.File;
import java.io.PrintWriter;
import java.util.Scanner;

public class ReplaceString {
	/**
	 * �滻�ı���ָ���ַ��ķ���
	 * @param orgFile ����·��Դ�ļ���
	 * @param objFile ����·���滻����ļ�
	 * @param orgStr  Դ�ļ���Ҫ�滻���ַ�
	 * @param repStr  �滻Դ�ļ����ַ����ַ�
	 * @throws Exception
	 */
	public static void replaceWithChar(String orgFile,String objFile,String orgStr,String repStr) throws Exception{
		File fileSource = new File(orgFile);
		if(!fileSource.exists())	System.exit(0);
		File targetFile= new File(objFile);
		if(targetFile.exists()) System.exit(0);
		Scanner input = new Scanner(fileSource);
		PrintWriter output=new PrintWriter(targetFile);
		while(input.hasNext()){
			String s1=input.nextLine();
			String s2=s1.replaceAll(orgStr, repStr);
			output.println(s2);
		}
		input.close();
		output.close();
	}
}
