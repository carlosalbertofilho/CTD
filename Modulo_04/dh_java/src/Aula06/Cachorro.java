import java.time.LocalDate;

class Cachorro {
    private String nome;
    private String raca;
    private LocalDate anoNascimento;
    private float peso;
    private Boolean estaAptoAdocao;
    private Boolean seChip;
    private Boolean seFeridos;
    public Boolean getSeFeridos() {
        return seFeridos;
    }
    public void setSeFeridos(Boolean seFeridos) {
        this.seFeridos = seFeridos;
    }
    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public String getRaca() {
        return raca;
    }
    public void setRaca(String raca) {
        this.raca = raca;
    }
    public LocalDate getAnoNascimento() {
        return anoNascimento;
    }
    public void setAnoNascimento(LocalDate anoNascimento) {
        this.anoNascimento = anoNascimento;
    }
    public float getPeso() {
        return peso;
    }
    public void setPeso(float peso) {
        this.peso = peso;
    }
    public Boolean getEstaAptoAdocao() {
        return estaAptoAdocao;
    }
    public void setEstaAptoAdocao(Boolean estaAptoAdocao) {
        this.estaAptoAdocao = estaAptoAdocao;
    }
    public Boolean getSeChip() {
        return seChip;
    }
    public void setSeChip(Boolean seChip) {
        this.seChip = seChip;
    }
    public Boolean adocao(){
        Boolean adocaoOK = false;
        if (this.getPeso() > 5 && !this.getSeFeridos()) {
            adocaoOK = true;
        }
        return adocaoOK;
    }
    public int getIdade(){
        LocalDate dataAtual = LocalDate.now();
        return this.getAnoNascimento().getYear() - dataAtual.getYear();
    }
    public Cachorro(String nome, String raca, LocalDate anoNascimento, float peso, Boolean estaAptoAdocao,
            Boolean seChip, Boolean seFeridos) {
        this.nome = nome;
        this.raca = raca;
        this.anoNascimento = anoNascimento;
        this.peso = peso;
        this.estaAptoAdocao = estaAptoAdocao;
        this.seChip = seChip;
        this.seFeridos = seFeridos;
    }

}
