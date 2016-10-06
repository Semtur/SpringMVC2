<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <title>Prog.kiev.ua</title>
    </head>
    <body>
        <div align="center">
            <form action="/delete_photos" method="post">
                <table>
                    <c:forEach var="entry" items="${photos}">
                        <tr>
                            <td>Photo id: <c:out value="${entry.key}"/></td>
                            <td><a href="/photo/<c:out value="${entry.key}"/>"><img height="100" width="100"  src="/photo/<c:out value="${entry.key}"/>"/></a></td>
                        </tr>
                    </c:forEach>
                </table>
                <input type="submit" value="Delete Photos"/>
            </form>
        </div>
    </body>
</html>