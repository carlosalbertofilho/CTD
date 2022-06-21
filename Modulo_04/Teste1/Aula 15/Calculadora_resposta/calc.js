function soma(a,b){
    if (isNaN(a) || isNaN(b)) {
        return 0;
    }
    else{
        return a+b;
    }
}

function subtracao(a,b){
    if (isNaN(a) || isNaN(b)) {
        return 0;
    }
    else{
        return a-b;
    }
}

function multiplicacao(a,b){
    if (isNaN(a) || isNaN(b)) {
        return 0;
    }
    else{
        return a*b;
    }
}

function divisao(a,b){
    if (isNaN(a) || isNaN(b) || b==0 || a==null || b==null) {
        return 0;
    }
    else{
        return a/b;
    }
}

module.exports = {soma, subtracao, multiplicacao, divisao};
