clear
filename = 'Book1.xls';
[num,str] = xlsread(filename,'1:1');
ca=str;
prompt = 'Enter your Element: ';
prompt2= 'Enter your Energy: ';
x = input(prompt,'s');
containsLetter = false(1, length(ca));
for k = 1 : length(ca)
  if ~isempty(strfind(ca{k}, x))
    containsLetter(k) = true;
  end
end
logicalIndexes = containsLetter;
Indexes = find(containsLetter);
x1=num2str(Indexes);
allrowname={'A:A' 'B:B' 'C:C' 'D:D' 'E:E'};
ee=char(allrowname(Indexes));
[num2,str2]=xlsread(filename,ee)


