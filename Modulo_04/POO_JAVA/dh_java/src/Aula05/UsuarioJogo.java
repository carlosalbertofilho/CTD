
class UsuarioJogo {
    private String nome;
    private String nickName;
    private int prontuacao;
    private int nivel;
    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public String getNickName() {
        return nickName;
    }
    public void setNickName(String nickName) {
        this.nickName = nickName;
    }
    public int getProntuacao() {
        return prontuacao;
    }
    public void setProntuacao(int prontuacao) {
        this.prontuacao = prontuacao;
    }
    public int getNivel() {
        return nivel;
    }
    public void setNivel(int nivel) {
        this.nivel = nivel;
    }

    public UsuarioJogo( String nome, String nickname){
        this.setNome(nome);
        this.setNickName(nickname);
        this.setProntuacao(0);
        this.setNivel(1);
    }

    public void aumentarPontucao() {
        this.setProntuacao(this.getProntuacao() + 1 );
    }

    public void subirNivel() {
        this.setNivel(this.getNivel() + 1);
    }

    public void bonus(int valor) {
        this.setProntuacao( this.getProntuacao() + valor );
    }

    @Override
    public String toString() {
        String msg = "O Jogador " + this.getNome();
        msg += ", com nickname " + this.getNickName();
        msg += ", tem nível " + this.getNivel();
        msg += ", com a pontuação " + this.getProntuacao();
        return msg;
    }

    public static void main(String[] args) {
        UsuarioJogo usuario1 = new UsuarioJogo("Carlos Filho", "tchotchoz@");
        UsuarioJogo usuario2 = new UsuarioJogo("Denis", "DJ");

        usuario1.aumentarPontucao();
        usuario2.bonus(2);

        usuario1.subirNivel();
        usuario2.subirNivel();

        System.out.println(usuario1);
        System.out.println(usuario2);
    }

}
