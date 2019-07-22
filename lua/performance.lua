local start = ngx.now();
for _ =1, 100000000 do
    ngx.encode_base64('123456')
end
ngx.update_time();
ngx.say(ngx.now() - start)