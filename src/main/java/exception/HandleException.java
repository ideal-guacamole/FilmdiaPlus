package exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by mac on 2017/5/9.
 */
@ControllerAdvice
public class HandleException {

    @ExceptionHandler
    public ModelAndView handleException(Exception ex){
//        System.out.println("---> 出现异常： " + ex);
        ModelAndView mv = new ModelAndView("film/error");
        mv.addObject("exception",ex);
        return mv;
    }
}
