function fn() {
    var env = karate.env;
    if (!env) {
        env = 'dev';
    }

    var config = {
        env: env,
        baseURL: karate.properties["test.server.url"]
    };

    karate.log('karate.env=', env);
    karate.log('baseURL=', env);

    return config;
}