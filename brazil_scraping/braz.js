var fs = require('fs');
var cheerio = require('cheerio');
var S = require('string');

$ = cheerio.load(fs.readFileSync('brazil2.html'));

$('#noticia').each(function(noticia) {
    $(this).find('div').each(function() {
    	if (this.attribs.class == 'projetos_dados_basicos')
    	{
    		$(this).find('span').each(function() 
    		{
    			v = $(this).text();
    			v.replace(/[\n\r]/g, '');
    			v = S(v).trim().s;
    			process.stdout.write(v);
    			process.stdout.write('\t');
    		});
    		
    		$(this).find('p').each(function() 
    		{
    			v = $(this).text();
    			v = S(v).trim().s;
    			process.stdout.write(v);
    			process.stdout.write('\t');
    		});
    		$(this).find('a').each(function() 
    		{
    			v = $(this).text();
    			v.replace(/[\n\r]/g, '');
    			v = S(v).trim().s;
    			process.stdout.write(v);
    			process.stdout.write('\t');
    		});
        }
        if (this.attribs.class == 'projeto_detalhes_show')
    	{
    		
        	$(this).find('p').each(function() 
    		{
    			v = $(this).text();
    			v = S(v).trim().s;
    			process.stdout.write(v);
    			process.stdout.write('\t');
    		});
    		
    		$(this).find('a').each(function() 
    		{
    			v = $(this).text();
    			v = S(v).trim().s;
    			process.stdout.write(v);
    			process.stdout.write('\t');
    		});
    	 process.stdout.write('\r\n');
        }
        
    });
});
