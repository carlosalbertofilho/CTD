import java.text.DateFormat;
import java.util.Calendar;
import java.util.Date;

class Impressora {
    private String modelo;
    private String tipoConexao;
    private Date dataFabricacao;
    private static int folhasDisponiveis;

    public static int getFolhasDisponiveis() {
        return folhasDisponiveis;
    }

    public static void setFolhasDisponiveis(int folhasDisponiveis) {
        Impressora.folhasDisponiveis = folhasDisponiveis;
    }

    public Date getDataFabricacao() {
        return this.dataFabricacao;
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
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    @Override
    public String toString() {
        DateFormat formato = DateFormat.getDateInstance(DateFormat.SHORT);
        String msg = "Impressora " + this.getModelo();
        msg += ", com a conexão " + this.getTipoConexao();
        msg += ", fabricada em " + formato.format(this.getDataFabricacao());
        msg += ", folhas restantes " + getFolhasDisponiveis();
        return msg;
    }

    public Impressora(String modelo, String tipoConexao, Date dataFabricacao) {
        this.setModelo(modelo);
        this.setTipoConexao(tipoConexao);
        this.setDataFabricacao(dataFabricacao);
    }

    public static void main(String[] args) {
        Calendar data = Calendar.getInstance();
        data.set(2018, 06, 15);
        Impressora impressora1 = new Impressora("Epson", "WIFI", data.getTime());
        System.out.println(impressora1);
    }
}
