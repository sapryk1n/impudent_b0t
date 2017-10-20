require 'telegram/bot'
token = '412992233:AAHG8rlxfaDWsz0XbPGUkluYBY_LbD4iq7c'
Telegram::Bot::Client.run(token) do|bot|
 Telegram::Bot::Client.run(token, logger: Logger.new($stderr)) do |bot|
  bot.logger.info('Бот запущен')
  bot.listen do |message|
  	case message.text
  	when '/start'
  		bot.api.send_message(chat_id: message.chat.id, text: "Кто ты такой ?

  			Чё ты тут ваще забыл?")

  	when '/кинуть орех'
  		bot.api.send_message(chat_id: message.chat.id, text: "Аа-ай!")
  		bot.api.send_message(chat_id: message.chat.id, text: "Больно же!")
  		bot.api.send_message(chat_id: message.chat.id, text: "(Думает:пидрила ссаная..")
    when 'Привет'
    	bot.api.send_message(chat_id: message.chat.id, text: "Ну здарова, #{message.from.first_name} !")
    when 'Здрасте'
    	bot.api.send_message(chat_id: message.chat.id, text: "Ну здарова")
    	bot.api.send_message(chat_id: message.chat.id, text: "хуила., #{message.from.first_name}")
    	
    when 'Здрасьте'
    	bot.api.send_message(chat_id: message.chat.id, text: "Ну здарова")
    	bot.api.send_message(chat_id: message.chat.id, text: "хуила.")

    when 'Прувет'
    	bot.api.send_message(chat_id: message.chat.id, text: "Ну здарова, #{message.from.first_name} !")
    	
     when 'Здравствуй'
    	bot.api.send_message(chat_id: message.chat.id, text: "Ну здарова, #{message.from.first_name} !")
    	bot.api.send_message(chat_id: message.chat.id, text: "Чё надо?")

    when 'да ничего'
    	bot.api.send_message(chat_id: message.chat.id, text: "Вот и иди на хуй!")

    end
  end
end
end