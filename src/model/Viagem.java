package model;

public class Viagem {

	private float valor;
	private int tempo;
	private String periodo;
	private String[] tipos;
	private Roteiro roteiro = null;
	
	
	public float getValor() {
		return valor;
	}
	public void setValor(float valor) {
		this.valor = valor;
	}
	public int getTempo() {
		return tempo;
	}
	public void setTempo(int tempo) {
		this.tempo = tempo;
	}
	public String getPeriodo() {
		return periodo;
	}
	public void setPeriodo(String periodo) {
		this.periodo = periodo;
	}
	public String[] getTipos() {
		return tipos;
	}
	public void setTipos(String[] tipos) {
		this.tipos = tipos;
	}
	public Roteiro getRoteiro() {
		return roteiro;
	}
	public void setRoteiro(Roteiro roteiro) {
		this.roteiro = roteiro;
	}
	
	

}
