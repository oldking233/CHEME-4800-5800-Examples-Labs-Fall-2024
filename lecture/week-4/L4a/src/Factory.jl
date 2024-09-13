function _build(recordtype::Type{MySarcasmRecordModel}, data::NamedTuple)::MySarcasmRecordModel
    
    # get data from the NamedTuple -
    headlinerecord = data.data;

    # clean the data - do NOT include puncuation in the headline -
    puncuation_skip_set = Set{Char}();
    push!(puncuation_skip_set, ',');
    push!(puncuation_skip_set, '.');
    push!(puncuation_skip_set, '!');
    push!(puncuation_skip_set, '?');
    push!(puncuation_skip_set, ';');
    push!(puncuation_skip_set, ':');
    push!(puncuation_skip_set, ')');
    push!(puncuation_skip_set, '(');
    push!(puncuation_skip_set, '\"');
    push!(puncuation_skip_set, '/');
    push!(puncuation_skip_set, '\\');
    push!(puncuation_skip_set, '-');
    push!(puncuation_skip_set, '_');
    push!(puncuation_skip_set, '`');
    push!(puncuation_skip_set, ''');
    push!(puncuation_skip_set, '*');
    push!(puncuation_skip_set, '+');
    push!(puncuation_skip_set, '=');
    push!(puncuation_skip_set, '@');
    push!(puncuation_skip_set, '%');
    push!(puncuation_skip_set, '|');
    push!(puncuation_skip_set, '{');
    push!(puncuation_skip_set, '}');
    push!(puncuation_skip_set, '[');
    push!(puncuation_skip_set, ']');
    push!(puncuation_skip_set, '<');
    push!(puncuation_skip_set, '>');
    push!(puncuation_skip_set, '~');
    push!(puncuation_skip_set, '^');
    push!(puncuation_skip_set, '&');
    push!(puncuation_skip_set, '$');
    push!(puncuation_skip_set, '¿');
    push!(puncuation_skip_set, '¡');
    push!(puncuation_skip_set, '£');
    push!(puncuation_skip_set, '€');
    push!(puncuation_skip_set, '¥');
    push!(puncuation_skip_set, '₹');   
    push!(puncuation_skip_set, '©'); 
    push!(puncuation_skip_set, '®');
    push!(puncuation_skip_set, '™');
    push!(puncuation_skip_set, '¯');
    push!(puncuation_skip_set, '\u00a0');


    # ok, so field is a string, and we are checking if it contains any of the puncuation characters
    chararray = headlinerecord["headline"] |> collect;

    # let's use the filter function to remove any puncuation characters from the field -
    headlinerecord["headline"] = filter(c -> (c |> Int ) ≤ 255 && !(c ∈ puncuation_skip_set),
        chararray) |> String |> string-> strip(string, ' ');

    # create the an empty instance of the modeltype, and then add data to it
    record = recordtype();
    record.data = headlinerecord;
    
    # return the populated model -
    return record;
end


function build(record::Type{T}, data::NamedTuple)::T where T <: AbstractTextRecordModel 
    return _build(record, data);
end