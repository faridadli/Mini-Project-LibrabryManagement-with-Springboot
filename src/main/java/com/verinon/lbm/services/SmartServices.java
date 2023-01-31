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

        // this is to store history of returned books
        totalHostory.add(new SmartBookSystem(memberName, "", "", "", date, true, true, true));

        if (!bookName.equals("Select Book One") && !bookName2.equals("Select Book Two")
                && !bookName3.equals("Select Book Three")) {
            smartBookSystems
                    .add(new SmartBookSystem(memberName, bookName, bookName2, bookName3, date, false, false, false));
            // totalHostory.add(new SmartBookSystem(memberName, bookName, bookName2,
            // bookName3, date));
            books.borrowBook(bookName);
            books.borrowBook(bookName2);
            books.borrowBook(bookName3);
        } else if (!bookName.equals("Select Book One") && bookName2.equals("Select Book Two")
                && bookName3.equals("Select Book Three")) {
            smartBookSystems.add(new SmartBookSystem(memberName, bookName, "", "", date, false, true, true));
            // totalHostory.add(new SmartBookSystem(memberName, bookName, "", "", date));
            books.borrowBook(bookName);
        } else if (!bookName.equals("Select Book One") && !bookName2.equals("Select Book Two")
                && bookName3.equals("Select Book Three")) {
            smartBookSystems.add(new SmartBookSystem(memberName, bookName, bookName2, "", date, false, false, true));
            // totalHostory.add(new SmartBookSystem(memberName, bookName, bookName2, "",
            // date));
            books.borrowBook(bookName);
            books.borrowBook(bookName2);
        }
        return smartBookSystems;
    }

    public List<SmartBookSystem> getTotalDetails() {
        return smartBookSystems;
    }

    public SmartBookSystem getBorrowedList(String memberName) {
        Iterator it = smartBookSystems.iterator();

        while (it.hasNext()) {
            SmartBookSystem sbs = (SmartBookSystem) it.next();
            if (sbs.getMemberName().equalsIgnoreCase(memberName)) {
                return sbs;
            }
        }
        return null;
    }

    public void delMember(String member, String bookName) {
        Iterator it = smartBookSystems.iterator();

        while (it.hasNext()) {
            SmartBookSystem sbs = (SmartBookSystem) it.next();
            if (sbs.getMemberName().equalsIgnoreCase(member)) {
                if (sbs.getBookName().equalsIgnoreCase(bookName)) {
                    sbs.setIs_book1_available(true);
                } else if (sbs.getBookName2().equalsIgnoreCase(bookName)) {
                    sbs.setIs_book2_available(true);
                } else if (sbs.getBookName3().equalsIgnoreCase(bookName)) {
                    sbs.setIs_book3_available(true);
                }

                if (sbs.isIs_book1_available() && sbs.isIs_book2_available() && sbs.isIs_book3_available()) {
                    it.remove();
                    break;
                }
            }
        }
    }

    public List<SmartBookSystem> showTotalHistory() {
        return totalHostory;
    }

    public SmartBookSystem checkMember(String name, String bookName) {
        Iterator it = totalHostory.iterator();
        Iterator it2 = smartBookSystems.iterator();
        while (it.hasNext() && it2.hasNext()) {
            SmartBookSystem sbs = (SmartBookSystem) it.next();
            SmartBookSystem displayList = (SmartBookSystem) it2.next();
            if (sbs.getMemberName().equalsIgnoreCase(name)) {
                sbs.setDateOfReturn(new Date());

                if (displayList.getBookName().equalsIgnoreCase(bookName)) {
                    sbs.setBookName(bookName);
                    displayList.setBookName("");
                }
                if (displayList.getBookName2().equalsIgnoreCase(bookName)) {
                    sbs.setBookName2(bookName);
                    displayList.setBookName2("");
                }
                if (displayList.getBookName3().equalsIgnoreCase(bookName)) {
                    sbs.setBookName3(bookName);
                    displayList.setBookName3("");
                }
                // remove displayList if all books are returned
                if (displayList.getBookName().equalsIgnoreCase("")
                        && displayList.getBookName2().equalsIgnoreCase("")
                        && displayList.getBookName3().equalsIgnoreCase("")) {
                    it2.remove();
                }
                return sbs;
            }
        }

        return null;
    }
}
