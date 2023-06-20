<div>
    <div class="lg:grid lg:grid-cols-12 lg:gap-x-16">
        <div class="px-6 sm:px-0 mt-4 lg:col-start-8 lg:col-end-13 lg:row-start-1 xl:col-start-9">

        </div>
        <div class="lg:col-span-7 xl:col-span-8" id="events_list">
            <div data-controller="record-filters">
                <!-- Filters -->
                <section aria-labelledby="filter-heading" class="relative z-10 grid items-center">
                    <h2 id="filter-heading" class="sr-only">Filters</h2>
                    <div class="relative col-start-1 row-start-1 py-4">
                        <div class="max-w-7xl mx-auto flex space-x-6 divide-x divide-gray-200 text-sm px-4">
                            <div><button data-record-filters-target="toggle" data-action="record-filters#toggle" type="button" class="group text-gray-700 font-medium flex items-center" aria-controls="disclosure-1" aria-expanded="false">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class="flex-none mr-2 text-gray-400 group-hover:text-gray-500 w-5 h-5">
                                        <path fill-rule="evenodd" d="M3 3a1 1 0 011-1h12a1 1 0 011 1v3a1 1 0 01-.293.707L12 11.414V15a1 1 0 01-.293.707l-2 2A1 1 0 018 17v-5.586L3.293 6.707A1 1 0 013 6V3z" clip-rule="evenodd"></path>
                                    </svg>Filter</button></div></div></div>

                    <form class="hidden" data-record-filters-target="form" data-turbo-action="advance" accept-charset="UTF-8" method="get">
                        <div class="border-t border-gray-200 py-10" id="disclosure-1">
                            <div class="max-w-7xl mx-auto  gap-x-4 px-4 text-sm md:gap-x-6">
                                <div class="grid grid-cols-1 md:grid-cols-2 gap-y-10 lg:grid-cols-3 md:gap-x-6 w-full">
                                    <div class="space-y-4">
                                        <div>
                                            <legend class="block font-medium">Family</legend>
                                            <div class="mt-1">
                                                <select data-action="change->record-filters#submit" class="block pl-3 pr-10 py-2 text-base border-gray-300 focus:outline-none sm:text-sm rounded-md focus:ring-teal-500 focus:border-teal-500" name="family" id="family"><option value="" label=" "></option>
                                                    <option value="Ducks, Geese, Swans">Ducks, Geese, Swans</option></select>
                                            </div>
                                        </div>
                                        <div>
                                            <legend class="block font-medium">Species</legend>
                                            <div class="mt-1">
                                                <select data-action="change->record-filters#submit" class="block pl-3 pr-10 py-2 text-base border-gray-300 focus:outline-none sm:text-sm rounded-md focus:ring-teal-500 focus:border-teal-500" name="bird_id" id="bird_id"><option value="" label=" "></option>
                                                    <option value="49">Tufted Duck</option></select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="space-y-4">
                                        <div>
                                            <legend class="block font-medium">Location</legend>
                                            <div class="mt-1">
                                                <select data-action="change->record-filters#submit" class="block pl-3 pr-10 py-2 text-base border-gray-300 focus:outline-none sm:text-sm rounded-md focus:ring-teal-500 focus:border-teal-500" name="location_id" id="location_id"><option value="" label=" "></option>
                                                    <option value="1254">At Home</option></select>
                                            </div>
                                        </div>
                                        <div>
                                            <legend class="block font-medium">Member</legend>
                                            <div class="mt-1">
                                                <select data-action="change->record-filters#submit" class="block pl-3 pr-10 py-2 text-base border-gray-300 focus:outline-none sm:text-sm rounded-md focus:ring-teal-500 focus:border-teal-500" name="member_id" id="member_id"><option value="" label=" "></option>
                                                    <option value="808">Kaedehara Yamamoto</option></select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <input type="hidden" name="action" value="viewtournamentparticipants">
                            <input type="hidden" name="TID" <% out.print("value='" + TID + "'"); %> >
                                </form>  </section>
                                </div>

                                <!--                                Brief data-->
                                <div class="flex flex-col sm:rounded-lg shadow">
                                    <div>
                                        <dl class="sm:rounded-t-lg grid grid-cols-1 bg-white overflow-hidden border-b border-gray-200 divide-y divide-gray-200 md:grid-cols-3 md:divide-y-0 md:divide-x">
                                            <div class="px-4 py-5 sm:p-6">
                                                <dt class="text-base font-normal text-gray-900">Total participants</dt>
                                                <dd class="mt-1 flex justify-between items-baseline md:block lg:flex">
                                                    <div class="flex items-baseline text-2xl font-semibold text-teal-600">
                                                        <% out.print(size); %>
                                                    </div>
                                                </dd>
                                            </div>

                                            <div class="px-4 py-5 sm:p-6">
                                                <dt class="text-base font-normal text-gray-900">Placeholder</dt>
                                                <dd class="mt-1 flex justify-between items-baseline md:block lg:flex">
                                                    <div class="flex items-baseline text-2xl font-semibold text-teal-600">
                                                        1
                                                    </div>
                                                </dd>
                                            </div>

                                            <div class="px-4 py-5 sm:p-6">
                                                <dt class="text-base font-normal text-gray-900">Placeholder</dt>
                                                <dd class="mt-1 flex justify-between items-baseline md:block lg:flex">
                                                    <div class="flex items-baseline text-2xl font-semibold text-teal-600">
                                                        1
                                                    </div>
                                                </dd>
                                            </div>
                                        </dl>
                                    </div>

                                    <div class="overflow-hidden ring-1 ring-black ring-opacity-5 sm:rounded-b-lg">
                                        <div class="table min-w-full">
                                            <div class="bg-gray-50 table-header-group">
                                                <div class="table-row">
                                                    <div class="table-cell border-b border-gray-300 py-3.5 text-left text-sm font-semibold text-gray-900 pl-4 pr-3 sm:pl-6">
                                                        Full Name
                                                    </div>
                                                    <div class="table-cell border-b border-gray-300 py-3.5 text-left text-sm font-semibold text-gray-900 px-3 relative">
                                                        <span class="sr-only"></span>
                                                    </div>
                                                    <div class="table-cell border-b border-gray-300 py-3.5 text-left text-sm font-semibold text-gray-900 px-3">
                                                        Membership
                                                    </div>
                                                    <div class="border-b border-gray-300 py-3.5 text-left text-sm font-semibold text-gray-900 px-3 hidden sm:table-cell">
                                                        Phone number
                                                    </div>
                                                    <div class="border-b border-gray-300 py-3.5 text-left text-sm font-semibold text-gray-900 px-3 hidden lg:table-cell">
                                                        Email
                                                    </div>
                                                    <div class="table-cell border-b border-gray-300 py-3.5 text-left text-sm font-semibold text-gray-900 relative pl-3 pr-4 sm:pr-6">
                                                        <span class="sr-only">Edit</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="table-header-group bg-white">
                                                <turbo-frame id="row_record_9959" class="contents" target="_top">

                                                    <!--List-->

                                                    <%

                                                        for (BirdParticipation bp : bpList) {
                                                            String achievement = bp.getAchievement().trim();
                                                            out.print("<div class='table-row bg-white'>"
                                                                    + "<div class='table-cell border-b border-gray-200 text-sm w-full max-w-0 py-4 pl-4 pr-3 sm:w-auto sm:max-w-none sm:pl-6 text-gray-900'>"
                                                                    + bp.getDocNo() + "</div>"
                                                                    + "<div class='table-cell border-b border-gray-200 text-sm px-3 text-gray-500'>"
                                                                    + " <div class='flex flex-row items-center space-x-2'>"
                                                                    + " <div class='text-teal-600 -mb-1'></div></div></div>"
                                                                    + " <div class='table-cell border-b border-gray-200 text-sm px-3 text-gray-500'>"
                                                                    + "<a class='hover:text-gray-900' href=''>" + bp.getBirdName() + "</a></div>"
                                                                    + "<div class='border-b border-gray-200 text-sm px-3 text-gray-500 hidden lg:table-cell'>"
                                                                    + " <form class='flex' action='./tournaments' method='post'>"
                                                                    + "<select class='block pl-3 pr-10 py-2 text-base border-gray-300 focus:outline-none sm:text-sm rounded-md focus:ring-teal-500 focus:border-teal-500' name='ach'>"
                                                                    + "   <option selected='selected' value='non'>Non</option>"
                                                                    + "   <option value='gold'>Gold</option>"
                                                                    + "   <option value='silver'>Silver</option>"
                                                                    + "   <option value='bronze'>Bronze</option>"
                                                                    + "</select>"
                                                                    + "  <input type='hidden' name='action' value='updateachievement'>"
                                                                    + "  <input type='hidden' name='docNo' value='" + bp.getDocNo() + "'>"
                                                                    + "  <input type='hidden' name='TID' value='" + TID + "'>"
                                                                    + " <button class='ml-4 px-4 py-2 text-sm text-white shadow-sm border-transparent bg-teal-600 hover:bg-teal-700 focus:ring-teal-500 inline-flex items-center border font-medium rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2' type='submit'>Confirm</button>"
                                                                    + "  </form>"
                                                                    + " </div>"
                                                                    + " <div class='border-b border-gray-200 text-sm px-3 text-gray-500 hidden sm:table-cell'>"
                                                                    + " <a class='hover:text-gray-900' href=''>" + bp.getFullname() + "</a></div>"
                                                                    + "<div class='table-cell border-b border-gray-200 text-sm text-gray-500 pl-3 pr-4 text-right sm:pr-6'>"
                                                                    + " </div> </div>"
                                                                    + "");

                                                        }
                                                    %>

                                                </turbo-frame>

                                            </div>
                                        </div>
                                    </div>

                                </div>
        
        </div></div></div>