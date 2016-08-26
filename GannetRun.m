function GannetRun(gabafile)

warning off;

if ~isempty(gabafile) && ischar(gabafile)
    gabafile = strsplit(gabafile,' ');
    if length(gabafile)>1
        error('Use one pfile at a time!');
    end
end

disp('Running Gannet toolbox...');

MRS_struct = GannetLoad(gabafile);
GannetFit(MRS_struct);

disp('Gannet Fit finished.');