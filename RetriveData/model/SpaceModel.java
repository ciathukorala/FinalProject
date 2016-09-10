package model;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.daoSpace;

public class SpaceModel {
			public ArrayList GetMessages(Connection connection, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
			ArrayList messages = null;
			try {
			// Here you can validate before connecting DAO class, eg. User session condition 
			daoSpace project= new daoSpace();
			messages=project.GetMessages(connection, request, response);
			} 
			catch (Exception e) {
			throw e;
			}
			return messages;
			}

}
