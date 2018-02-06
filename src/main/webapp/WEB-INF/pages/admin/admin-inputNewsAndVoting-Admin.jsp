<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<style>
    <%@include file='/style/index/inputNewsAndVoting-Admin.css' %>
</style>


<div class="container-fluid">
    <div class="votingInput col-xs-6">
        <form action="/addVoting" method="post">
            <input type="text" name="votingName" placeholder="Назва голосування">
            <input type="text" name="votingShort" placeholder="Короткий опис">
            <input type="text" name="votingText" placeholder="Текст голосування">
            <input type="submit" value="addVoting">
            <input type="reset">
        </form>
    </div>

    <%--<sec:authentication var="user" property="principal">--%>
        <%--<sec:authorize access="hasAnyRole('USER') and isAuthenticated()">--%>
            <div class="votingInput col-xs-6">
                <form action="/addVote" method="post">
                    <input type="hidden" name="votingId" value="${dtoVoting.votingId}">

                    <input type="text" name="vote" placeholder="true/false">

                    <input type="hidden" name="userId" value="${user.id}">
                    <input type="submit" value="addVote">
                    <input type="reset">
                </form>
            </div>
        <%--</sec:authorize>--%>
    <%--</sec:authentication>--%>

    <div class="newsInput col-xs-6">
        <form action="/addNews" method="post" enctype="multipart/form-data">
            <input type="text" name="newsName" placeholder="Заголовок новини">
            <input type="text" name="newsShort" placeholder="Коротко про новину">
            <input type="text" name="newsText" placeholder="Текст новини">
            <input type="file" name="newsbackscreen" placeholder="Backsreen">
            <input type="hidden" name="newsAuthor" value="${user.name}">
            <input type="submit" value="addNews">
            <input type="reset">
        </form>
    </div>

</div>