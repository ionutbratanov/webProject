package parser;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class AnafCsvParser extends CSVParser {

	public AnafCsvParser(File file) {
		super(file);
		// TODO Auto-generated constructor stub
	}
	
	List listaFirme = new ArrayList();
	//creare colectie initiala goala
	

	public List getListaFirme() {
		return listaFirme;
	}


	@Override
	protected void getTokensFromLine(String[] tokens) {
		// TODO Auto-generated method stub
		Firma firma = new Firma();
		
		firma.setDENUMIRE(tokens[0]);
		System.out.println(tokens[0]);
//		firma.setCUI(tokens[1]);
		if (tokens[1]==null) System.out.println("CUI NULL!!!!!!! ptr "+ tokens[0]);
		//System.out.println(tokens[1]);
		firma.setCOD_INMATRICULARE(tokens[2]);
		//System.out.println(tokens[2]);
		firma.setEUID(tokens[3]);
		//System.out.println(tokens[3]);
		firma.setSTARE_FIRMA(tokens[4]);
		//System.out.println(tokens[4]);
		firma.setADRESA(tokens[5]);
		//System.out.println(tokens[5]);
		
		listaFirme.add(firma);
		//adaug firma citita de pe o linie din csv la lista de firme(colectie)

	}

}
