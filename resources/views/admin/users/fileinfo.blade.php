<table class="viewinfo" >
    <tr>
        <td>
            <label>Name:</label>
        </td>
        <td>{{ $pageData->firstname }} {{ $pageData->lastname }} </td>
    </tr>
        
    @foreach($pageData->files as $item)
    <tr>
        <td>
            <label>File:</label>
        </td>
        <td>                                                            
            <a target="__blank" href="{{ url('storage/user_files/'.$item->filename) }}" >{{ $item->filename }}</a>
        </td>
    </tr>
    @endforeach

</table>