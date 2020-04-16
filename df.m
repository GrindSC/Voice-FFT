function csv = df(male,female)
labels = {'male','female'};
male = male.';
female = female.';
csv = [labels];
for i=1:length(male)
    next_row = {male{i,1},female{i,1}};
    csv = [csv;next_row];
end
end

