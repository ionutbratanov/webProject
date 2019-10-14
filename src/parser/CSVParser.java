package parser;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;

public abstract class CSVParser {
    File file;
    public CSVParser(File file) {
        super();
        this.file = file;
    }
protected abstract String[] getTokensFromLine(String[] tokens);
    
public void parse() {
        BufferedReader br = null;
       String line = "";
//       try {
//           br = new BufferedReader(new FileReader(file));
//           while ((line = br.readLine()) != null) {
//               // use comma as separator
//               String[] tokens = line.split("^");
//             //  System.out.println(tokens[0] + " " +tokens[1]+" "+tokens[2]);
//               getTokensFromLine(tokens);
//           }
//       } catch (FileNotFoundException e) {
//           e.printStackTrace();
//       } catch (IOException e) {
//           e.printStackTrace();
//       } finally {
//           if (br != null) {
//               try {
//                   br.close();
//               } catch (IOException e) {
//                   e.printStackTrace();
//               }
//           }
//       }
       
       try {
           //br = new BufferedReader(new FileReader(file));
           br = new BufferedReader(new InputStreamReader(new FileInputStream(file), "UTF8"));
           while ((line = br.readLine()) != null) {
        	   
               if (!line.trim().isEmpty()) {
				// use comma as separator
				//System.out.println("PozitieSeparator="+line.indexOf('^'));
				int i = 0;
				int poz = line.indexOf('^');
				String[] tokens = new String[6];
				while (poz > 0) {
					tokens[i] = line.substring(0, poz);
					line = line.substring(poz + 1);
					poz = line.indexOf('^');
					
					i++;
				}
				tokens[i] = line;
				//String[] tokens = line.split("^");
				//System.out.println(tokens[0] + " " +tokens[1]+" "+tokens[2]);
				
				if (i==5) getTokensFromLine(tokens);
			}
           }
       } catch (FileNotFoundException e) {
           e.printStackTrace();
       } catch (IOException e) {
           e.printStackTrace();
       } finally {
           if (br != null) {
               try {
                   br.close();
               } catch (IOException e) {
                   e.printStackTrace();
               }
           }
       }
       
    }
}
