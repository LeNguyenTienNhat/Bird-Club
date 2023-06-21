<div class='relative flex flex-col bg-white sm:rounded-lg shadow p-6'>
    <div class='mt-2 flex items-start space-x-3'>
        <img src="">
    </div>
    
    <div><h1 class='font-bold text-xl text-gray-900 space-x-2'><span>
                tournament.getName()
            </span>
            <h1 class='font-semibold text-lg text-gray-900 space-x-2 mb-4'>  tournament.getStartDate()  </h1>
        </h1></div>

    <div class='mt-2 flex items-start space-x-3'>
        <div class='mt-0.5'><span class='sr-only'></span>
            <svg xmlns='http://www.w3.org/2000/svg' width='20' height='20' fill='currentColor' class='bi bi-person-exclamation text-gray-400' viewBox='0 0 16 16'>
                <path d='M11 5a3 3 0 1 1-6 0 3 3 0 0 1 6 0Zm-9 8c0 1 1 1 1 1h5.256A4.493 4.493 0 0 1 8 12.5a4.49 4.49 0 0 1 1.544-3.393C9.077 9.038 8.564 9 8 9c-5 0-6 3-6 4Z'/>
                <path d='M16 12.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0Zm-3.5-2a.5.5 0 0 0-.5.5v1.5a.5.5 0 0 0 1 0V11a.5.5 0 0 0-.5-.5Zm0 4a.5.5 0 1 0 0-1 .5.5 0 0 0 0 1Z'/>
        </div><div class='font-semibold text-gray-700 space-x-2'>Full Name:   </div> <div>  tournament.getNumberOfParticipant()   members</div></div>

    <div class='mt-2 flex items-start space-x-3'>
        <div class='mt-0.5'><span class='sr-only'></span>
            <svg xmlns='http://www.w3.org/2000/svg' width='20' height='20' fill='currentColor' class='bi bi-currency-dollar text-gray-400' viewBox='0 0 16 16'>
                <path d='M4 10.781c.148 1.667 1.513 2.85 3.591 3.003V15h1.043v-1.216c2.27-.179 3.678-1.438 3.678-3.3 0-1.59-.947-2.51-2.956-3.028l-.722-.187V3.467c1.122.11 1.879.714 2.07 1.616h1.47c-.166-1.6-1.54-2.748-3.54-2.875V1H7.591v1.233c-1.939.23-3.27 1.472-3.27 3.156 0 1.454.966 2.483 2.661 2.917l.61.162v4.031c-1.149-.17-1.94-.8-2.131-1.718H4zm3.391-3.836c-1.043-.263-1.6-.825-1.6-1.616 0-.944.704-1.641 1.8-1.828v3.495l-.2-.05zm1.591 1.872c1.287.323 1.852.859 1.852 1.769 0 1.097-.826 1.828-2.2 1.939V8.73l.348.086z'/></svg>
        </div><div class='font-semibold text-gray-700 space-x-2'>Gender:   </div> <div>  tournament.getFee()   USD</div></div>

    <div class='mt-2 flex items-start space-x-3'>
        <div class='mt-0.5'><span class='sr-only'></span>
            <svg xmlns='http://www.w3.org/2000/svg' width='20' height='20' fill='currentColor' class='bi bi-info-circle-fill text-gray-400' viewBox='0 0 16 16'>
                <path d='M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z'/></svg>
        </div><div class='font-semibold text-gray-700 space-x-2'>Phone number:   </div></div>
    <div class='mt-2 space-y-4 space-x-3'>  tournament.getDescription()  </div>

    <div class='mt-2 flex items-start space-x-3'>
        <div class='mt-0.5'><span class='sr-only'></span>  <svg xmlns='http://www.w3.org/2000/svg' width='20' height='20' fill='currentColor' class='bi bi-exclamation-circle-fill  text-gray-400' viewBox='0 0 16 16'>
                <path d='M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8 4a.905.905 0 0 0-.9.995l.35 3.507a.552.552 0 0 0 1.1 0l.35-3.507A.905.905 0 0 0 8 4zm.002 6a1 1 0 1 0 0 2 1 1 0 0 0 0-2z'/></svg>
        </div>
        <div class='font-semibold text-gray-700 space-x-2'>Email address:   </div></div>
    <div class='mt-2 space-y-4 space-x-3'>  tournament.getNote()  </div>

    <div style='margin-top: 15px' class='flex items-start space-x-3'>
        <form method='post'><input type='hidden' name='TID' value = '  tournament.getTID()  '>
            <input type='hidden' name='action' value='terminatetournament'>
            <input class='flex justify-center py-2 px-4 text-base text-white shadow-sm border-transparent text-xs bg-red-600 hover:bg-red-700 focus:ring-red-500 inline-flex items-center border font-medium rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2'
                       type='submit' value='Terminate'>
        </form>
        
        <form>
            <input type='hidden' name='TID' value = '  tournament.getTID()  '>
            <input type='hidden' name='action' value='edittournament'>
            <input class='flex justify-center py-2 px-4 text-base text-white shadow-sm border-transparent text-xs bg-green-600 hover:bg-green-700 focus:ring-green-500 inline-flex items-center border font-medium rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2'
                           type='submit' value='Edit'>
        </form>
        
        </div>
</div>
