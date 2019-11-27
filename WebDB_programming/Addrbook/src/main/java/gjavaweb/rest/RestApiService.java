package gjavaweb.rest;
import java.util.*;

import gjavaweb.addrbook.AddrBook;
import gjavaweb.addrbook.AddrBookDAO;
import gjavaweb.addrbook.AddrBookH2DAO;

import java.util.logging.Logger;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;


@Path("/addrbook")
public class RestApiService {
	Logger logger=Logger.getLogger("RestApiService");
	AddrBookDAO dao = new AddrBookH2DAO();
	
	@GET
	@Produces(MediaType.TEXT_PLAIN)
	public String getHello() {
		return "Welcome to AddrBook WebService";
	}
	@GET
	@Path("list")
	@Produces(MediaType.APPLICATION_JSON)
	public List<AddrBook>getList(){
		List<AddrBook> datas =dao.getDBList();
		logger.info("API call: /list");
		return datas;
	}
	
	
	
	@POST
	@Path("new")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	public String newEntry(AddrBook addrbook) {
		dao.insertDB(addrbook);
		logger.info("API call: /new");
		return "Inserted!!";
	}

}
