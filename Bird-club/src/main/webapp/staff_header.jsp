<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <div class="hidden sm:block mt-4">
 <nav class="-mb-px flex space-x-8">
      <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm text-teal-600 border-teal-600 focus:outline-none" href="staffhome">Home</a>
      <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none" href="members">Members</a>
      <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none" href="staff_blogs.jsp">Blogs</a>
      <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none" href="events">Events</a>
      <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none" href="tournaments">Tournaments</a>
      <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none" href="staff_article.jsp">Articles</a>
      <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none" href="gallery">Gallery</a>
      <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none" href="staff_feedback.jsp">Feedback</a>
  </nav>
</div>
<div class="sm:hidden py-4">
  <label for="current-tab" class="sr-only">Select a tab</label>
  <select data-controller="select" data-action="change->select#change" data-select-target="menu" id="current-tab" name="current-tab" class="block w-full pl-3 pr-10 py-2 text-base border-gray-300 focus:outline-none focus:ring-teal-500 focus:border-teal-500 sm:text-sm rounded-md">
        <option value="" selected>Home</option>
        <option value="" >Members</option>
        <option value="" >Blogs</option>
        <option value="" >Events</option>
        <option value="" >Articles</option>
        <option value="" >Gallery</option>
        <option value="" >Feedback</option>
    </select>
  </div>
</html>
