//CREATE_PLATFORMS_script1
element_width = random_range(200, 500);

count = round(room_width/element_width);

for (var i = 0; i < count + random_range(count, count + count/2) ; i++)
{
    script_execute(CREATE_PLATFORM_script1, 0, 0);
}
