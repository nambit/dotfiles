# -*- coding: utf8 -*-
from i3pystatus import Status

status = Status()

DRACULA_THEME={
    "background": "#282a36",
    "current line": "#44475a",
    "selection": "#44475a",
    "foreground": "#f8f8f2",
    "comment": "#6272a4",
    "cyan": "#8be9fd",
    "green": "#50fa7b",
    "orange": "#ffb86c",
    "pink": "#ff79c6",
    "purple": "#bd93f9",
    "red": "#ff5555",
    "yellow": "#f1fa8c",
}

# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW31
#                          ^-- calendar week
status.register("clock",
        format="%l:%M %P",
        color=DRACULA_THEME['yellow'],
)

# Shows your CPU temperature, if you have a Intel CPU
#status.register("temp",format="{temp:.0f}°C",)


# Shows your CPU temperature, if you have a Intel CPU
#status.register("temp",
    #format=" {temp:.0f}°C",
    #color=DRACULA_THEME["purple"],
    #alert_color=DRACULA_THEME["red"],
    #alert_temp=80,
    #)

# The battery monitor has many formatting options, see README for details
# This would look like this, when discharging (or charging)
# ↓14.22W 56.15% [77.81%] 2h:41m
# And like this if full:
# =14.22W 100.0% [91.21%]
#
# This would also display a desktop notification (via D-Bus) if the percentage
# goes below 5 percent while discharging. The block will also color RED.
# If you don't have a desktop notification demon yet, take a look at dunst:
#   http://www.knopwob.org/dunst/
status.register("battery",
    format="{status} {percentage:.2f}%",
    alert=True,
    alert_percentage=5,
    color=DRACULA_THEME["purple"],
    charging_color=DRACULA_THEME["green"],
    full_color=DRACULA_THEME["green"],
    status={
        "DIS": " ",
        "CHR": " ",
        "FULL": "",
    },)

#status.register("network",
        #interface="wlp2s0",
        #format_up="",
        #color_up=DRACULA_THEME["green"],
        #dynamic_color=False,
        #)


# Shows disk usage of /
# Format:
# 42/128G [86G]
#status.register("disk",
    #path="/",
    #format=" {used}G ({percentage_used}%)",
    #color=DRACULA_THEME["purple"],
#)


status.register("mem",
        format=" {percent_used_mem}%",
        color=DRACULA_THEME["purple"],
        warn_percentage=60,
        warn_color=DRACULA_THEME["yellow"],
        alert_color=DRACULA_THEME["red"],
        )
# Shows pulseaudio default sink volume
#
# Note: requires libpulseaudio from PyPI
status.register("pulseaudio",
	format=" {volume}%",
	color_unmuted=DRACULA_THEME["purple"],
	color_muted=DRACULA_THEME["red"],
	)

status.run()
