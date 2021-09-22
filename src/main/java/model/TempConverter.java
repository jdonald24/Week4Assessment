package model;

/**
 * @author Austin Donald - ajdonald
 * CIS175 - Fall 2021
 * Sep 21, 2021
 */
public class TempConverter {
	private double celsius;
	private double fahrenheit;
	public TempConverter () {
		
	}
	public TempConverter (double celsius, double fahrenheit) {
		this.celsius = celsius;
		this.fahrenheit = fahrenheit;
	}
	/**
	 * @return the celsius
	 */
	public double getCelsius() {
		return celsius;
	}
	/**
	 * @param celsius the celsius to set
	 */
	public void setCelsius(double celsius) {
		this.celsius = celsius;
	}
	/**
	 * @return the fahrenheit
	 */
	public double getFahrenheit() {
		return fahrenheit;
	}
	/**
	 * @param fahrenheit the fahrenheit to set
	 */
	public void setFahrenheit(double fahrenheit) {
		this.fahrenheit = fahrenheit;
	}
	@Override
	public String toString() {
		return "TempConverter [celsius=" + celsius + ", fahrenheit=" + fahrenheit + "]";
	}
	public void fToC () {
		double nCelsius = (this.fahrenheit-32)/1.8;
		this.celsius = nCelsius;
	}
	public void cToF () {
		double nFahrenheit = (this.celsius*1.8)+32;
		this.fahrenheit = nFahrenheit;
	}
}
