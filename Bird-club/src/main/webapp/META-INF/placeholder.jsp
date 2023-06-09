
    <div data-controller="modal" data-modal-target="container" data-modal-id-value="modal2" data-modal-persist-value="false" class="hidden fixed z-[2000] inset-0 overflow-y-auto" aria-labelledby="modal-title" role="dialog" aria-modal="true">
  <div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
    <div     data-modal-target="overlay"      data-action="click->modal#close"
      class="hidden fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity"      aria-hidden="true"
      data-transition-enter="transition ease-out duration-300"      data-transition-enter-start="opacity-0"
      data-transition-enter-end="opacity-100"      data-transition-leave="transition ease-in duration-200"
      data-transition-leave-start="opacity-100"      data-transition-leave-end="opacity-0"      >    </div>
    <!-- This element is to trick the browser into centering the modal contents. -->
    <span class="hidden sm:inline-block sm:align-middle sm:h-screen" aria-hidden="true">&#8203;</span>
    <div       data-modal-target="content" 
      class="hidden relative inline-block align-bottom bg-white rounded-lg px-4 pt-5 pb-4 text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg w-full sm:p-6"
      data-transition-enter="transition ease-out duration-300"      data-transition-enter-start="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95"
      data-transition-enter-end="opacity-100 translate-y-0 sm:scale-100"      data-transition-leave="transition ease-in duration-200"
      data-transition-leave-start="opacity-100 translate-y-0 sm:scale-100"      data-transition-leave-end="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95"    >
      <div class="hidden sm:block absolute top-0 right-0 pt-4 pr-4">
        <button data-action="click->modal#close" type="button" class="bg-white rounded-md text-gray-400 hover:text-gray-500 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-slate-500">
          <span class="sr-only">Close</span>
          <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class=" w-6 h-6">
  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
</svg></button></div>
        
      <div class="sm:flex sm:items-start">
<turbo-frame data-modal-target="test" class="w-full" id="modal2" target="_top" reloadable="" src="https://www.bird.club/clubs/birds-in-ohio/events/new?start_date=2023-06-01">
<h3 class="text-lg leading-6 font-medium text-gray-900">New meeting</h3>
<turbo-frame id="new_event" target="_top">

<form class="space-y-4" accept-charset="UTF-8" method="post" id="fieldtrip">
<div class="mt-3"><label class="block text-sm font-medium text-gray-700" for="event_title">Field trip's name</label>
<div class="mt-1"><input class="block shadow-sm sm:text-sm border-gray-300 focus:ring-teal-500 focus:border-teal-500 rounded-md" type="text" name="name" id="name"></div></div>

<div><label class="block text-sm font-medium text-gray-700" for="event_location">Location</label>
<div class="mt-1"><input class="block shadow-sm sm:text-sm border-gray-300 focus:ring-teal-500 focus:border-teal-500 rounded-md" type="text" name="LID" id="LID"></div></div>

<div><label class="block text-sm font-medium text-gray-700" for="event_date">Form will be closed at:</label>
<div class="mt-1"><input class="block shadow-sm sm:text-sm border-gray-300 rounded-md focus:ring-teal-500 focus:border-teal-500" type="date" name="registrationDeadline" id="registrationDeadline"></div></div>

<div class="flex flex-row space-x-4"><div><label class="block text-sm font-medium text-gray-700" for="event_start_time">Start date</label>
<div class="mt-1"><input class="block shadow-sm sm:text-sm border-gray-300 rounded-md focus:ring-teal-500 focus:border-teal-500" type="date" name="startDate" id="startDate"></div></div>
<div><label class="block text-sm font-medium text-gray-700" for="event_end_time">End date</label>
<div class="mt-1"><input class="block shadow-sm sm:text-sm border-gray-300 rounded-md focus:ring-teal-500 focus:border-teal-500" type="date" name="endDate" id="endDate"></div></div></div>

<div class="flex flex-row space-x-4"><div><label class="block text-sm font-medium text-gray-700" >Max participants</label>
<div class="mt-1"><input class="block shadow-sm sm:text-sm border-gray-300 rounded-md focus:ring-teal-500 focus:border-teal-500" type="text" name="numberOfParticipant" id="numberOfParticipant">
</div></div></div>

<div><label class="block text-sm font-medium text-gray-700" for="description">Description</label>
<div class="mt-1"> <textarea class="w-full block shadow-sm sm:text-sm border-gray-300 rounded-md outline-none focus:ring-teal-500 focus:border-teal-500" name="description" id="description"></textarea>
</div></div>

<div class="text-right sm:col-span-4">
<input name="action" value="addfieldtrip" type="hidden">
<button type="submit" form="fieldtrip" class="px-4 py-2 text-sm text-white shadow-sm border-transparent bg-teal-600 hover:bg-teal-700 focus:ring-teal-500 inline-flex items-center border font-medium rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2">
Create</button></div></form></turbo-frame></turbo-frame></div></div></div></div>