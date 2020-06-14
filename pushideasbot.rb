require 'telegram/bot'
token = ENV['BOT_TOKEN']

Telegram::Bot::Client.run(token) do |bot|
	bot.listen do |message|
	case message.text
	when '/start'
		bot.api.send_message(chat_id: message.chat.id, text: "Go code!")
	when '/start@PushIdeasBot'
		bot.api.send_message(chat_id: message.chat.id, text: "Go code!")		
	when '/link'
		bot.api.send_message(chat_id: message.chat.id, text: "Alguns links úteis e disponibilizados pelos membros do grupo.
		Nome do link: link
		
		Utilize o seu e-mail principal para solicitar acesso ao driver, o acesso ao conteúdo é livre após a aprovação.
		O tempo de aprovação é inversamente proporcional ao número de provas e trabalhos no período. Be patient & Go code!")		
	when '/link@PushIdeasBot'
		bot.api.send_message(chat_id: message.chat.id, text: "Alguns links úteis e disponibilizados pelos membros do grupo.
		Nome do link: link

		Utilize o seu e-mail principal para solicitar acesso ao driver, o acesso ao conteúdo é livre após a aprovação.
		O tempo de aprovação é inversamente proporcional ao número de provas e trabalhos no período. Be patient & Go code!")
	when '/regras'
		bot.api.send_message(chat_id: message.chat.id, text: "Não há regras, apenas bom senso. Seja sensato!")
	when '/regras@PushIdeasBot'
		bot.api.send_message(chat_id: message.chat.id, text: "Não há regras, apenas bom senso. Seja sensato!")
	when '/help'
		bot.api.send_message(chat_id: message.chat.id, text: "Olá, membro! Alguns comandos úteis são:
		/start - Digo 'Go code!'
		/link - Falo os links.
		/regras - Falo as regras.
		/help - Digo os comandos.")
	when '/help@PushIdeasBot'
		bot.api.send_message(chat_id: message.chat.id, text: "Olá, membro! Alguns comandos úteis são:
		/start - Digo 'Go code!'
		/link - Falo os links.
		/regras - Falo as regras.
		/help - Digo os comandos.")
	end
end
end
