return {
	entry = function()
		-- 1. Check if it's a GIT repo
		local git = Command("git"):arg("rev-parse"):arg("--is-inside-work-tree"):stderr(Command.PIPED):spawn()

		local git_out = git:wait_with_output()

		if git_out.status.code ~= 0 then
			ya.notify({
				title = "lazygit",
				content = "Not in a git repository",
				level = "warn",
				timeout = 5,
			})
			return
		end

		-- 2. hide UI
		ya.hide()

		-- 3. Start lazygit
		local child = Command("lazygit"):stdin(Command.INHERIT):stdout(Command.INHERIT):stderr(Command.INHERIT):spawn()

		local out = child:wait()

		-- 4. Recover UI
		ya.show()

		if out.code ~= 0 then
			ya.notify({
				title = "lazygit exited with error",
				content = "Exit code: " .. out.code,
				level = "error",
				timeout = 5,
			})
		end
	end,
}
