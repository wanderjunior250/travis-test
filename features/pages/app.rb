class App

  attr_accessor :storeId

  def initialize(storeId)
    @storeId = setStoreId(storeId)
  end

  def setStoreId(storeId)
    aux = storeId[0]
    r = storeId.downcase
    r[0] = aux
    return r
  end
  
  def comum
    Comum.new
  end

  def login
    Kernel.const_get('Login' + @storeId).new
  end
  
  def cadastro
    Kernel.const_get('Cadastro' + @storeId).new
  end
  
  def home
    Kernel.const_get('Home' + @storeId).new
  end

  def categoria
    Kernel.const_get('Categoria' + @storeId).new
  end

  def busca
    Kernel.const_get('Busca' + @storeId).new
  end

  def carrinho
    Kernel.const_get('Carrinho' + @storeId).new
  end

  def rodape
    Kernel.const_get('Rodape' + @storeId).new
  end

   def meuCadastro
    Kernel.const_get('MeuCadastro' + @storeId).new
  end

   def sserv
    Kernel.const_get('Sserv' + @storeId).new
  end
  
  def fichaProduto
    Kernel.const_get('FichaProduto' + @storeId).new
  end
  
  def meusServicos
    Kernel.const_get('MeusServicos' + @storeId).new
  end
  
  def meusPedidos
    Kernel.const_get('MeusPedidos' + @storeId).new
  end
  
  def pagamento
    Kernel.const_get('Pagamento' + @storeId).new
  end

  def confirmacao
    Kernel.const_get('Confirmacao' + @storeId).new
  end

  def identificacao
    Kernel.const_get('Identificacao' + @storeId).new
  end

end