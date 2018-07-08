<?php 

namespace App;

use App\Models\Good;

Class Router 
{
    protected $params; // Массив состоящий из элементов пути
    protected $method; // Метод которым обратились к приложению.
                       // www.site.ru/param0/param1/param2/...
                       // 0 элемент -  param0, и т.д. 
    /**
     *  $this->method -  название метода, который был использован
     *  $this->params - параметры. То что было передно в адресной строке
     *  www.site.ru/param0/param1/param2/...
     *
     *   @return Функция может вернуть результат работы контроллера. 
     *   Например срендеренный вид. По текущий задумке это будет то 
     *   единственное, что скрипт выведет в браузер оператором echo.  
     *   Еще один возможный вариант - роутер или контролер могут отправить
     *   HTTP ответ (например сообщение об ошибке при обращении к не 
     *   существующей ошибке или редирект. В этом случае управление 
     *   не возвращается в приложение. ЭТО НУЖНО ОБДУМАТЬ)
     */

    public function callController()  
    {
        $this->getMethodAndPath();
        $out = '';
        switch ($this->params[0]) {
        case '':
            break;

        case 'catalog':
            $pageNum = (count($this->params)>1) ? (int)$this->params[1] : 1;
            $item = new Good;
            $page = new Paginator($item, 8);
            $countOfPage = $page->getPageCount();
            $goods = $page->getPage($pageNum);

            $loader = new \Twig_Loader_Filesystem(
                __DIR__.'/../view'
            );

            $twig = new \Twig_Environment(
                $loader, 
                array('cache' => false,)
            );
            
            $out = $twig->render('main.html',
                [
                    'goods' => $goods,
                    'countOfPages' => $countOfPage,
                    'pageNum' => $pageNum
                ]
            );

            break;

        default:
            header("HTTP/1.0 404 Not Found");
            die;
        }
        return $out;
    }

    // Вспомогательная функция. Извлекает метод и разбирает урл.
    private function getMethodAndPath()
    {
        // Извлекаем название метода.
        $this->method = $_SERVER['REQUEST_METHOD'];
        // извлекаем содержание адресной строки и упаковаваем массив
        $arr = explode('/', $_SERVER['REQUEST_URI']);
        $arr = array_filter($arr); 

        //Сейчас в массиве $arr сейчас компоненты адресной строки
        //если запрос типа GET то в конце строки могут оказаься параметры
        //вида  ?param1=fjsalf&param2=sdsadas
        //Нужно проверить последний элемент и исключить из него параметры:

        $tmp = array_pop($arr);
        $tmp = explode('?', $tmp);
        $tmp = $tmp[0];
        $arr[] = $tmp;
        $this->params = array_values($arr);
    }

}
