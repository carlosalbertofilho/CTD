/**
 * ImpressoraCannon
 */
public class ImpressoraCannon extends Impressora {

	public String imprimir(){
        return "2";
    }
    @Override
    public boolean precisaTinta(){
        return getPorcentagemTinta() < 10 ? true : false;
    }
}
