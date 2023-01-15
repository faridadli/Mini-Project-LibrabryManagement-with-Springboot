package com.verinon.lbm.services;

import com.verinon.lbm.pojos.SmartBookSystem;

import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class SmartServices {
    List<SmartBookSystem> smartBookSystems = new ArrayList<>();
    List<SmartBookSystem> totalHostory = new ArrayList<>();
    BookServices books = new BookServices();

    public List<SmartBookSystem> getDetailsAboutMember(String memberName, String bookName, String bookName2,
            String bookName3, Date date) {

        if (!bookName.equals("Select Book One") && !bookName2.equals("Select Book Two")
                && !bookName3.equals("Select Book Three")) {
            smartBookSystems.add(new SmartBookSystem(memberName, bookName, bookName2, bookName3, date));
            totalHostory.add(new SmartBookSystem(memberName, bookName, bookName2, bookName3, date));
            books.borrowBook(bookName);
            books.borrowBook(bookName2);
            books.borrowBook(bookName3);
        } else if (!bookName.equals("Select Book One") && bookName2.equals("Select Book Two")
                && bookName3.equals("Select Book Three")) {
            smartBookSystems.add(new SmartBookSystem(memberName, bookName, "", "", date));
            totalHostory.add(new SmartBookSystem(memberName, bookName, "", "", date));
            books.borrowBook(bookName);
        } else if (!bookName.equals("Select Book One") && !bookName2.equals("Select Book Two")
                && bookName3.equals("Select Book Three")) {
            smartBookSystems.add(new SmartBookSystem(memberName, bookName, bookName2, "", date));
            totalHostory.add(new SmartBookSystem(memberName, bookName, bookName2, "", date));
            books.borrowBook(bookName);
            books.borrowBook(bookName2);
        }
        return smartBookSystems;
    }

    public List<SmartBookSystem> getTotalDetails() {
        return smartBookSystems;
    }

    public void delMember(String book_name) {
        Iterator it = smartBookSystems.iterator();

        while (it.hasNext()) {
            SmartBookSystem sbs = (SmartBookSystem) it.next();
            if (sbs.getBookName().equalsIgnoreCase(book_name)) {
                it.remove();
            }
        }
    }

    public List<SmartBookSystem> showTotalHistory() {
        return totalHostory;
    }

    public SmartBookSystem checkMember(String name) {
        Iterator it = totalHostory.iterator();

        while (it.hasNext()) {
            SmartBookSystem sbs = (SmartBookSystem) it.next();
            if (sbs.getMemberName().equalsIgnoreCase(name)) {
                sbs.setDateOfReturn(new Date());
                return sbs;
            }
        }

        return null;
    }
}
