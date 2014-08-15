
function start_daemon(dae)
	daeCheck = os.execute("ps -eF | grep -v grep | grep -w " .. dae)
	if (daeCheck == nil) then
		os.execute(dae .. " &")
	end
end

procs = {"gnome-settings-daemon", "nm-applet", "kupfer", "gnome-sound-applet", "gnome-power-manager"}
for k = 1, #procs do
	start_daemon(procs[k])
end

os.execute("bash keyboard_setup.sh")

