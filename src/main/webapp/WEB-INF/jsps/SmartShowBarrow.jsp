<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="container" align="center">


    <%@include file="commons/header.jspf"%>
    <%@include file="commons/navigations.jspf"%>
    <div>
        <%--      <h3>List Of All books has been shown here </h3>--%>

        <%--        ${listofbooks}--%>
            <h2>${success}</h2>

        <section id="tabs" class="project-tab">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <nav>
                            <div  id="nav-tab" role="tablist" align="center">
                                <h4> <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Borrow Book Details</a></h4>

                            </div>
                        </nav>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">


                                <table class="table" cellspacing="0">
                                    <thead>
                                    <tr>
                                        <th>Member Name</th>
                                        <th>ListBooks</th>
                                        <th>Date of Barrow</th>
                                        <th>Return</th>
                                        <%--<th>Return</th>--%>

                                    </tr>

                                    </thead>

                                    <tbody>
                                    <c:forEach items="${data}" var="book">
                                        <tr>

                                            <td><a href="#">${book.memberName}</a></td>
                                            <td>${book.is_book1_available ? '' : book.bookName}<br/>
                                                    ${book.is_book2_available ? '' : book.bookName2}<br/>
                                                    ${book.is_book3_available ? '' : book.bookName3}</td>

                                                <%--<td><fmt:formatDate value="${book.book_date_of_barrow}" pattern="dd-MM-YYYY"></fmt:formatDate> </td>
                                                <td><fmt:formatDate value="${book.book_date_of_return}" pattern="dd-MM-YYYY"></fmt:formatDate> </td>--%>
                                            <td><fmt:formatDate value="${book.dateOfBooked}" pattern="dd-MM-YYYY"></fmt:formatDate> </td>
                                            <td><a href="/return-book?member=${book.memberName}" class="btn btn-success">Choose</a></td>
                                            <%-- <td><a href="/set-returndate?member=${book.memberName}&bookName=${book.bookName}" class="btn btn-success"> Choose Book to Return</a> </td> --%>
                                            <%-- <td><input type="date" class="date-picker date-picker-popup" required="please select date" name="dateofreturn"></td> --%>
                                        </tr>
                                    </c:forEach>


                                    </tbody>
                                </table>

                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <!-- when click button, it will go to @GetMapping and display page add new entry -->
            <a href="/sml-main" class="btn btn-success">Add New Entry</a>
    </div>
    <%@include file="commons/footer.jspf"%>
</div>
