package tools;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintStream;

public class CopyDirection {
	private static final int BUFFER_SIZE = 16 *1024;

	public static void copy(String src, String des) {  
        File file1=new File(src);  
        File[] fs=file1.listFiles();  
        File file2=new File(des);  
        if(!file2.exists()){  
            file2.mkdirs();  
        }  
        for (File f : fs) {  
            if(f.isFile()){  
      //        fileCopy(f.getPath(),des+"\\"+f.getName()); //�����ļ������ķ���  
                picCopy(f.getPath(),des+"\\"+f.getName());	//������һ���ļ���������
            }else if(f.isDirectory()){  
                copy(f.getPath(),des+"\\"+f.getName());  
            }  
        }  
          
    }  
  
    /** 
     * �ļ������ķ��� 
     * �ø÷�������ͼƬ�����ͼƬ�޷�ʶ��
     */  
    @SuppressWarnings("unused")
	private static void fileCopy(String src, String des) {  
      
        BufferedReader br=null;  
        PrintStream ps=null;  
          
        try {  
            br=new BufferedReader(new InputStreamReader(new FileInputStream(src)));  
            ps=new PrintStream(new FileOutputStream(des));  
            String s=null;  
            while((s=br.readLine())!=null){  
                ps.println(s);  
                ps.flush();  
            }  
              
        } catch (FileNotFoundException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        } catch (IOException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }finally{  
              
                try {  
                    if(br!=null)  br.close();  
                    if(ps!=null)  ps.close();  
                } catch (IOException e) {  
                    // TODO Auto-generated catch block  
                    e.printStackTrace();  
                }  
                  
        	}  
          
       }
    
    /**
     * �ֽ����ķ�ʽ�����ļ�������ΪFile���ͣ�inputStream����ͼƬ������޷�ʶ��
     */
    @SuppressWarnings("unused")
	private static void copy(File src, File dst) {  
        try {  
            InputStream in = null;  
            OutputStream out = null;  
            try {  
                in = new BufferedInputStream(new FileInputStream(src),  
                        BUFFER_SIZE);  
                out = new BufferedOutputStream(new FileOutputStream(dst),  
                        BUFFER_SIZE);  
                byte[] buffer = new byte[BUFFER_SIZE];  
                while (in.read(buffer) > 0) {  
                    out.write(buffer);  
                }  
            } finally {  
                if (null != in) {  
                    in.close();  
                }  
                if (null != out) {  
                    out.close();  
                }  
            }  
        } catch (Exception e) {  
            e.printStackTrace();  
        }  
    } 
    
    /**
     * ͼƬ��������һ
     * ����ΪString����
     */
    public static void picCopy(String src,String dst){
    	BufferedInputStream in;
    	  BufferedOutputStream out;
    	  int i;
		try {
			in = new BufferedInputStream(new FileInputStream(src));
			out = new BufferedOutputStream(new FileOutputStream(dst));
			while((i=in.read())!=-1){
				   out.write(i);
			}
			 out.flush();  
	    	  out.close();
	    	  in.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
     }
    /**
     * ͼƬ����������
     * ����ΪFile����
	 *�ô�����ķ��������ֽڶ�ȡ���ϴ�ͼƬ
	 * @param src ���ϴ��ļ���source��
	 * @param dst Ŀ���ļ���destination��
	 * @return void
	 */
	public static void picCopy(File src,File dst){
		try{
			InputStream in =null;
			OutputStream out = null;
			try{
				in = new BufferedInputStream(new FileInputStream(src),BUFFER_SIZE);
				out = new BufferedOutputStream(new FileOutputStream(dst),BUFFER_SIZE);
				byte[] buffer = new byte[BUFFER_SIZE];
				while(in.read(buffer)>0){
					out.write(buffer);
				}
			}finally{
				if(null !=in)	in.close();
				if(null !=out) out.close();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
