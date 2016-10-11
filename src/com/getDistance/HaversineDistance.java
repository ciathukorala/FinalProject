package com.getDistance;
 
/**
 * This is the implementation Haversine Distance Algorithm between two places
 * @author ananth
 *  R = earth’s radius (mean radius = 6,371km)
    Δlat = lat2− lat1
    Δlong = long2− long1
    a = sin²(Δlat/2) + cos(lat1).cos(lat2).sin²(Δlong/2)
    c = 2.atan2(√a, √(1−a))
    d = R.c
 *
 */
 
public class HaversineDistance {
 
	public static void main(String args[]){
		distance(6.585395,7.086415,79.960740,80.033511);
	}
    /**
     * @param args
     * arg 1- latitude 1
     * arg 2 - latitude 2
     * arg 3 - longitude 1
     * arg 4 - longitude 2
     * 
     */
	public static double distance(double lat1, double lat2, double lon1,
	        double lon2) {

	    final int R = 6371; // Radius of the earth

	    Double latDistance = Math.toRadians(lat2 - lat1);
	    Double lonDistance = Math.toRadians(lon2 - lon1);
	    Double a = Math.sin(latDistance / 2) * Math.sin(latDistance / 2)
	            + Math.cos(Math.toRadians(lat1)) * Math.cos(Math.toRadians(lat2))
	            * Math.sin(lonDistance / 2) * Math.sin(lonDistance / 2);
	    Double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
	    double distance = R * c * 1000; // convert to meters

	   

	    //distance = Math.pow(distance);
System.out.println(Math.sqrt(distance));
	    return Math.sqrt(distance);
	}
 
}