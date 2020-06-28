## Estrutura do banco de dados

### Tabela ``cases``

|Nome        		|Tipo     	|Descrição  								|Valores																			|
|-------------------|-----------|-------------------------------------------|-----------------------------------------------------------------------------------|
|id					|int		|Identificador no nosso bando de dados		|[0-9] 																				|
|lat		|float		|Latitude do caso confirmado	|-90.0 a 90.0 																				|
|lng		|float		|Longitude do caso confirmado	|-180.0 a 180.0 																				|


### Tabela ``products``

|Nome        		|Tipo    	|Descrição  								|Valores																			|
|-------------------|-----------|-------------------------------------------|-----------------------------------------------------------------------------------|
|id					|int		|Identificador no nosso bando de dados		|[0-9]			 																	|
|loja				|varchar	|Nome da loja em que o produto se encontra	|[A-Za-z]																			|
|nome				|varchar	|Nome do produto							| 																					|
|imagem				|varchar	|Url para imagem do produto 				|																					|
|status				|tinyint	|Status										|**0**: Indisponivel; **1**: Disponivel;											|
|preco				|double		|Preço										|																					|
|url				|varchar	|Url										|																					|
|data_atualizacao	|timestamp	|Data de atualização no banco de dados		|yyyy-mm-dd hh:mm:ss																|
|categoria			|varchar	|Categoria									|**Alcool**; **Mascara**															|



### Tabela ``test_places``

|Nome        		|Tipo      	|Descrição  					                			|Valores																			|
|---------------|-----------|-------------------------------------------|-----------------------------------------------------------------------------------|
|id			      	|int		    |Identificador no nosso bando de dados		  | [0-9]			 																	|
|lat		        |float	  	|Latitude do local de teste	                |-90.0 a 90.0 																|
|lng		        |float	   	|Longitude do local de teste	              |-180.0 a 180.0 															|
|name		        |varchar		|Nome do local de teste	                    |-90.0 a 90.0 																|
|img_url	    	|varchar		|Imagem do local de teste	                  |Link para a imagem do local 									|
|created_at	  	|datetime		|Data de criação no banco	                  |YYYY-MM-DD HH:mm:SS.ZZZ 											|
|updated_at	  	|datetime		|Data de atualização no banco	              |YYYY-MM-DD HH:mm:SS.ZZZ 											|



### Tabela ``people``

|Nome        		|Tipo      	|Descrição  					                			|Valores																			|
|---------------|-----------|-------------------------------------------|-----------------------------------------------------------------------------------|
|id			      	|int		    |Identificador no nosso bando de dados		  | [0-9]			 																	|
|name		        |float	  	|Latitude do local de teste	                |-90.0 a 90.0 																|
|address		    |float	   	|Longitude do local de teste	              |-180.0 a 180.0 															|
|infected		    |int	     	|Nome do local de teste	                    |-90.0 a 90.0 																|
|created_at	  	|datetime		|Data de criação no banco	                  |YYYY-MM-DD HH:mm:SS.ZZZ 											|
|updated_at	  	|datetime		|Data de atualização no banco	              |YYYY-MM-DD HH:mm:SS.ZZZ 											|
