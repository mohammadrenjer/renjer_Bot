local function run(msg, matches)
    if is_owner(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['antifosh'] then
                lock_fosh = data[tostring(msg.to.id)]['settings']['antifosh']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_fosh == "yes" then
        send_large_msg(chat, 'بدلیل فحاشی از گروه سیکتیر شدید')
        chat_del_user(chat, user, ok_cb, true)
    end
end
 
return {
  patterns = {
    "کس ننه رنجر(.*)",
    "ادمین لاشی(.*)",
    "ننه رنجر(.*)",
    "ننه رنجرو گاییدم(.*)",
    "کس خوار رنجر(.*)",
    "کس ننه ادمین(.*)",
    "ننه ادمین(.*)",
    "خوار ادمین(.*)",
    "کیرم تو اتحاد رنجر(.*)"
  },
  run = run
}
--Copyright and edit; @behroozyaghi
--Persian Translate; @behroozyaghi
--ch : @nod32team
--کپی بدون ذکر منبع حرام است--
