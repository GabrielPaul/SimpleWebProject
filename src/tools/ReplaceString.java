package tools;

import java.io.File;
import java.io.PrintWriter;
import java.util.Scanner;

public class ReplaceString {
	/**
	 * 替换文本中指定字符的方法
	 * @param orgFile 绝对路径源文件名
	 * @param objFile 绝对路径替换后的文件
	 * @param orgStr  源文件中要替换的字符
	 * @param repStr  替换源文件中字符的字符
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
