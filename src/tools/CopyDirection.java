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
      //        fileCopy(f.getPath(),des+"\\"+f.getName()); //调用文件拷贝的方法  
                picCopy(f.getPath(),des+"\\"+f.getName());	//调用另一种文件拷贝方法
            }else if(f.isDirectory()){  
                copy(f.getPath(),des+"\\"+f.getName());  
            }  
        }  
          
    }  
  
    /** 
     * 文件拷贝的方法 
     * 用该方法拷贝图片会造成图片无法识别
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
     * 字节流的方式拷贝文件，参数为File类型，inputStream拷贝图片会造成无法识别
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
     * 图片拷贝方法一
     * 参数为String类型
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
     * 图片拷贝方法二
     * 参数为File类型
	 *用带缓存的方法，按字节读取来上传图片
	 * @param src 待上传文件（source）
	 * @param dst 目的文件（destination）
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
