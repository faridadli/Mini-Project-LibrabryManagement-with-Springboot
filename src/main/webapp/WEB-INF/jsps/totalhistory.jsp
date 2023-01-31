<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="container" align="center">
    <%@include file="commons/header.jspf"%>
    <%@include file="commons/navigations.jspf"%>

    <div class="container">
        <div class="row">

            <div class="col" align="center">
                <br>
                <p style="font: medium" align="justify">

                    <strong>Complete Book History</strong>
                </p>

                <div>
                    <table class="table table-hover">

                        <tr>
                            <th>No.</th>
                            <th> Member Name</th>
                            <th> List of Books</th>
                            <th> Date of Barrow</th>
                            <th> Date of Return</th>
                        </tr>
                        <c:forEach items="${total}" var="book" varStatus="count">
                            <tr>
                                <td>${count.count}</td>
                                <td><a href="#">${book.memberName}</a></td>
                                
                                <td>
                                    <c:if test="${book.bookName!=''}">${book.bookName} ,</c:if>
                                    <c:if test="${book.bookName2!=''}">${book.bookName2},</c:if>
                                    <c:if test="${book.bookName3!=''}">${book.bookName3}</c:if>
                                </td>

                                    <%--<td><fmt:formatDate value="${book.book_date_of_barrow}" pattern="dd-MM-YYYY"></fmt:formatDate> </td>
                                    <td><fmt:formatDate value="${book.book_date_of_return}" pattern="dd-MM-YYYY"></fmt:formatDate> </td>--%>
                                <td><fmt:formatDate value="${book.dateOfBooked}" pattern="dd-MM-YYYY"></fmt:formatDate> </td>
                                <td><fmt:formatDate value="${book.dateOfReturn}" pattern="dd-MM-YYYY"></fmt:formatDate></td>

                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>

        </div>
    </div>


</div>
<%@include file="commons/footer.jspf"%>
