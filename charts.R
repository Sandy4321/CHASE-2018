
# order: closed in, closed out, merged in, merged out
data_internals <- structure(list(atom=c(385L, 201L, 605L, 254L),electron=c(263L, 166L, 1049L, 952L), hubot=c(155L, 55L, 268L, 100L), git_lfs=c(53L, 53L, 169L, 159L), linguist=c(521L, 212L, 515L, 603L)), .Names = c("atom", "electron", "hubot", "git_lfs", "linguist"), class = "data.frame", row.names = c(NA, -5L))
colours <- c("red", "yellow","red","yellow")

# Closed
d <- data.frame(row.names=c("atom_in","atom_out","electron_in","electron_out", "hubot_in","hubot_out","git-lfs_in","git-lfs_out", "linguist_in","linguist_out"), 
                internals=c(1,2,3,4,5,6,7,8,9,10),externals=c(1,2,3,4,5,6,7,8,9,10))
d <- do.call(rbind, d)
barplot(d, beside = FALSE, ylim=c(0,1200), legend.text = c("PRs Closed (Meets)", "PRs Closed (Does not)", "PRs Merged (Meets)", "PRs Merged (Doest not)"), 
        args.legend = list(x = "topright", bty="n"), names.arg = c("Atom", "Electron", "Hubot", "Git-lfs", "Linguist"))
