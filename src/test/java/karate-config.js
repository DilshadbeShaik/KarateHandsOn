function fn(){
var env = karate.env;
if(!env){
env = 'dev';
}
var config = {
env : env,
myVarName : 'hello karate',
baseUrl : 'https://gorest.co.in',
tokenID : 'bac1bcd124012aa71aeb1f067c18a0d32be3c27098678bd41c909e0298d20af8'
}
if(env == 'dev'){
//customize
//e.g. config.foo = 'bar';
}else if (env =='e2e'){
//customize
}
return config;
}