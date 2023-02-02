

def factory_new_partner():
    partner = {
        'name': 'Pizzas Degustas',
        'email': 'contato@pizzasdegustas.com.br',
        'whatsapp': '11999999999',
        'business': 'Restaurante'
    }
    return partner


def factory_dup_name():
    partner = {
        'name': 'Pizzas Anabella',
        'email': 'contato@pizzasanabella.com.br',
        'whatsapp': '51999999999',
        'business': 'Restaurante'
    }
    return partner


def factory_partner_list():
    p_list = [
        {
            'name': 'Beira Mar',
            'email': 'contato@restaurantebeiramar.com.br',
            'whatsapp': '19999999999',
            'business': 'Restaurante'
        },
        {
            'name': 'Adega Santos',
            'email': 'contato@adegasantos.com.br',
            'whatsapp': '81999999999',
            'business': 'Conveniência'
        }
    ]

    return p_list

def factory_enable_partner():
    partner = {
        'name': 'Doceria Maria Formiga',
        'email': 'contato@docesmariaformiga.com.br',
        'whatsapp': '21999999999',
        'business': 'Restaurante'
    }
    return partner

def factory_disable_partner():
    partner = {
        'name': 'Hangar',
        'email': 'contato@hangar.com.br',
        'whatsapp': '47999999999',
        'business': 'Restaurante'
    }
    return partner

def factory_error_partner():
    partner = {
        'name': 'Almanarah',
        'email': 'contato@Almanarah.com.br',
        'whatsapp': '81999999999',
        'business': 'Restaurante'
    }
    return partner

def factory_remove_partner():
    partner = {
        'name': 'El Capitan',
        'email': 'contato@elcapitan.com.br',
        'whatsapp': '41999999999',
        'business': 'Restaurante'
    }
    return partner
        

