package leadme.web.advice;

import java.beans.PropertyEditorSupport;
import java.text.ParseException;
import java.text.SimpleDateFormat;

// String property 값 변환기
public class DatePropertyEditor extends PropertyEditorSupport {
    
    SimpleDateFormat format;
    
    public DatePropertyEditor(SimpleDateFormat format) {
        this.format = format;
    }

    @Override
    public void setAsText(String text) throws IllegalArgumentException {
        try {
            this.setValue(format.parse(text));
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }
    
    @Override
    public Object getValue() {
        return super.getValue();
    }
}
