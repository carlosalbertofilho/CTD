import java.util.Date;

abstract class Impressora {
    private String Modelo;
    private String tipoConexao;
    private Date dataFabricacao;
    private int folhasDisponiveis;
    private double porcentagemTinta;

    abstract String imprimir();

    public boolean temPapel(){
        return folhasDisponiveis > 0 ? true : false;
    }
    public boolean precisaTinta(){
         return  porcentagemTinta < 5.0 ? true : false;
    }

    public Date getDataFabricacao() {
        return dataFabricacao;
    }

    public void setDataFabricacao(Date dataFabricacao) {
        this.dataFabricacao = dataFabricacao;
    }

    public String getTipoConexao() {
        return tipoConexao;
    }

    public void setTipoConexao(String tipoConexao) {
        this.tipoConexao = tipoConexao;
    }

    public String getModelo() {
        return Modelo;
    }

    public void setModelo(String modelo) {
        Modelo = modelo;
    }

    public double getPorcentagemTinta() {
        return porcentagemTinta;
    }

    public void setPorcentagemTinta(double porcentagemTinta) {
        this.porcentagemTinta = porcentagemTinta;
    }

    public int getFolhasDisponiveis() {
        return folhasDisponiveis;
    }

    public void setFolhasDisponiveis(int folhasDisponiveis) {
        this.folhasDisponiveis = folhasDisponiveis;
    }

}
