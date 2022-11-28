from random import randint


def message_generation(message):
    return message + ' ' + str(randint(1000, 10000))


def post_message(title):
    return 'Создан новый пост с заголовком "' + title + '"'


def delete_post_message(title):
    return 'Пост с заголовком "' + title + ' был удален"'


def comment_message(comment):
    return 'Добавлен новый комментарий: "' + comment + '"'
