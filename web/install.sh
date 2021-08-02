#!/bin/bash

# first remove brocken symlinks
find ~/web2py/applications/solver/static -xtype l -exec rm -f {} \;

# create all the required symlinks if they don't already exist
[ -L ~/web2py/applications/solver/static/favicon.ico ] || ln -s ~/RandomMetroidSolver/web/static/favicon.ico ~/web2py/applications/solver/static/favicon.ico
[ -L ~/web2py/applications/solver/static/images/area_map_thumbnail.png ] || ln -s ~/RandomMetroidSolver/web/static/area_map_thumbnail.png ~/web2py/applications/solver/static/images/area_map_thumbnail.png
[ -L ~/web2py/applications/solver/static/images/area_map.png ] || ln -s ~/RandomMetroidSolver/web/static/area_map.png ~/web2py/applications/solver/static/images/area_map.png
[ -L ~/web2py/applications/solver/static/images/snes-controller.png ] || ln -s ~/RandomMetroidSolver/web/static/snes-controller.png ~/web2py/applications/solver/static/images/snes-controller.png
[ -L ~/web2py/applications/solver/static/images/ajax-loader.gif ] || ln -s ~/RandomMetroidSolver/web/static/ajax-loader.gif ~/web2py/applications/solver/static/images/ajax-loader.gif
[ -L ~/web2py/applications/solver/static/css/bootstrap-tour.min.css ] || ln -s ~/RandomMetroidSolver/web/static/bootstrap-tour.min.css ~/web2py/applications/solver/static/css/bootstrap-tour.min.css
[ -L ~/web2py/applications/solver/static/barrating ] || ln -s ~/RandomMetroidSolver/web/static/barrating ~/web2py/applications/solver/static/barrating
[ -L ~/web2py/applications/solver/static/js/bootstrap-tour.min.js ] || ln -s ~/RandomMetroidSolver/web/static/bootstrap-tour.min.js ~/web2py/applications/solver/static/js/bootstrap-tour.min.js
[ -L ~/web2py/applications/solver/static/js/FileSaver.js ] || ln -s ~/RandomMetroidSolver/web/static/FileSaver.js ~/web2py/applications/solver/static/js/FileSaver.js
[ -L ~/web2py/applications/solver/static/dist ] || ln -s ~/RandomMetroidSolver/web/static/dist ~/web2py/applications/solver/static/dist
[ -L ~/web2py/applications/solver/static/highslide ] || ln -s ~/RandomMetroidSolver/web/static/highslide ~/web2py/applications/solver/static/highslide
[ -L ~/web2py/applications/solver/views/solver_web/home.html ] || ln -s ~/RandomMetroidSolver/web/views/home.html ~/web2py/applications/solver/views/solver_web/home.html
[ -L ~/web2py/applications/solver/views/solver_web/presets.html ] || ln -s ~/RandomMetroidSolver/web/views/presets.html ~/web2py/applications/solver/views/solver_web/presets.html
[ -L ~/web2py/applications/solver/views/solver_web/solver.html ] || ln -s ~/RandomMetroidSolver/web/views/solver.html ~/web2py/applications/solver/views/solver_web/solver.html
[ -L ~/web2py/applications/solver/views/solver_web/randomizer.html ] || ln -s ~/RandomMetroidSolver/web/views/randomizer.html ~/web2py/applications/solver/views/solver_web/randomizer.html
[ -L ~/web2py/applications/solver/views/solver_web/infos.html ] || ln -s ~/RandomMetroidSolver/web/views/infos.html ~/web2py/applications/solver/views/solver_web/infos.html
[ -L ~/web2py/applications/solver/views/solver_web/stats.html ] || ln -s ~/RandomMetroidSolver/web/views/stats.html ~/web2py/applications/solver/views/solver_web/stats.html
[ -L ~/web2py/applications/solver/controllers/solver_web.py ] || ln -s ~/RandomMetroidSolver/web/controllers/solver_web.py ~/web2py/applications/solver/controllers/solver_web.py
[ -L ~/web2py/applications/solver/static/js/excellentexport.js ] || ln -s ~/RandomMetroidSolver/web/static/excellentexport.js ~/web2py/applications/solver/static/js/excellentexport.js
[ -L ~/web2py/standard_presets ] || ln -s ~/RandomMetroidSolver/standard_presets ~/web2py/standard_presets
[ -L ~/web2py/community_presets -o -d ~/web2py/community_presets ] || ln -s ~/RandomMetroidSolver/community_presets ~/web2py/community_presets
[ -L ~/web2py/applications/solver/static/images/super_metroid_logo.png ] || ln -s ~/RandomMetroidSolver/web/static/super_metroid_logo.png ~/web2py/applications/solver/static/images/super_metroid_logo.png
[ -L ~/web2py/applications/solver/static/images/hud_full.png ] || ln -s ~/RandomMetroidSolver/web/static/hud_full.png ~/web2py/applications/solver/static/images/hud_full.png
[ -L ~/web2py/applications/solver/static/images/hud_chozo_start.png ] || ln -s ~/RandomMetroidSolver/web/static/hud_chozo_start.png ~/web2py/applications/solver/static/images/hud_chozo_start.png
[ -L ~/web2py/applications/solver/static/images/hud_major_energy.png ] || ln -s ~/RandomMetroidSolver/web/static/hud_major_energy.png ~/web2py/applications/solver/static/images/hud_major_energy.png
[ -L ~/web2py/applications/solver/static/images/hud_scav.png ] || ln -s ~/RandomMetroidSolver/web/static/hud_scav.png ~/web2py/applications/solver/static/images/hud_scav.png
[ -L ~/web2py/applications/solver/static/images/hud_scav_over.png ] || ln -s ~/RandomMetroidSolver/web/static/hud_scav_over.png ~/web2py/applications/solver/static/images/hud_scav_over.png
[ -L ~/web2py/applications/solver/static/images/hud_scav_pause.png ] || ln -s ~/RandomMetroidSolver/web/static/hud_scav_pause.png ~/web2py/applications/solver/static/images/hud_scav_pause.png
[ -L ~/web2py/applications/solver/static/css/chosen.css ] || ln -s ~/RandomMetroidSolver/web/static/chosen.css ~/web2py/applications/solver/static/css/chosen.css
[ -L ~/web2py/applications/solver/static/js/chosen.jquery.min.js ] || ln -s ~/RandomMetroidSolver/web/static/chosen.jquery.min.js ~/web2py/applications/solver/static/js/chosen.jquery.min.js
[ -L ~/web2py/applications/solver/static/images/chosen-sprite.png ] || ln -s ~/RandomMetroidSolver/web/static/chosen-sprite.png ~/web2py/applications/solver/static/images/chosen-sprite.png
[ -L ~/web2py/applications/solver/static/images/chosen-sprite@2x.png ] || ln -s ~/RandomMetroidSolver/web/static/chosen-sprite@2x.png ~/web2py/applications/solver/static/images/chosen-sprite@2x.png
[ -L ~/web2py/applications/solver/static/js/leader-line.min.js ] || ln -s ~/RandomMetroidSolver/web/static/leader-line.min.js ~/web2py/applications/solver/static/js/leader-line.min.js
[ -L ~/web2py/applications/solver/views/solver_web/tracker.html ] || ln -s ~/RandomMetroidSolver/web/views/tracker.html ~/web2py/applications/solver/views/solver_web/tracker.html
[ -L ~/web2py/applications/solver/static/images/marker_easy.gif ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/marker_easy.gif ~/web2py/applications/solver/static/images/marker_easy.gif
[ -L ~/web2py/applications/solver/static/images/marker_medium.gif ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/marker_medium.gif ~/web2py/applications/solver/static/images/marker_medium.gif
[ -L ~/web2py/applications/solver/static/images/marker_hard.gif ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/marker_hard.gif ~/web2py/applications/solver/static/images/marker_hard.gif
[ -L ~/web2py/applications/solver/static/images/marker_harder.gif ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/marker_harder.gif ~/web2py/applications/solver/static/images/marker_harder.gif
[ -L ~/web2py/applications/solver/static/images/marker_hardcore.gif ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/marker_hardcore.gif ~/web2py/applications/solver/static/images/marker_hardcore.gif
[ -L ~/web2py/applications/solver/static/images/marker_mania.gif ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/marker_mania.gif ~/web2py/applications/solver/static/images/marker_mania.gif
[ -L ~/web2py/applications/solver/static/images/marker_over_easy.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/marker_over_easy.png ~/web2py/applications/solver/static/images/marker_over_easy.png
[ -L ~/web2py/applications/solver/static/images/marker_over_medium.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/marker_over_medium.png ~/web2py/applications/solver/static/images/marker_over_medium.png
[ -L ~/web2py/applications/solver/static/images/marker_over_hard.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/marker_over_hard.png ~/web2py/applications/solver/static/images/marker_over_hard.png
[ -L ~/web2py/applications/solver/static/images/marker_over_harder.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/marker_over_harder.png ~/web2py/applications/solver/static/images/marker_over_harder.png
[ -L ~/web2py/applications/solver/static/images/marker_over_hardcore.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/marker_over_hardcore.png ~/web2py/applications/solver/static/images/marker_over_hardcore.png
[ -L ~/web2py/applications/solver/static/images/marker_over_mania.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/marker_over_mania.png ~/web2py/applications/solver/static/images/marker_over_mania.png
[ -L ~/web2py/applications/solver/static/images/bin.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/bin.svg ~/web2py/applications/solver/static/images/bin.svg
[ -L ~/web2py/applications/solver/static/images/checkmark.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/checkmark.svg ~/web2py/applications/solver/static/images/checkmark.svg
[ -L ~/web2py/applications/solver/static/images/refresh.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/refresh.svg ~/web2py/applications/solver/static/images/refresh.svg
[ -L ~/web2py/applications/solver/static/images/cloud_download.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/cloud_download.svg ~/web2py/applications/solver/static/images/cloud_download.svg
[ -L ~/web2py/applications/solver/static/images/cloud_upload.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/cloud_upload.png ~/web2py/applications/solver/static/images/cloud_upload.png
[ -L ~/web2py/applications/solver/static/images/help.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/help.svg ~/web2py/applications/solver/static/images/help.svg
[ -L ~/web2py/applications/solver/static/images/repeat.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/repeat.svg ~/web2py/applications/solver/static/images/repeat.svg
[ -L ~/web2py/applications/solver/static/images/warning.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/warning.svg ~/web2py/applications/solver/static/images/warning.svg
[ -L ~/web2py/applications/solver/static/images/play.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/play.svg ~/web2py/applications/solver/static/images/play.svg
[ -L ~/web2py/applications/solver/static/images/save.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/save.svg ~/web2py/applications/solver/static/images/save.svg
[ -L ~/web2py/applications/solver/static/images/locked.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/locked.svg ~/web2py/applications/solver/static/images/locked.svg
[ -L ~/web2py/applications/solver/static/images/portal.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/portal.png ~/web2py/applications/solver/static/images/portal.png
[ -L ~/web2py/applications/solver/static/images/portal_boss.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/portal_boss.png ~/web2py/applications/solver/static/images/portal_boss.png
[ -L ~/web2py/applications/solver/static/images/portal_escape.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/portal_escape.png ~/web2py/applications/solver/static/images/portal_escape.png
[ -L ~/web2py/applications/solver/static/images/portal_maridia.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/portal_maridia.png ~/web2py/applications/solver/static/images/portal_maridia.png
[ -L ~/web2py/applications/solver/static/images/portal_maridia_vanilla.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/portal_maridia_vanilla.png ~/web2py/applications/solver/static/images/portal_maridia_vanilla.png
[ -L ~/web2py/applications/solver/static/images/portal_maridia_area.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/portal_maridia_area.png ~/web2py/applications/solver/static/images/portal_maridia_area.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_easy.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/marker_visited_easy.png ~/web2py/applications/solver/static/images/marker_visited_easy.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_medium.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/marker_visited_medium.png ~/web2py/applications/solver/static/images/marker_visited_medium.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hard.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/marker_visited_hard.png ~/web2py/applications/solver/static/images/marker_visited_hard.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_harder.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/marker_visited_harder.png ~/web2py/applications/solver/static/images/marker_visited_harder.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hardcore.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/marker_visited_hardcore.png ~/web2py/applications/solver/static/images/marker_visited_hardcore.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_mania.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/marker_visited_mania.png ~/web2py/applications/solver/static/images/marker_visited_mania.png
[ -L ~/web2py/applications/solver/static/images/gps.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps.png ~/web2py/applications/solver/static/images/gps.png
[ -L ~/web2py/applications/solver/static/images/logo_varia.png ] || ln -s ~/RandomMetroidSolver/web/static/logo_varia.png ~/web2py/applications/solver/static/images/logo_varia.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_easy_Bomb.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_easy_Bomb.png ~/web2py/applications/solver/static/images/marker_visited_easy_Bomb.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_easy_Charge.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_easy_Charge.png ~/web2py/applications/solver/static/images/marker_visited_easy_Charge.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_easy_ETank.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_easy_ETank.png ~/web2py/applications/solver/static/images/marker_visited_easy_ETank.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_easy_Grapple.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_easy_Grapple.png ~/web2py/applications/solver/static/images/marker_visited_easy_Grapple.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_easy_HiJump.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_easy_HiJump.png ~/web2py/applications/solver/static/images/marker_visited_easy_HiJump.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_easy_Ice.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_easy_Ice.png ~/web2py/applications/solver/static/images/marker_visited_easy_Ice.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_easy_Missile.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_easy_Missile.png ~/web2py/applications/solver/static/images/marker_visited_easy_Missile.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_easy_Morph.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_easy_Morph.png ~/web2py/applications/solver/static/images/marker_visited_easy_Morph.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_easy_Plasma.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_easy_Plasma.png ~/web2py/applications/solver/static/images/marker_visited_easy_Plasma.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_easy_PowerBomb.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_easy_PowerBomb.png ~/web2py/applications/solver/static/images/marker_visited_easy_PowerBomb.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_easy_Reserve.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_easy_Reserve.png ~/web2py/applications/solver/static/images/marker_visited_easy_Reserve.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_easy_ScrewAttack.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_easy_ScrewAttack.png ~/web2py/applications/solver/static/images/marker_visited_easy_ScrewAttack.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_easy_SpaceJump.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_easy_SpaceJump.png ~/web2py/applications/solver/static/images/marker_visited_easy_SpaceJump.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_easy_Spazer.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_easy_Spazer.png ~/web2py/applications/solver/static/images/marker_visited_easy_Spazer.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_easy_SpeedBooster.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_easy_SpeedBooster.png ~/web2py/applications/solver/static/images/marker_visited_easy_SpeedBooster.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_easy_SpringBall.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_easy_SpringBall.png ~/web2py/applications/solver/static/images/marker_visited_easy_SpringBall.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_easy_Super.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_easy_Super.png ~/web2py/applications/solver/static/images/marker_visited_easy_Super.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_easy_Varia.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_easy_Varia.png ~/web2py/applications/solver/static/images/marker_visited_easy_Varia.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_easy_Wave.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_easy_Wave.png ~/web2py/applications/solver/static/images/marker_visited_easy_Wave.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_easy_XRayScope.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_easy_XRayScope.png ~/web2py/applications/solver/static/images/marker_visited_easy_XRayScope.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hard_Bomb.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hard_Bomb.png ~/web2py/applications/solver/static/images/marker_visited_hard_Bomb.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hard_Charge.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hard_Charge.png ~/web2py/applications/solver/static/images/marker_visited_hard_Charge.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hardcore_Bomb.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hardcore_Bomb.png ~/web2py/applications/solver/static/images/marker_visited_hardcore_Bomb.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hardcore_Charge.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hardcore_Charge.png ~/web2py/applications/solver/static/images/marker_visited_hardcore_Charge.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hardcore_ETank.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hardcore_ETank.png ~/web2py/applications/solver/static/images/marker_visited_hardcore_ETank.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hardcore_Grapple.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hardcore_Grapple.png ~/web2py/applications/solver/static/images/marker_visited_hardcore_Grapple.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hardcore_HiJump.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hardcore_HiJump.png ~/web2py/applications/solver/static/images/marker_visited_hardcore_HiJump.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hardcore_Ice.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hardcore_Ice.png ~/web2py/applications/solver/static/images/marker_visited_hardcore_Ice.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hardcore_Missile.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hardcore_Missile.png ~/web2py/applications/solver/static/images/marker_visited_hardcore_Missile.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hardcore_Morph.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hardcore_Morph.png ~/web2py/applications/solver/static/images/marker_visited_hardcore_Morph.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hardcore_Plasma.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hardcore_Plasma.png ~/web2py/applications/solver/static/images/marker_visited_hardcore_Plasma.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hardcore_PowerBomb.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hardcore_PowerBomb.png ~/web2py/applications/solver/static/images/marker_visited_hardcore_PowerBomb.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hardcore_Reserve.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hardcore_Reserve.png ~/web2py/applications/solver/static/images/marker_visited_hardcore_Reserve.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hardcore_ScrewAttack.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hardcore_ScrewAttack.png ~/web2py/applications/solver/static/images/marker_visited_hardcore_ScrewAttack.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hardcore_SpaceJump.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hardcore_SpaceJump.png ~/web2py/applications/solver/static/images/marker_visited_hardcore_SpaceJump.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hardcore_Spazer.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hardcore_Spazer.png ~/web2py/applications/solver/static/images/marker_visited_hardcore_Spazer.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hardcore_SpeedBooster.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hardcore_SpeedBooster.png ~/web2py/applications/solver/static/images/marker_visited_hardcore_SpeedBooster.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hardcore_SpringBall.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hardcore_SpringBall.png ~/web2py/applications/solver/static/images/marker_visited_hardcore_SpringBall.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hardcore_Super.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hardcore_Super.png ~/web2py/applications/solver/static/images/marker_visited_hardcore_Super.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hardcore_Varia.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hardcore_Varia.png ~/web2py/applications/solver/static/images/marker_visited_hardcore_Varia.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hardcore_Wave.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hardcore_Wave.png ~/web2py/applications/solver/static/images/marker_visited_hardcore_Wave.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hardcore_XRayScope.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hardcore_XRayScope.png ~/web2py/applications/solver/static/images/marker_visited_hardcore_XRayScope.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_harder_Bomb.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_harder_Bomb.png ~/web2py/applications/solver/static/images/marker_visited_harder_Bomb.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_harder_Charge.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_harder_Charge.png ~/web2py/applications/solver/static/images/marker_visited_harder_Charge.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_harder_ETank.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_harder_ETank.png ~/web2py/applications/solver/static/images/marker_visited_harder_ETank.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_harder_Grapple.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_harder_Grapple.png ~/web2py/applications/solver/static/images/marker_visited_harder_Grapple.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_harder_HiJump.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_harder_HiJump.png ~/web2py/applications/solver/static/images/marker_visited_harder_HiJump.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_harder_Ice.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_harder_Ice.png ~/web2py/applications/solver/static/images/marker_visited_harder_Ice.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_harder_Missile.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_harder_Missile.png ~/web2py/applications/solver/static/images/marker_visited_harder_Missile.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_harder_Morph.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_harder_Morph.png ~/web2py/applications/solver/static/images/marker_visited_harder_Morph.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_harder_Plasma.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_harder_Plasma.png ~/web2py/applications/solver/static/images/marker_visited_harder_Plasma.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_harder_PowerBomb.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_harder_PowerBomb.png ~/web2py/applications/solver/static/images/marker_visited_harder_PowerBomb.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_harder_Reserve.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_harder_Reserve.png ~/web2py/applications/solver/static/images/marker_visited_harder_Reserve.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_harder_ScrewAttack.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_harder_ScrewAttack.png ~/web2py/applications/solver/static/images/marker_visited_harder_ScrewAttack.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_harder_SpaceJump.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_harder_SpaceJump.png ~/web2py/applications/solver/static/images/marker_visited_harder_SpaceJump.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_harder_Spazer.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_harder_Spazer.png ~/web2py/applications/solver/static/images/marker_visited_harder_Spazer.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_harder_SpeedBooster.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_harder_SpeedBooster.png ~/web2py/applications/solver/static/images/marker_visited_harder_SpeedBooster.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_harder_SpringBall.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_harder_SpringBall.png ~/web2py/applications/solver/static/images/marker_visited_harder_SpringBall.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_harder_Super.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_harder_Super.png ~/web2py/applications/solver/static/images/marker_visited_harder_Super.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_harder_Varia.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_harder_Varia.png ~/web2py/applications/solver/static/images/marker_visited_harder_Varia.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_harder_Wave.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_harder_Wave.png ~/web2py/applications/solver/static/images/marker_visited_harder_Wave.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_harder_XRayScope.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_harder_XRayScope.png ~/web2py/applications/solver/static/images/marker_visited_harder_XRayScope.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hard_ETank.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hard_ETank.png ~/web2py/applications/solver/static/images/marker_visited_hard_ETank.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hard_Grapple.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hard_Grapple.png ~/web2py/applications/solver/static/images/marker_visited_hard_Grapple.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hard_HiJump.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hard_HiJump.png ~/web2py/applications/solver/static/images/marker_visited_hard_HiJump.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hard_Ice.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hard_Ice.png ~/web2py/applications/solver/static/images/marker_visited_hard_Ice.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hard_Missile.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hard_Missile.png ~/web2py/applications/solver/static/images/marker_visited_hard_Missile.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hard_Morph.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hard_Morph.png ~/web2py/applications/solver/static/images/marker_visited_hard_Morph.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hard_Plasma.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hard_Plasma.png ~/web2py/applications/solver/static/images/marker_visited_hard_Plasma.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hard_PowerBomb.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hard_PowerBomb.png ~/web2py/applications/solver/static/images/marker_visited_hard_PowerBomb.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hard_Reserve.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hard_Reserve.png ~/web2py/applications/solver/static/images/marker_visited_hard_Reserve.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hard_ScrewAttack.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hard_ScrewAttack.png ~/web2py/applications/solver/static/images/marker_visited_hard_ScrewAttack.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hard_SpaceJump.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hard_SpaceJump.png ~/web2py/applications/solver/static/images/marker_visited_hard_SpaceJump.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hard_Spazer.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hard_Spazer.png ~/web2py/applications/solver/static/images/marker_visited_hard_Spazer.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hard_SpeedBooster.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hard_SpeedBooster.png ~/web2py/applications/solver/static/images/marker_visited_hard_SpeedBooster.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hard_SpringBall.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hard_SpringBall.png ~/web2py/applications/solver/static/images/marker_visited_hard_SpringBall.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hard_Super.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hard_Super.png ~/web2py/applications/solver/static/images/marker_visited_hard_Super.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hard_Varia.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hard_Varia.png ~/web2py/applications/solver/static/images/marker_visited_hard_Varia.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hard_Wave.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hard_Wave.png ~/web2py/applications/solver/static/images/marker_visited_hard_Wave.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hard_XRayScope.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hard_XRayScope.png ~/web2py/applications/solver/static/images/marker_visited_hard_XRayScope.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_mania_Bomb.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_mania_Bomb.png ~/web2py/applications/solver/static/images/marker_visited_mania_Bomb.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_mania_Charge.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_mania_Charge.png ~/web2py/applications/solver/static/images/marker_visited_mania_Charge.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_mania_ETank.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_mania_ETank.png ~/web2py/applications/solver/static/images/marker_visited_mania_ETank.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_mania_Grapple.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_mania_Grapple.png ~/web2py/applications/solver/static/images/marker_visited_mania_Grapple.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_mania_HiJump.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_mania_HiJump.png ~/web2py/applications/solver/static/images/marker_visited_mania_HiJump.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_mania_Ice.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_mania_Ice.png ~/web2py/applications/solver/static/images/marker_visited_mania_Ice.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_mania_Missile.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_mania_Missile.png ~/web2py/applications/solver/static/images/marker_visited_mania_Missile.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_mania_Morph.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_mania_Morph.png ~/web2py/applications/solver/static/images/marker_visited_mania_Morph.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_mania_Plasma.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_mania_Plasma.png ~/web2py/applications/solver/static/images/marker_visited_mania_Plasma.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_mania_PowerBomb.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_mania_PowerBomb.png ~/web2py/applications/solver/static/images/marker_visited_mania_PowerBomb.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_mania_Reserve.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_mania_Reserve.png ~/web2py/applications/solver/static/images/marker_visited_mania_Reserve.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_mania_ScrewAttack.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_mania_ScrewAttack.png ~/web2py/applications/solver/static/images/marker_visited_mania_ScrewAttack.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_mania_SpaceJump.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_mania_SpaceJump.png ~/web2py/applications/solver/static/images/marker_visited_mania_SpaceJump.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_mania_Spazer.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_mania_Spazer.png ~/web2py/applications/solver/static/images/marker_visited_mania_Spazer.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_mania_SpeedBooster.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_mania_SpeedBooster.png ~/web2py/applications/solver/static/images/marker_visited_mania_SpeedBooster.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_mania_SpringBall.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_mania_SpringBall.png ~/web2py/applications/solver/static/images/marker_visited_mania_SpringBall.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_mania_Super.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_mania_Super.png ~/web2py/applications/solver/static/images/marker_visited_mania_Super.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_mania_Varia.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_mania_Varia.png ~/web2py/applications/solver/static/images/marker_visited_mania_Varia.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_mania_Wave.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_mania_Wave.png ~/web2py/applications/solver/static/images/marker_visited_mania_Wave.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_mania_XRayScope.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_mania_XRayScope.png ~/web2py/applications/solver/static/images/marker_visited_mania_XRayScope.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_medium_Bomb.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_medium_Bomb.png ~/web2py/applications/solver/static/images/marker_visited_medium_Bomb.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_medium_Charge.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_medium_Charge.png ~/web2py/applications/solver/static/images/marker_visited_medium_Charge.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_medium_ETank.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_medium_ETank.png ~/web2py/applications/solver/static/images/marker_visited_medium_ETank.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_medium_Grapple.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_medium_Grapple.png ~/web2py/applications/solver/static/images/marker_visited_medium_Grapple.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_medium_HiJump.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_medium_HiJump.png ~/web2py/applications/solver/static/images/marker_visited_medium_HiJump.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_medium_Ice.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_medium_Ice.png ~/web2py/applications/solver/static/images/marker_visited_medium_Ice.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_medium_Missile.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_medium_Missile.png ~/web2py/applications/solver/static/images/marker_visited_medium_Missile.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_medium_Morph.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_medium_Morph.png ~/web2py/applications/solver/static/images/marker_visited_medium_Morph.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_medium_Plasma.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_medium_Plasma.png ~/web2py/applications/solver/static/images/marker_visited_medium_Plasma.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_medium_PowerBomb.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_medium_PowerBomb.png ~/web2py/applications/solver/static/images/marker_visited_medium_PowerBomb.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_medium_Reserve.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_medium_Reserve.png ~/web2py/applications/solver/static/images/marker_visited_medium_Reserve.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_medium_ScrewAttack.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_medium_ScrewAttack.png ~/web2py/applications/solver/static/images/marker_visited_medium_ScrewAttack.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_medium_SpaceJump.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_medium_SpaceJump.png ~/web2py/applications/solver/static/images/marker_visited_medium_SpaceJump.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_medium_Spazer.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_medium_Spazer.png ~/web2py/applications/solver/static/images/marker_visited_medium_Spazer.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_medium_SpeedBooster.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_medium_SpeedBooster.png ~/web2py/applications/solver/static/images/marker_visited_medium_SpeedBooster.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_medium_SpringBall.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_medium_SpringBall.png ~/web2py/applications/solver/static/images/marker_visited_medium_SpringBall.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_medium_Super.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_medium_Super.png ~/web2py/applications/solver/static/images/marker_visited_medium_Super.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_medium_Varia.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_medium_Varia.png ~/web2py/applications/solver/static/images/marker_visited_medium_Varia.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_medium_Wave.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_medium_Wave.png ~/web2py/applications/solver/static/images/marker_visited_medium_Wave.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_medium_XRayScope.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_medium_XRayScope.png ~/web2py/applications/solver/static/images/marker_visited_medium_XRayScope.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_easy_Gravity.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_easy_Gravity.png ~/web2py/applications/solver/static/images/marker_visited_easy_Gravity.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hardcore_Gravity.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hardcore_Gravity.png ~/web2py/applications/solver/static/images/marker_visited_hardcore_Gravity.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_harder_Gravity.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_harder_Gravity.png ~/web2py/applications/solver/static/images/marker_visited_harder_Gravity.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hard_Gravity.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hard_Gravity.png ~/web2py/applications/solver/static/images/marker_visited_hard_Gravity.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_mania_Gravity.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_mania_Gravity.png ~/web2py/applications/solver/static/images/marker_visited_mania_Gravity.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_medium_Gravity.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_medium_Gravity.png ~/web2py/applications/solver/static/images/marker_visited_medium_Gravity.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_break_Bomb.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_break_Bomb.png ~/web2py/applications/solver/static/images/marker_visited_break_Bomb.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_break_Charge.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_break_Charge.png ~/web2py/applications/solver/static/images/marker_visited_break_Charge.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_break_ETank.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_break_ETank.png ~/web2py/applications/solver/static/images/marker_visited_break_ETank.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_break_Grapple.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_break_Grapple.png ~/web2py/applications/solver/static/images/marker_visited_break_Grapple.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_break_Gravity.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_break_Gravity.png ~/web2py/applications/solver/static/images/marker_visited_break_Gravity.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_break_HiJump.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_break_HiJump.png ~/web2py/applications/solver/static/images/marker_visited_break_HiJump.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_break_Ice.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_break_Ice.png ~/web2py/applications/solver/static/images/marker_visited_break_Ice.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_break_Missile.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_break_Missile.png ~/web2py/applications/solver/static/images/marker_visited_break_Missile.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_break_Morph.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_break_Morph.png ~/web2py/applications/solver/static/images/marker_visited_break_Morph.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_break_Plasma.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_break_Plasma.png ~/web2py/applications/solver/static/images/marker_visited_break_Plasma.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_break_PowerBomb.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_break_PowerBomb.png ~/web2py/applications/solver/static/images/marker_visited_break_PowerBomb.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_break_Reserve.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_break_Reserve.png ~/web2py/applications/solver/static/images/marker_visited_break_Reserve.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_break_ScrewAttack.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_break_ScrewAttack.png ~/web2py/applications/solver/static/images/marker_visited_break_ScrewAttack.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_break_SpaceJump.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_break_SpaceJump.png ~/web2py/applications/solver/static/images/marker_visited_break_SpaceJump.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_break_Spazer.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_break_Spazer.png ~/web2py/applications/solver/static/images/marker_visited_break_Spazer.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_break_SpeedBooster.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_break_SpeedBooster.png ~/web2py/applications/solver/static/images/marker_visited_break_SpeedBooster.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_break_SpringBall.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_break_SpringBall.png ~/web2py/applications/solver/static/images/marker_visited_break_SpringBall.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_break_Super.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_break_Super.png ~/web2py/applications/solver/static/images/marker_visited_break_Super.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_break_Varia.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_break_Varia.png ~/web2py/applications/solver/static/images/marker_visited_break_Varia.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_break_Wave.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_break_Wave.png ~/web2py/applications/solver/static/images/marker_visited_break_Wave.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_break_XRayScope.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_break_XRayScope.png ~/web2py/applications/solver/static/images/marker_visited_break_XRayScope.png

[ -L ~/web2py/applications/solver/static/images/marker_break.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/marker_break.png ~/web2py/applications/solver/static/images/marker_break.png
[ -L ~/web2py/applications/solver/static/images/marker_over_break.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/marker_over_break.png ~/web2py/applications/solver/static/images/marker_over_break.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_break.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/marker_visited_break.png ~/web2py/applications/solver/static/images/marker_visited_break.png

[ -L ~/web2py/applications/solver/static/images/draygon.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/G4/draygon.png ~/web2py/applications/solver/static/images/draygon.png
[ -L ~/web2py/applications/solver/static/images/golden_four.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/G4/golden_four.png ~/web2py/applications/solver/static/images/golden_four.png
[ -L ~/web2py/applications/solver/static/images/kraid.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/G4/kraid.png ~/web2py/applications/solver/static/images/kraid.png
[ -L ~/web2py/applications/solver/static/images/phantoon.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/G4/phantoon.png ~/web2py/applications/solver/static/images/phantoon.png
[ -L ~/web2py/applications/solver/static/images/ridley.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/G4/ridley.png ~/web2py/applications/solver/static/images/ridley.png

[ -L ~/web2py/applications/solver/static/images/0.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/numbers/0.png ~/web2py/applications/solver/static/images/0.png
[ -L ~/web2py/applications/solver/static/images/1.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/numbers/1.png ~/web2py/applications/solver/static/images/1.png
[ -L ~/web2py/applications/solver/static/images/2.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/numbers/2.png ~/web2py/applications/solver/static/images/2.png
[ -L ~/web2py/applications/solver/static/images/3.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/numbers/3.png ~/web2py/applications/solver/static/images/3.png
[ -L ~/web2py/applications/solver/static/images/4.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/numbers/4.png ~/web2py/applications/solver/static/images/4.png
[ -L ~/web2py/applications/solver/static/images/5.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/numbers/5.png ~/web2py/applications/solver/static/images/5.png
[ -L ~/web2py/applications/solver/static/images/6.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/numbers/6.png ~/web2py/applications/solver/static/images/6.png
[ -L ~/web2py/applications/solver/static/images/7.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/numbers/7.png ~/web2py/applications/solver/static/images/7.png
[ -L ~/web2py/applications/solver/static/images/8.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/numbers/8.png ~/web2py/applications/solver/static/images/8.png
[ -L ~/web2py/applications/solver/static/images/9.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/numbers/9.png ~/web2py/applications/solver/static/images/9.png

[ -L ~/web2py/applications/solver/static/images/background.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/background.png ~/web2py/applications/solver/static/images/background.png

[ -L ~/web2py/applications/solver/static/images/bomb.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/bomb.png ~/web2py/applications/solver/static/images/bomb.png
[ -L ~/web2py/applications/solver/static/images/charge.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/charge.png ~/web2py/applications/solver/static/images/charge.png
[ -L ~/web2py/applications/solver/static/images/gravity.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/gravity.png ~/web2py/applications/solver/static/images/gravity.png
[ -L ~/web2py/applications/solver/static/images/hijump.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/hijump.png ~/web2py/applications/solver/static/images/hijump.png
[ -L ~/web2py/applications/solver/static/images/ice.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/ice.png ~/web2py/applications/solver/static/images/ice.png
[ -L ~/web2py/applications/solver/static/images/morph.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/morph.png ~/web2py/applications/solver/static/images/morph.png
[ -L ~/web2py/applications/solver/static/images/plasma.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/plasma.png ~/web2py/applications/solver/static/images/plasma.png
[ -L ~/web2py/applications/solver/static/images/screwattack.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/screwattack.png ~/web2py/applications/solver/static/images/screwattack.png
[ -L ~/web2py/applications/solver/static/images/spacejump.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/spacejump.png ~/web2py/applications/solver/static/images/spacejump.png
[ -L ~/web2py/applications/solver/static/images/spazer.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/spazer.png ~/web2py/applications/solver/static/images/spazer.png
[ -L ~/web2py/applications/solver/static/images/speedbooster.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/speedbooster.png ~/web2py/applications/solver/static/images/speedbooster.png
[ -L ~/web2py/applications/solver/static/images/springball.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/springball.png ~/web2py/applications/solver/static/images/springball.png
[ -L ~/web2py/applications/solver/static/images/varia.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/varia.png ~/web2py/applications/solver/static/images/varia.png
[ -L ~/web2py/applications/solver/static/images/wave.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/wave.png ~/web2py/applications/solver/static/images/wave.png

[ -L ~/web2py/applications/solver/static/images/grapple.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/grapple.png ~/web2py/applications/solver/static/images/grapple.png
[ -L ~/web2py/applications/solver/static/images/missile.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/missile.png ~/web2py/applications/solver/static/images/missile.png
[ -L ~/web2py/applications/solver/static/images/powerbomb.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/powerbomb.png ~/web2py/applications/solver/static/images/powerbomb.png
[ -L ~/web2py/applications/solver/static/images/super.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/super.png ~/web2py/applications/solver/static/images/super.png
[ -L ~/web2py/applications/solver/static/images/xray.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/xray.png ~/web2py/applications/solver/static/images/xray.png
[ -L ~/web2py/applications/solver/static/images/energy.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/energy.png ~/web2py/applications/solver/static/images/energy.png

[ -L ~/web2py/applications/solver/static/images/etank.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/etank.png ~/web2py/applications/solver/static/images/etank.png
[ -L ~/web2py/applications/solver/static/images/reserve.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/reserve.png ~/web2py/applications/solver/static/images/reserve.png
[ -L ~/web2py/applications/solver/static/images/auto.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/auto.png ~/web2py/applications/solver/static/images/auto.png
[ -L ~/web2py/applications/solver/static/images/reserve_text.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/reserve_text.png ~/web2py/applications/solver/static/images/reserve_text.png
[ -L ~/web2py/applications/solver/static/images/0_reserve.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/0_reserve.png ~/web2py/applications/solver/static/images/0_reserve.png
[ -L ~/web2py/applications/solver/static/images/1_reserve.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/1_reserve.png ~/web2py/applications/solver/static/images/1_reserve.png
[ -L ~/web2py/applications/solver/static/images/2_reserve.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/2_reserve.png ~/web2py/applications/solver/static/images/2_reserve.png
[ -L ~/web2py/applications/solver/static/images/3_reserve.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/3_reserve.png ~/web2py/applications/solver/static/images/3_reserve.png
[ -L ~/web2py/applications/solver/static/images/4_reserve.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/4_reserve.png ~/web2py/applications/solver/static/images/4_reserve.png

[ -L ~/web2py/rando_presets ] || ln -s ~/RandomMetroidSolver/rando_presets ~/web2py/rando_presets
[ -L ~/web2py/applications/solver/static/images/league.png ] || ln -s ~/RandomMetroidSolver/web/static/league.png ~/web2py/applications/solver/static/images/league.png

[ -L ~/web2py/applications/solver/static/images/chozo_map_thumbnail.png ] || ln -s ~/RandomMetroidSolver/web/static/chozo_map_thumbnail.png ~/web2py/applications/solver/static/images/chozo_map_thumbnail.png
[ -L ~/web2py/applications/solver/static/images/chozo_map.png ] || ln -s ~/RandomMetroidSolver/web/static/chozo_map.png ~/web2py/applications/solver/static/images/chozo_map.png

[ -L ~/web2py/applications/solver/views/solver_web/t_includes.html ] || ln -s ~/RandomMetroidSolver/web/views/t_includes.html ~/web2py/applications/solver/views/solver_web/t_includes.html
[ -L ~/web2py/applications/solver/views/solver_web/t_install.html ] || ln -s ~/RandomMetroidSolver/web/views/t_install.html ~/web2py/applications/solver/views/solver_web/t_install.html
[ -L ~/web2py/applications/solver/views/solver_web/t_js.html ] || ln -s ~/RandomMetroidSolver/web/views/t_js.html ~/web2py/applications/solver/views/solver_web/t_js.html
[ -L ~/web2py/applications/solver/views/solver_web/t_main.html ] || ln -s ~/RandomMetroidSolver/web/views/t_main.html ~/web2py/applications/solver/views/solver_web/t_main.html
[ -L ~/web2py/applications/solver/views/solver_web/t_style.html ] || ln -s ~/RandomMetroidSolver/web/views/t_style.html ~/web2py/applications/solver/views/solver_web/t_style.html
[ -L ~/web2py/applications/solver/views/solver_web/plando.html ] || ln -s ~/RandomMetroidSolver/web/views/plando.html ~/web2py/applications/solver/views/solver_web/plando.html

[ -L ~/web2py/applications/solver/static/images/fast_forward.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/fast_forward.svg ~/web2py/applications/solver/static/images/fast_forward.svg
[ -L ~/web2py/applications/solver/static/images/right_arrow.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/right_arrow.svg ~/web2py/applications/solver/static/images/right_arrow.svg

[ -L ~/web2py/routes.py ] || ln -s ~/RandomMetroidSolver/web/static/routes.py ~/web2py/routes.py

[ -L ~/web2py/applications/solver/static/images/palettesRando.png ] || ln -s ~/RandomMetroidSolver/web/static/palettesRando.png ~/web2py/applications/solver/static/images/palettesRando.png

[ -L ~/web2py/applications/solver/views/solver_web/customizer.html ] || ln -s ~/RandomMetroidSolver/web/views/customizer.html ~/web2py/applications/solver/views/solver_web/customizer.html

[ -L ~/web2py/applications/solver/static/images/samus_degrees.png ] || ln -s ~/RandomMetroidSolver/web/static/samus_degrees.png ~/web2py/applications/solver/static/images/samus_degrees.png

[ -L ~/web2py/applications/solver/static/images/bt_map.png ] || ln -s ~/RandomMetroidSolver/web/static/help/bt_map.png ~/web2py/applications/solver/static/images/bt_map.png
[ -L ~/web2py/applications/solver/static/images/cathedral.png ] || ln -s ~/RandomMetroidSolver/web/static/help/cathedral.png ~/web2py/applications/solver/static/images/cathedral.png
[ -L ~/web2py/applications/solver/static/images/dachora.png ] || ln -s ~/RandomMetroidSolver/web/static/help/dachora.png ~/web2py/applications/solver/static/images/dachora.png
[ -L ~/web2py/applications/solver/static/images/early_super.png ] || ln -s ~/RandomMetroidSolver/web/static/help/early_super.png ~/web2py/applications/solver/static/images/early_super.png
[ -L ~/web2py/applications/solver/static/images/high_jump.png ] || ln -s ~/RandomMetroidSolver/web/static/help/high_jump.png ~/web2py/applications/solver/static/images/high_jump.png
[ -L ~/web2py/applications/solver/static/images/moat.png ] || ln -s ~/RandomMetroidSolver/web/static/help/moat.png ~/web2py/applications/solver/static/images/moat.png
[ -L ~/web2py/applications/solver/static/images/red_tower.png ] || ln -s ~/RandomMetroidSolver/web/static/help/red_tower.png ~/web2py/applications/solver/static/images/red_tower.png
[ -L ~/web2py/applications/solver/static/images/spazer_block.png ] || ln -s ~/RandomMetroidSolver/web/static/help/spazer_block.png ~/web2py/applications/solver/static/images/spazer_block.png

[ -L ~/web2py/applications/solver/static/images/ln_access.png ] || ln -s ~/RandomMetroidSolver/web/static/help/ln_access.png ~/web2py/applications/solver/static/images/ln_access.png
[ -L ~/web2py/applications/solver/static/images/ln_gate.png ] || ln -s ~/RandomMetroidSolver/web/static/help/ln_gate.png ~/web2py/applications/solver/static/images/ln_gate.png
[ -L ~/web2py/applications/solver/static/images/fish_access.png ] || ln -s ~/RandomMetroidSolver/web/static/help/fish_access.png ~/web2py/applications/solver/static/images/fish_access.png
[ -L ~/web2py/applications/solver/static/images/fish_gate.png ] || ln -s ~/RandomMetroidSolver/web/static/help/fish_gate.png ~/web2py/applications/solver/static/images/fish_gate.png
[ -L ~/web2py/applications/solver/static/images/tube_access.png ] || ln -s ~/RandomMetroidSolver/web/static/help/tube_access.png ~/web2py/applications/solver/static/images/tube_access.png
[ -L ~/web2py/applications/solver/static/images/tube_gate.png ] || ln -s ~/RandomMetroidSolver/web/static/help/tube_gate.png ~/web2py/applications/solver/static/images/tube_gate.png
[ -L ~/web2py/applications/solver/static/images/crab_gate.png ] || ln -s ~/RandomMetroidSolver/web/static/help/crab_gate.png ~/web2py/applications/solver/static/images/crab_gate.png
[ -L ~/web2py/applications/solver/static/images/greenhill_platform.png ] || ln -s ~/RandomMetroidSolver/web/static/help/greenhill_platform.png ~/web2py/applications/solver/static/images/greenhill_platform.png
[ -L ~/web2py/applications/solver/static/images/greenhill_gate.png ] || ln -s ~/RandomMetroidSolver/web/static/help/greenhill_gate.png ~/web2py/applications/solver/static/images/greenhill_gate.png

[ -L ~/web2py/applications/solver/static/images/ws_etank.png ] || ln -s ~/RandomMetroidSolver/web/static/help/ws_etank.png ~/web2py/applications/solver/static/images/ws_etank.png
[ -L ~/web2py/applications/solver/static/images/ln_chozo.png ] || ln -s ~/RandomMetroidSolver/web/static/help/ln_chozo.png ~/web2py/applications/solver/static/images/ln_chozo.png
[ -L ~/web2py/applications/solver/static/images/bomb_torizo.png ] || ln -s ~/RandomMetroidSolver/web/static/help/bomb_torizo.png ~/web2py/applications/solver/static/images/bomb_torizo.png

[ -L ~/web2py/applications/solver/static/images/Gravity.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/items/Gravity.png ~/web2py/applications/solver/static/images/Gravity.png

[ -L ~/web2py/applications/solver/static/images/HiJump.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/items/HiJump.png ~/web2py/applications/solver/static/images/HiJump.png
[ -L ~/web2py/applications/solver/static/images/Grapple.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/items/Grapple.png ~/web2py/applications/solver/static/images/Grapple.png
[ -L ~/web2py/applications/solver/static/images/SpringBall.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/items/SpringBall.png ~/web2py/applications/solver/static/images/SpringBall.png
[ -L ~/web2py/applications/solver/static/images/SpeedBooster.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/items/SpeedBooster.png ~/web2py/applications/solver/static/images/SpeedBooster.png
[ -L ~/web2py/applications/solver/static/images/Bomb.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/items/Bomb.png ~/web2py/applications/solver/static/images/Bomb.png
[ -L ~/web2py/applications/solver/static/images/SpaceJump.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/items/SpaceJump.png ~/web2py/applications/solver/static/images/SpaceJump.png

[ -L ~/web2py/applications/solver/static/images/Plasma.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/items/Plasma.png ~/web2py/applications/solver/static/images/Plasma.png
[ -L ~/web2py/applications/solver/static/images/ScrewAttack.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/items/ScrewAttack.png ~/web2py/applications/solver/static/images/ScrewAttack.png
[ -L ~/web2py/applications/solver/static/images/Spazer.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/items/Spazer.png ~/web2py/applications/solver/static/images/Spazer.png
[ -L ~/web2py/applications/solver/static/images/Wave.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/items/Wave.png ~/web2py/applications/solver/static/images/Wave.png
[ -L ~/web2py/applications/solver/static/images/Varia.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/items/Varia.png ~/web2py/applications/solver/static/images/Varia.png

[ -L ~/web2py/applications/solver/static/images/Charge.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/items/Charge.png ~/web2py/applications/solver/static/images/Charge.png
[ -L ~/web2py/applications/solver/static/images/ETank.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/items/ETank.png ~/web2py/applications/solver/static/images/ETank.png
[ -L ~/web2py/applications/solver/static/images/Ice.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/items/Ice.png ~/web2py/applications/solver/static/images/Ice.png
[ -L ~/web2py/applications/solver/static/images/Missile.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/items/Missile.png ~/web2py/applications/solver/static/images/Missile.png
[ -L ~/web2py/applications/solver/static/images/Morph.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/items/Morph.png ~/web2py/applications/solver/static/images/Morph.png
[ -L ~/web2py/applications/solver/static/images/PowerBomb.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/items/PowerBomb.png ~/web2py/applications/solver/static/images/PowerBomb.png
[ -L ~/web2py/applications/solver/static/images/Reserve.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/items/Reserve.png ~/web2py/applications/solver/static/images/Reserve.png
[ -L ~/web2py/applications/solver/static/images/Super.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/items/Super.png ~/web2py/applications/solver/static/images/Super.png
[ -L ~/web2py/applications/solver/static/images/XRayScope.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/items/XRayScope.png ~/web2py/applications/solver/static/images/XRayScope.png

[ -L ~/web2py/applications/solver/views/solver_web/extStats.html ] || ln -s ~/RandomMetroidSolver/web/views/extStats.html ~/web2py/applications/solver/views/solver_web/extStats.html

[ -L ~/web2py/applications/solver/static/images/games.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/games.svg ~/web2py/applications/solver/static/images/games.svg

[ -L ~/web2py/applications/solver/static/image-picker ] || ln -s ~/RandomMetroidSolver/web/static/image-picker ~/web2py/applications/solver/static/image-picker

[ -L ~/web2py/applications/solver/static/images/Nothing.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/items/Nothing.png ~/web2py/applications/solver/static/images/Nothing.png

[ -L ~/web2py/applications/solver/static/images/rando_popup.png ] || ln -s ~/RandomMetroidSolver/web/static/help/rando_popup.png ~/web2py/applications/solver/static/images/rando_popup.png
[ -L ~/web2py/applications/solver/static/images/item_popup.png ] || ln -s ~/RandomMetroidSolver/web/static/help/item_popup.png ~/web2py/applications/solver/static/images/item_popup.png
[ -L ~/web2py/applications/solver/static/images/load_popup.png ] || ln -s ~/RandomMetroidSolver/web/static/help/load_popup.png ~/web2py/applications/solver/static/images/load_popup.png

[ -L ~/web2py/applications/solver/static/js/jquery.redirect.js ] || ln -s ~/RandomMetroidSolver/web/static/jquery.redirect.js ~/web2py/applications/solver/static/js/jquery.redirect.js


[ -L ~/web2py/applications/solver/static/images/spore_save.png ] || ln -s ~/RandomMetroidSolver/web/static/help/spore_save.png ~/web2py/applications/solver/static/images/spore_save.png
[ -L ~/web2py/applications/solver/static/images/ws_save.png ] || ln -s ~/RandomMetroidSolver/web/static/help/ws_save.png ~/web2py/applications/solver/static/images/ws_save.png
[ -L ~/web2py/applications/solver/static/images/early_super_bis.png ] || ln -s ~/RandomMetroidSolver/web/static/help/early_super_bis.png ~/web2py/applications/solver/static/images/early_super_bis.png

[ -L ~/web2py/applications/solver/static/images/crystal_flash.png ] || ln -s ~/RandomMetroidSolver/web/static/crystal_flash.png ~/web2py/applications/solver/static/images/crystal_flash.png

[ -L ~/web2py/applications/solver/static/js/crc32.js ] || ln -s ~/RandomMetroidSolver/web/static/crc32.js ~/web2py/applications/solver/static/js/crc32.js

[ -L ~/web2py/applications/solver/static/images/Draygon.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/bosses/Draygon.png ~/web2py/applications/solver/static/images/Draygon.png
[ -L ~/web2py/applications/solver/static/images/Kraid.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/bosses/Kraid.png ~/web2py/applications/solver/static/images/Kraid.png
[ -L ~/web2py/applications/solver/static/images/Phantoon.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/bosses/Phantoon.png ~/web2py/applications/solver/static/images/Phantoon.png
[ -L ~/web2py/applications/solver/static/images/Ridley.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/bosses/Ridley.png ~/web2py/applications/solver/static/images/Ridley.png
[ -L ~/web2py/applications/solver/static/images/MotherBrain.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/bosses/MotherBrain.png ~/web2py/applications/solver/static/images/MotherBrain.png

[ -L ~/web2py/applications/solver/static/images/AlphaPowerBombRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/AlphaPowerBombRoom.png ~/web2py/applications/solver/static/images/AlphaPowerBombRoom.png
[ -L ~/web2py/applications/solver/static/images/Aqueduct.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/Aqueduct.png ~/web2py/applications/solver/static/images/Aqueduct.png
[ -L ~/web2py/applications/solver/static/images/BetaPowerBombRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/BetaPowerBombRoom.png ~/web2py/applications/solver/static/images/BetaPowerBombRoom.png
[ -L ~/web2py/applications/solver/static/images/BigPink.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/BigPink.png ~/web2py/applications/solver/static/images/BigPink.png
[ -L ~/web2py/applications/solver/static/images/BillyMaysRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/BillyMaysRoom.png ~/web2py/applications/solver/static/images/BillyMaysRoom.png
[ -L ~/web2py/applications/solver/static/images/BlueBrinstarEnergyTankRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/BlueBrinstarEnergyTankRoom.png ~/web2py/applications/solver/static/images/BlueBrinstarEnergyTankRoom.png
[ -L ~/web2py/applications/solver/static/images/BombTorizoRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/BombTorizoRoom.png ~/web2py/applications/solver/static/images/BombTorizoRoom.png
[ -L ~/web2py/applications/solver/static/images/BotwoonEnergyTankRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/BotwoonEnergyTankRoom.png ~/web2py/applications/solver/static/images/BotwoonEnergyTankRoom.png
[ -L ~/web2py/applications/solver/static/images/BowlingAlley.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/BowlingAlley.png ~/web2py/applications/solver/static/images/BowlingAlley.png
[ -L ~/web2py/applications/solver/static/images/BrinstarReserveTankRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/BrinstarReserveTankRoom.png ~/web2py/applications/solver/static/images/BrinstarReserveTankRoom.png
[ -L ~/web2py/applications/solver/static/images/BubbleMountain.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/BubbleMountain.png ~/web2py/applications/solver/static/images/BubbleMountain.png
[ -L ~/web2py/applications/solver/static/images/Cathedral.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/Cathedral.png ~/web2py/applications/solver/static/images/Cathedral.png
[ -L ~/web2py/applications/solver/static/images/CrateriaPowerBombRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/CrateriaPowerBombRoom.png ~/web2py/applications/solver/static/images/CrateriaPowerBombRoom.png
[ -L ~/web2py/applications/solver/static/images/CrateriaSuperRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/CrateriaSuperRoom.png ~/web2py/applications/solver/static/images/CrateriaSuperRoom.png
[ -L ~/web2py/applications/solver/static/images/CrocomireEscape.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/CrocomireEscape.png ~/web2py/applications/solver/static/images/CrocomireEscape.png
[ -L ~/web2py/applications/solver/static/images/CrocomiresRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/CrocomiresRoom.png ~/web2py/applications/solver/static/images/CrocomiresRoom.png
[ -L ~/web2py/applications/solver/static/images/CrumbleShaft.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/CrumbleShaft.png ~/web2py/applications/solver/static/images/CrumbleShaft.png
[ -L ~/web2py/applications/solver/static/images/DoubleChamber.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/DoubleChamber.png ~/web2py/applications/solver/static/images/DoubleChamber.png
[ -L ~/web2py/applications/solver/static/images/DraygonsRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/DraygonsRoom.png ~/web2py/applications/solver/static/images/DraygonsRoom.png
[ -L ~/web2py/applications/solver/static/images/EarlySupersRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/EarlySupersRoom.png ~/web2py/applications/solver/static/images/EarlySupersRoom.png
[ -L ~/web2py/applications/solver/static/images/EastSandHole.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/EastSandHole.png ~/web2py/applications/solver/static/images/EastSandHole.png
[ -L ~/web2py/applications/solver/static/images/EtecoonEnergyTankRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/EtecoonEnergyTankRoom.png ~/web2py/applications/solver/static/images/EtecoonEnergyTankRoom.png
[ -L ~/web2py/applications/solver/static/images/EtecoonSuperRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/EtecoonSuperRoom.png ~/web2py/applications/solver/static/images/EtecoonSuperRoom.png
[ -L ~/web2py/applications/solver/static/images/FirstMissileRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/FirstMissileRoom.png ~/web2py/applications/solver/static/images/FirstMissileRoom.png
[ -L ~/web2py/applications/solver/static/images/GauntletEnergyTankRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/GauntletEnergyTankRoom.png ~/web2py/applications/solver/static/images/GauntletEnergyTankRoom.png
[ -L ~/web2py/applications/solver/static/images/GoldenTorizosRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/GoldenTorizosRoom.png ~/web2py/applications/solver/static/images/GoldenTorizosRoom.png
[ -L ~/web2py/applications/solver/static/images/GrappleBeamRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/GrappleBeamRoom.png ~/web2py/applications/solver/static/images/GrappleBeamRoom.png
[ -L ~/web2py/applications/solver/static/images/GravitySuitRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/GravitySuitRoom.png ~/web2py/applications/solver/static/images/GravitySuitRoom.png
[ -L ~/web2py/applications/solver/static/images/GreenBrinstarMainShaft.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/GreenBrinstarMainShaft.png ~/web2py/applications/solver/static/images/GreenBrinstarMainShaft.png
[ -L ~/web2py/applications/solver/static/images/GreenBubblesMissileRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/GreenBubblesMissileRoom.png ~/web2py/applications/solver/static/images/GreenBubblesMissileRoom.png
[ -L ~/web2py/applications/solver/static/images/GreenHillZone.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/GreenHillZone.png ~/web2py/applications/solver/static/images/GreenHillZone.png
[ -L ~/web2py/applications/solver/static/images/GreenPiratesShaft.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/GreenPiratesShaft.png ~/web2py/applications/solver/static/images/GreenPiratesShaft.png
[ -L ~/web2py/applications/solver/static/images/HiJumpBootsRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/HiJumpBootsRoom.png ~/web2py/applications/solver/static/images/HiJumpBootsRoom.png
[ -L ~/web2py/applications/solver/static/images/HiJumpEnergyTankRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/HiJumpEnergyTankRoom.png ~/web2py/applications/solver/static/images/HiJumpEnergyTankRoom.png
[ -L ~/web2py/applications/solver/static/images/HopperEnergyTankRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/HopperEnergyTankRoom.png ~/web2py/applications/solver/static/images/HopperEnergyTankRoom.png
[ -L ~/web2py/applications/solver/static/images/IceBeamRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/IceBeamRoom.png ~/web2py/applications/solver/static/images/IceBeamRoom.png
[ -L ~/web2py/applications/solver/static/images/KraidRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/KraidRoom.png ~/web2py/applications/solver/static/images/KraidRoom.png
[ -L ~/web2py/applications/solver/static/images/LowerNorfairEscapePowerBombRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/LowerNorfairEscapePowerBombRoom.png ~/web2py/applications/solver/static/images/LowerNorfairEscapePowerBombRoom.png
[ -L ~/web2py/applications/solver/static/images/LowerNorfairFirefleaRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/LowerNorfairFirefleaRoom.png ~/web2py/applications/solver/static/images/LowerNorfairFirefleaRoom.png
[ -L ~/web2py/applications/solver/static/images/LowerNorfairSpringBallMazeRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/LowerNorfairSpringBallMazeRoom.png ~/web2py/applications/solver/static/images/LowerNorfairSpringBallMazeRoom.png
[ -L ~/web2py/applications/solver/static/images/MainStreet.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/MainStreet.png ~/web2py/applications/solver/static/images/MainStreet.png
[ -L ~/web2py/applications/solver/static/images/MamaTurtleRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/MamaTurtleRoom.png ~/web2py/applications/solver/static/images/MamaTurtleRoom.png
[ -L ~/web2py/applications/solver/static/images/MickeyMouseRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/MickeyMouseRoom.png ~/web2py/applications/solver/static/images/MickeyMouseRoom.png
[ -L ~/web2py/applications/solver/static/images/MorphBallRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/MorphBallRoom.png ~/web2py/applications/solver/static/images/MorphBallRoom.png
[ -L ~/web2py/applications/solver/static/images/MotherBrainRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/MotherBrainRoom.png ~/web2py/applications/solver/static/images/MotherBrainRoom.png
[ -L ~/web2py/applications/solver/static/images/NorfairReserveTankRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/NorfairReserveTankRoom.png ~/web2py/applications/solver/static/images/NorfairReserveTankRoom.png
[ -L ~/web2py/applications/solver/static/images/PhantoonsRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/PhantoonsRoom.png ~/web2py/applications/solver/static/images/PhantoonsRoom.png
[ -L ~/web2py/applications/solver/static/images/PinkBrinstarPowerBombRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/PinkBrinstarPowerBombRoom.png ~/web2py/applications/solver/static/images/PinkBrinstarPowerBombRoom.png
[ -L ~/web2py/applications/solver/static/images/PitRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/PitRoom.png ~/web2py/applications/solver/static/images/PitRoom.png
[ -L ~/web2py/applications/solver/static/images/PlasmaRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/PlasmaRoom.png ~/web2py/applications/solver/static/images/PlasmaRoom.png
[ -L ~/web2py/applications/solver/static/images/PostCrocomireJumpRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/PostCrocomireJumpRoom.png ~/web2py/applications/solver/static/images/PostCrocomireJumpRoom.png
[ -L ~/web2py/applications/solver/static/images/PostCrocomireMissileRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/PostCrocomireMissileRoom.png ~/web2py/applications/solver/static/images/PostCrocomireMissileRoom.png
[ -L ~/web2py/applications/solver/static/images/PostCrocomirePowerBombRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/PostCrocomirePowerBombRoom.png ~/web2py/applications/solver/static/images/PostCrocomirePowerBombRoom.png
[ -L ~/web2py/applications/solver/static/images/PseudoPlasmaSparkRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/PseudoPlasmaSparkRoom.png ~/web2py/applications/solver/static/images/PseudoPlasmaSparkRoom.png
[ -L ~/web2py/applications/solver/static/images/RidleysRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/RidleysRoom.png ~/web2py/applications/solver/static/images/RidleysRoom.png
[ -L ~/web2py/applications/solver/static/images/RidleyTankRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/RidleyTankRoom.png ~/web2py/applications/solver/static/images/RidleyTankRoom.png
[ -L ~/web2py/applications/solver/static/images/ScrewAttackRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/ScrewAttackRoom.png ~/web2py/applications/solver/static/images/ScrewAttackRoom.png
[ -L ~/web2py/applications/solver/static/images/SpaceJumpRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/SpaceJumpRoom.png ~/web2py/applications/solver/static/images/SpaceJumpRoom.png
[ -L ~/web2py/applications/solver/static/images/SpazerRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/SpazerRoom.png ~/web2py/applications/solver/static/images/SpazerRoom.png
[ -L ~/web2py/applications/solver/static/images/SpeedBoosterHall.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/SpeedBoosterHall.png ~/web2py/applications/solver/static/images/SpeedBoosterHall.png
[ -L ~/web2py/applications/solver/static/images/SpeedBoosterRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/SpeedBoosterRoom.png ~/web2py/applications/solver/static/images/SpeedBoosterRoom.png
[ -L ~/web2py/applications/solver/static/images/SporeSpawnSuperRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/SporeSpawnSuperRoom.png ~/web2py/applications/solver/static/images/SporeSpawnSuperRoom.png
[ -L ~/web2py/applications/solver/static/images/SpringBallRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/SpringBallRoom.png ~/web2py/applications/solver/static/images/SpringBallRoom.png
[ -L ~/web2py/applications/solver/static/images/TerminatorRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/TerminatorRoom.png ~/web2py/applications/solver/static/images/TerminatorRoom.png
[ -L ~/web2py/applications/solver/static/images/TheFinalMissile.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/TheFinalMissile.png ~/web2py/applications/solver/static/images/TheFinalMissile.png
[ -L ~/web2py/applications/solver/static/images/TheMoat.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/TheMoat.png ~/web2py/applications/solver/static/images/TheMoat.png
[ -L ~/web2py/applications/solver/static/images/ThePreciousRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/ThePreciousRoom.png ~/web2py/applications/solver/static/images/ThePreciousRoom.png
[ -L ~/web2py/applications/solver/static/images/ThreeMuskateersRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/ThreeMuskateersRoom.png ~/web2py/applications/solver/static/images/ThreeMuskateersRoom.png
[ -L ~/web2py/applications/solver/static/images/VariaSuitRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/VariaSuitRoom.png ~/web2py/applications/solver/static/images/VariaSuitRoom.png
[ -L ~/web2py/applications/solver/static/images/WarehouseEnergyTankRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/WarehouseEnergyTankRoom.png ~/web2py/applications/solver/static/images/WarehouseEnergyTankRoom.png
[ -L ~/web2py/applications/solver/static/images/WarehouseKeyhunterRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/WarehouseKeyhunterRoom.png ~/web2py/applications/solver/static/images/WarehouseKeyhunterRoom.png
[ -L ~/web2py/applications/solver/static/images/Wasteland.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/Wasteland.png ~/web2py/applications/solver/static/images/Wasteland.png
[ -L ~/web2py/applications/solver/static/images/WateringHole.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/WateringHole.png ~/web2py/applications/solver/static/images/WateringHole.png
[ -L ~/web2py/applications/solver/static/images/WaterwayEnergyTankRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/WaterwayEnergyTankRoom.png ~/web2py/applications/solver/static/images/WaterwayEnergyTankRoom.png
[ -L ~/web2py/applications/solver/static/images/WaveBeamRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/WaveBeamRoom.png ~/web2py/applications/solver/static/images/WaveBeamRoom.png
[ -L ~/web2py/applications/solver/static/images/WestOcean.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/WestOcean.png ~/web2py/applications/solver/static/images/WestOcean.png
[ -L ~/web2py/applications/solver/static/images/WestSandHole.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/WestSandHole.png ~/web2py/applications/solver/static/images/WestSandHole.png
[ -L ~/web2py/applications/solver/static/images/WreckedShipEastMissileRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/WreckedShipEastMissileRoom.png ~/web2py/applications/solver/static/images/WreckedShipEastMissileRoom.png
[ -L ~/web2py/applications/solver/static/images/WreckedShipEastSuperRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/WreckedShipEastSuperRoom.png ~/web2py/applications/solver/static/images/WreckedShipEastSuperRoom.png
[ -L ~/web2py/applications/solver/static/images/WreckedShipEnergyTankRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/WreckedShipEnergyTankRoom.png ~/web2py/applications/solver/static/images/WreckedShipEnergyTankRoom.png
[ -L ~/web2py/applications/solver/static/images/WreckedShipMainShaft.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/WreckedShipMainShaft.png ~/web2py/applications/solver/static/images/WreckedShipMainShaft.png
[ -L ~/web2py/applications/solver/static/images/WreckedShipWestSuperRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/WreckedShipWestSuperRoom.png ~/web2py/applications/solver/static/images/WreckedShipWestSuperRoom.png
[ -L ~/web2py/applications/solver/static/images/XRayScopeRoom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/XRayScopeRoom.png ~/web2py/applications/solver/static/images/XRayScopeRoom.png

[ -L ~/web2py/applications/solver/static/images/Brinstar.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/Brinstar.png ~/web2py/applications/solver/static/images/Brinstar.png
[ -L ~/web2py/applications/solver/static/images/Crateria.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/Crateria.png ~/web2py/applications/solver/static/images/Crateria.png
[ -L ~/web2py/applications/solver/static/images/Maridia.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/Maridia.png ~/web2py/applications/solver/static/images/Maridia.png
[ -L ~/web2py/applications/solver/static/images/Tourian.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/Tourian.png ~/web2py/applications/solver/static/images/Tourian.png
[ -L ~/web2py/applications/solver/static/images/WreckedShip.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/WreckedShip.png ~/web2py/applications/solver/static/images/WreckedShip.png
[ -L ~/web2py/applications/solver/static/images/Norfair.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/Norfair.png ~/web2py/applications/solver/static/images/Norfair.png
[ -L ~/web2py/applications/solver/static/images/LowerNorfair.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/Norfair.png ~/web2py/applications/solver/static/images/LowerNorfair.png

[ -L ~/web2py/applications/solver/static/images/BlueBrinstar.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/BlueBrinstar.png ~/web2py/applications/solver/static/images/BlueBrinstar.png
[ -L ~/web2py/applications/solver/static/images/CrateriaBombs.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/CrateriaBombs.png ~/web2py/applications/solver/static/images/CrateriaBombs.png
[ -L ~/web2py/applications/solver/static/images/CrateriaLandingSite.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/CrateriaLandingSite.png ~/web2py/applications/solver/static/images/CrateriaLandingSite.png
[ -L ~/web2py/applications/solver/static/images/CrateriaTerminator.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/CrateriaTerminator.png ~/web2py/applications/solver/static/images/CrateriaTerminator.png
[ -L ~/web2py/applications/solver/static/images/BrinstarHills.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/BrinstarHills.png ~/web2py/applications/solver/static/images/BrinstarHills.png
[ -L ~/web2py/applications/solver/static/images/BubbleNorfairBottom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/BubbleNorfairBottom.png ~/web2py/applications/solver/static/images/BubbleNorfairBottom.png
[ -L ~/web2py/applications/solver/static/images/BubbleNorfairReserve.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/BubbleNorfairReserve.png ~/web2py/applications/solver/static/images/BubbleNorfairReserve.png
[ -L ~/web2py/applications/solver/static/images/BubbleNorfairSpeed.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/BubbleNorfairSpeed.png ~/web2py/applications/solver/static/images/BubbleNorfairSpeed.png
[ -L ~/web2py/applications/solver/static/images/BubbleNorfairWave.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/BubbleNorfairWave.png ~/web2py/applications/solver/static/images/BubbleNorfairWave.png
[ -L ~/web2py/applications/solver/static/images/CrateriaGauntlet.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/CrateriaGauntlet.png ~/web2py/applications/solver/static/images/CrateriaGauntlet.png
[ -L ~/web2py/applications/solver/static/images/Crocomire.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/Crocomire.png ~/web2py/applications/solver/static/images/Crocomire.png
[ -L ~/web2py/applications/solver/static/images/GreenBrinstar.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/GreenBrinstar.png ~/web2py/applications/solver/static/images/GreenBrinstar.png
[ -L ~/web2py/applications/solver/static/images/GreenBrinstarReserve.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/GreenBrinstarReserve.png ~/web2py/applications/solver/static/images/GreenBrinstarReserve.png
[ -L ~/web2py/applications/solver/static/images/KraidSubArea.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/KraidSubArea.png ~/web2py/applications/solver/static/images/KraidSubArea.png
[ -L ~/web2py/applications/solver/static/images/LowerNorfairAfterAmphitheater.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/LowerNorfairAfterAmphitheater.png ~/web2py/applications/solver/static/images/LowerNorfairAfterAmphitheater.png
[ -L ~/web2py/applications/solver/static/images/LowerNorfairBeforeAmphitheater.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/LowerNorfairBeforeAmphitheater.png ~/web2py/applications/solver/static/images/LowerNorfairBeforeAmphitheater.png
[ -L ~/web2py/applications/solver/static/images/LowerNorfairScrewAttack.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/LowerNorfairScrewAttack.png ~/web2py/applications/solver/static/images/LowerNorfairScrewAttack.png
[ -L ~/web2py/applications/solver/static/images/MaridiaForgottenHighway.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/MaridiaForgottenHighway.png ~/web2py/applications/solver/static/images/MaridiaForgottenHighway.png
[ -L ~/web2py/applications/solver/static/images/MaridiaGreen.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/MaridiaGreen.png ~/web2py/applications/solver/static/images/MaridiaGreen.png
[ -L ~/web2py/applications/solver/static/images/MaridiaPinkBottom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/MaridiaPinkBottom.png ~/web2py/applications/solver/static/images/MaridiaPinkBottom.png
[ -L ~/web2py/applications/solver/static/images/MaridiaPinkTop.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/MaridiaPinkTop.png ~/web2py/applications/solver/static/images/MaridiaPinkTop.png
[ -L ~/web2py/applications/solver/static/images/MaridiaSandpits.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/MaridiaSandpits.png ~/web2py/applications/solver/static/images/MaridiaSandpits.png
[ -L ~/web2py/applications/solver/static/images/NorfairEntrance.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/NorfairEntrance.png ~/web2py/applications/solver/static/images/NorfairEntrance.png
[ -L ~/web2py/applications/solver/static/images/NorfairGrappleEscape.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/NorfairGrappleEscape.png ~/web2py/applications/solver/static/images/NorfairGrappleEscape.png
[ -L ~/web2py/applications/solver/static/images/NorfairIce.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/NorfairIce.png ~/web2py/applications/solver/static/images/NorfairIce.png
[ -L ~/web2py/applications/solver/static/images/PinkBrinstar.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/PinkBrinstar.png ~/web2py/applications/solver/static/images/PinkBrinstar.png
[ -L ~/web2py/applications/solver/static/images/RedBrinstar.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/RedBrinstar.png ~/web2py/applications/solver/static/images/RedBrinstar.png
[ -L ~/web2py/applications/solver/static/images/RedBrinstarTop.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/RedBrinstarTop.png ~/web2py/applications/solver/static/images/RedBrinstarTop.png
[ -L ~/web2py/applications/solver/static/images/TourianSubArea.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/TourianSubArea.png ~/web2py/applications/solver/static/images/TourianSubArea.png
[ -L ~/web2py/applications/solver/static/images/WreckedShip.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/WreckedShip.png ~/web2py/applications/solver/static/images/WreckedShip.png
[ -L ~/web2py/applications/solver/static/images/WreckedShipBack.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/WreckedShipBack.png ~/web2py/applications/solver/static/images/WreckedShipBack.png
[ -L ~/web2py/applications/solver/static/images/WreckedShipBottom.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/WreckedShipBottom.png ~/web2py/applications/solver/static/images/WreckedShipBottom.png
[ -L ~/web2py/applications/solver/static/images/WreckedShipGravity.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/WreckedShipGravity.png ~/web2py/applications/solver/static/images/WreckedShipGravity.png
[ -L ~/web2py/applications/solver/static/images/WreckedShipMain.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/WreckedShipMain.png ~/web2py/applications/solver/static/images/WreckedShipMain.png
[ -L ~/web2py/applications/solver/static/images/WreckedShipTop.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/WreckedShipTop.png ~/web2py/applications/solver/static/images/WreckedShipTop.png
[ -L ~/web2py/applications/solver/static/images/LeftSandpit.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/LeftSandpit.png ~/web2py/applications/solver/static/images/LeftSandpit.png
[ -L ~/web2py/applications/solver/static/images/RightSandpit.png ] || ln -s ~/RandomMetroidSolver/web/static/rooms/RightSandpit.png ~/web2py/applications/solver/static/images/RightSandpit.png


[ -L ~/web2py/applications/solver/static/images/area_map_20200112.png ] || ln -s ~/RandomMetroidSolver/web/static/area_map.png ~/web2py/applications/solver/static/images/area_map_20200112.png

[ -L ~/web2py/applications/solver/static/images/gauntlet_start.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/gauntlet_start.png ~/web2py/applications/solver/static/images/gauntlet_start.png
[ -L ~/web2py/applications/solver/static/images/green_bt_elevator_start.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/green_bt_elevator_start.png ~/web2py/applications/solver/static/images/green_bt_elevator_start.png
[ -L ~/web2py/applications/solver/static/images/bt_reserve_blue_door1.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/bt_reserve_blue_door1.png ~/web2py/applications/solver/static/images/bt_reserve_blue_door1.png
[ -L ~/web2py/applications/solver/static/images/bt_reserve_blue_door2.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/bt_reserve_blue_door2.png ~/web2py/applications/solver/static/images/bt_reserve_blue_door2.png
[ -L ~/web2py/applications/solver/static/images/ceres_start.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/ceres_start.png ~/web2py/applications/solver/static/images/ceres_start.png
[ -L ~/web2py/applications/solver/static/images/landing_site_start.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/landing_site_start.png ~/web2py/applications/solver/static/images/landing_site_start.png
[ -L ~/web2py/applications/solver/static/images/blue_bt_blue_door.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/blue_bt_blue_door.png ~/web2py/applications/solver/static/images/blue_bt_blue_door.png
[ -L ~/web2py/applications/solver/static/images/golden_four_start.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/golden_four_start.png ~/web2py/applications/solver/static/images/golden_four_start.png
[ -L ~/web2py/applications/solver/static/images/watering_hole_start.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/watering_hole_start.png ~/web2py/applications/solver/static/images/watering_hole_start.png
[ -L ~/web2py/applications/solver/static/images/big_pink_start.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/big_pink_start.png ~/web2py/applications/solver/static/images/big_pink_start.png
[ -L ~/web2py/applications/solver/static/images/etecoons_supers_start.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/etecoons_supers_start.png ~/web2py/applications/solver/static/images/etecoons_supers_start.png
[ -L ~/web2py/applications/solver/static/images/etecoons_blue_door.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/etecoons_blue_door.png ~/web2py/applications/solver/static/images/etecoons_blue_door.png
[ -L ~/web2py/applications/solver/static/images/red_bt_elevator_start.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/red_bt_elevator_start.png ~/web2py/applications/solver/static/images/red_bt_elevator_start.png
[ -L ~/web2py/applications/solver/static/images/hellway_blue_door.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/hellway_blue_door.png ~/web2py/applications/solver/static/images/hellway_blue_door.png
[ -L ~/web2py/applications/solver/static/images/business_center_start.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/business_center_start.png ~/web2py/applications/solver/static/images/business_center_start.png
[ -L ~/web2py/applications/solver/static/images/hijump_blue_door.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/hijump_blue_door.png ~/web2py/applications/solver/static/images/hijump_blue_door.png
[ -L ~/web2py/applications/solver/static/images/bubble_mountain_start.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/bubble_mountain_start.png ~/web2py/applications/solver/static/images/bubble_mountain_start.png
[ -L ~/web2py/applications/solver/static/images/speed_blue_door1.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/speed_blue_door1.png ~/web2py/applications/solver/static/images/speed_blue_door1.png
[ -L ~/web2py/applications/solver/static/images/speed_blue_door2.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/speed_blue_door2.png ~/web2py/applications/solver/static/images/speed_blue_door2.png
[ -L ~/web2py/applications/solver/static/images/wrecked_ship_start.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/wrecked_ship_start.png ~/web2py/applications/solver/static/images/wrecked_ship_start.png
[ -L ~/web2py/applications/solver/static/images/sponge_bath_blue_door.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/sponge_bath_blue_door.png ~/web2py/applications/solver/static/images/sponge_bath_blue_door.png
[ -L ~/web2py/applications/solver/static/images/maridia_tube_opened.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/maridia_tube_opened.png ~/web2py/applications/solver/static/images/maridia_tube_opened.png
[ -L ~/web2py/applications/solver/static/images/red_bt_blue_door.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/red_bt_blue_door.png ~/web2py/applications/solver/static/images/red_bt_blue_door.png

[ -L ~/web2py/applications/solver/views/solver_web/progSpeedStats.html ] || ln -s ~/RandomMetroidSolver/web/views/progSpeedStats.html ~/web2py/applications/solver/views/solver_web/progSpeedStats.html

[ -L ~/web2py/applications/solver/static/images/skip_forward.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/skip_forward.svg ~/web2py/applications/solver/static/images/skip_forward.svg

[ -L ~/web2py/applications/solver/views/solver_web/plandorepo.html ] || ln -s ~/RandomMetroidSolver/web/views/plandorepo.html ~/web2py/applications/solver/views/solver_web/plandorepo.html

[ -L ~/web2py/applications/solver/static/images/No_Varia.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/items/No_Varia.png ~/web2py/applications/solver/static/images/No_Varia.png
[ -L ~/web2py/applications/solver/static/images/Half_Varia.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/items/Half_Varia.png ~/web2py/applications/solver/static/images/Half_Varia.png

[ -L ~/web2py/applications/solver/static/images/aqueduct_start.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/aqueduct_start.png ~/web2py/applications/solver/static/images/aqueduct_start.png
[ -L ~/web2py/applications/solver/static/images/mama_turtle_start.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/mama_turtle_start.png ~/web2py/applications/solver/static/images/mama_turtle_start.png
[ -L ~/web2py/applications/solver/static/images/aqueduct_save_blue.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/aqueduct_save_blue.png ~/web2py/applications/solver/static/images/aqueduct_save_blue.png
[ -L ~/web2py/applications/solver/static/images/mama_turtle_blue_door.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/mama_turtle_blue_door.png ~/web2py/applications/solver/static/images/mama_turtle_blue_door.png

[ -L ~/web2py/applications/solver/static/images/link.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/link.svg ~/web2py/applications/solver/static/images/link.svg

[ -L ~/web2py/applications/solver/static/images/firefleas_top_start.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/firefleas_top_start.png ~/web2py/applications/solver/static/images/firefleas_top_start.png
[ -L ~/web2py/applications/solver/static/images/fune_removed.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/fune_removed.png ~/web2py/applications/solver/static/images/fune_removed.png
[ -L ~/web2py/applications/solver/static/images/firefleas_shot_blocks.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/firefleas_shot_blocks.png ~/web2py/applications/solver/static/images/firefleas_shot_blocks.png

[ -L ~/web2py/applications/solver/static/images/forgotten_all_the_way.png ] || ln -s ~/RandomMetroidSolver/web/static/help/forgotten_all_the_way.png ~/web2py/applications/solver/static/images/forgotten_all_the_way.png

[ -L ~/web2py/applications/solver/static/images/background_seedless.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/tracker/pause/background_seedless.png ~/web2py/applications/solver/static/images/background_seedless.png

[ -L ~/web2py/applications/solver/static/js/localforage.nopromises.min.js ] || ln -s ~/RandomMetroidSolver/web/static/localforage.nopromises.min.js ~/web2py/applications/solver/static/js/localforage.nopromises.min.js


[ -L ~/web2py/applications/solver/static/images/nextgps.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/nextgps.png ~/web2py/applications/solver/static/images/nextgps.png

[ -L ~/web2py/applications/solver/static/images/gps_1.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_1.png ~/web2py/applications/solver/static/images/gps_1.png
[ -L ~/web2py/applications/solver/static/images/gps_2.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_2.png ~/web2py/applications/solver/static/images/gps_2.png
[ -L ~/web2py/applications/solver/static/images/gps_3.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_3.png ~/web2py/applications/solver/static/images/gps_3.png
[ -L ~/web2py/applications/solver/static/images/gps_4.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_4.png ~/web2py/applications/solver/static/images/gps_4.png
[ -L ~/web2py/applications/solver/static/images/gps_5.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_5.png ~/web2py/applications/solver/static/images/gps_5.png
[ -L ~/web2py/applications/solver/static/images/gps_6.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_6.png ~/web2py/applications/solver/static/images/gps_6.png
[ -L ~/web2py/applications/solver/static/images/gps_7.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_7.png ~/web2py/applications/solver/static/images/gps_7.png
[ -L ~/web2py/applications/solver/static/images/gps_8.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_8.png ~/web2py/applications/solver/static/images/gps_8.png
[ -L ~/web2py/applications/solver/static/images/gps_9.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_9.png ~/web2py/applications/solver/static/images/gps_9.png
[ -L ~/web2py/applications/solver/static/images/gps_10.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_10.png ~/web2py/applications/solver/static/images/gps_10.png
[ -L ~/web2py/applications/solver/static/images/gps_11.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_11.png ~/web2py/applications/solver/static/images/gps_11.png
[ -L ~/web2py/applications/solver/static/images/gps_12.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_12.png ~/web2py/applications/solver/static/images/gps_12.png
[ -L ~/web2py/applications/solver/static/images/gps_13.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_13.png ~/web2py/applications/solver/static/images/gps_13.png
[ -L ~/web2py/applications/solver/static/images/gps_14.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_14.png ~/web2py/applications/solver/static/images/gps_14.png
[ -L ~/web2py/applications/solver/static/images/gps_15.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_15.png ~/web2py/applications/solver/static/images/gps_15.png
[ -L ~/web2py/applications/solver/static/images/gps_16.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_16.png ~/web2py/applications/solver/static/images/gps_16.png
[ -L ~/web2py/applications/solver/static/images/gps_17.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_17.png ~/web2py/applications/solver/static/images/gps_17.png
[ -L ~/web2py/applications/solver/static/images/gps_18.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_18.png ~/web2py/applications/solver/static/images/gps_18.png
[ -L ~/web2py/applications/solver/static/images/gps_19.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_19.png ~/web2py/applications/solver/static/images/gps_19.png
[ -L ~/web2py/applications/solver/static/images/gps_20.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_20.png ~/web2py/applications/solver/static/images/gps_20.png
[ -L ~/web2py/applications/solver/static/images/gps_21.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_21.png ~/web2py/applications/solver/static/images/gps_21.png
[ -L ~/web2py/applications/solver/static/images/gps_22.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_22.png ~/web2py/applications/solver/static/images/gps_22.png
[ -L ~/web2py/applications/solver/static/images/gps_23.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_23.png ~/web2py/applications/solver/static/images/gps_23.png
[ -L ~/web2py/applications/solver/static/images/gps_24.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_24.png ~/web2py/applications/solver/static/images/gps_24.png
[ -L ~/web2py/applications/solver/static/images/gps_25.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_25.png ~/web2py/applications/solver/static/images/gps_25.png
[ -L ~/web2py/applications/solver/static/images/gps_26.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_26.png ~/web2py/applications/solver/static/images/gps_26.png
[ -L ~/web2py/applications/solver/static/images/gps_27.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_27.png ~/web2py/applications/solver/static/images/gps_27.png
[ -L ~/web2py/applications/solver/static/images/gps_28.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_28.png ~/web2py/applications/solver/static/images/gps_28.png
[ -L ~/web2py/applications/solver/static/images/gps_29.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_29.png ~/web2py/applications/solver/static/images/gps_29.png
[ -L ~/web2py/applications/solver/static/images/gps_30.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_30.png ~/web2py/applications/solver/static/images/gps_30.png
[ -L ~/web2py/applications/solver/static/images/gps_31.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_31.png ~/web2py/applications/solver/static/images/gps_31.png
[ -L ~/web2py/applications/solver/static/images/gps_32.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/gps_32.png ~/web2py/applications/solver/static/images/gps_32.png

[ -L ~/web2py/applications/solver/static/images/marker_easy.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/marker_easy.png ~/web2py/applications/solver/static/images/marker_easy.png
[ -L ~/web2py/applications/solver/static/images/marker_medium.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/marker_medium.png ~/web2py/applications/solver/static/images/marker_medium.png
[ -L ~/web2py/applications/solver/static/images/marker_hard.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/marker_hard.png ~/web2py/applications/solver/static/images/marker_hard.png
[ -L ~/web2py/applications/solver/static/images/marker_harder.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/marker_harder.png ~/web2py/applications/solver/static/images/marker_harder.png
[ -L ~/web2py/applications/solver/static/images/marker_hardcore.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/marker_hardcore.png ~/web2py/applications/solver/static/images/marker_hardcore.png
[ -L ~/web2py/applications/solver/static/images/marker_mania.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/marker_mania.png ~/web2py/applications/solver/static/images/marker_mania.png

[ -L ~/web2py/applications/solver/static/images/kraid_save.png ] || ln -s ~/RandomMetroidSolver/web/static/help/kraid_save.png ~/web2py/applications/solver/static/images/kraid_save.png

[ -L ~/web2py/applications/solver/static/images/donate.png ] || ln -s ~/RandomMetroidSolver/web/static/donate.png ~/web2py/applications/solver/static/images/donate.png
[ -L ~/web2py/applications/solver/static/images/donate_randomizer.png ] || ln -s ~/RandomMetroidSolver/web/static/donate_randomizer.png ~/web2py/applications/solver/static/images/donate_randomizer.png

[ -L ~/web2py/applications/solver/static/images/minimizer_example.png ] || ln -s ~/RandomMetroidSolver/web/static/minimizer_example.png ~/web2py/applications/solver/static/images/minimizer_example.png
[ -L ~/web2py/applications/solver/static/images/minimizer_example_thumbnail.png ] || ln -s ~/RandomMetroidSolver/web/static/minimizer_example_thumbnail.png ~/web2py/applications/solver/static/images/minimizer_example_thumbnail.png

[ -L ~/web2py/applications/solver/static/images/backup_saves.png ] || ln -s ~/RandomMetroidSolver/web/static/help/backup_saves.png ~/web2py/applications/solver/static/images/backup_saves.png

[ -L ~/web2py/applications/solver/static/images/mission_impossible.png ] || ln -s ~/RandomMetroidSolver/web/static/help/mission_impossible.png ~/web2py/applications/solver/static/images/mission_impossible.png

[ -L ~/web2py/applications/solver/views/layout.html ] || ln -s ~/RandomMetroidSolver/web/web2py/views/layout.html ~/web2py/applications/solver/views/layout.html
[ -L ~/web2py/applications/solver/views/web2py_ajax.html ] || ln -s ~/RandomMetroidSolver/web/web2py/views/web2py_ajax.html ~/web2py/applications/solver/views/web2py_ajax.html
[ -L ~/web2py/applications/solver/static/css/bootstrap.min.css ] || ln -s ~/RandomMetroidSolver/web/web2py/static/css/bootstrap.min.css ~/web2py/applications/solver/static/css/bootstrap.min.css
[ -L ~/web2py/applications/solver/static/css/calendar.css ] || ln -s ~/RandomMetroidSolver/web/web2py/static/css/calendar.css ~/web2py/applications/solver/static/css/calendar.css
[ -L ~/web2py/applications/solver/static/css/web2py-bootstrap3.css ] || ln -s ~/RandomMetroidSolver/web/web2py/static/css/web2py-bootstrap3.css ~/web2py/applications/solver/static/css/web2py-bootstrap3.css
[ -L ~/web2py/applications/solver/static/css/web2py.css ] || ln -s ~/RandomMetroidSolver/web/web2py/static/css/web2py.css ~/web2py/applications/solver/static/css/web2py.css
[ -L ~/web2py/applications/solver/static/js/bootstrap.min.js ] || ln -s ~/RandomMetroidSolver/web/web2py/static/js/bootstrap.min.js ~/web2py/applications/solver/static/js/bootstrap.min.js
[ -L ~/web2py/applications/solver/static/js/calendar.js ] || ln -s ~/RandomMetroidSolver/web/web2py/static/js/calendar.js ~/web2py/applications/solver/static/js/calendar.js
[ -L ~/web2py/applications/solver/static/js/jquery.js ] || ln -s ~/RandomMetroidSolver/web/web2py/static/js/jquery.js ~/web2py/applications/solver/static/js/jquery.js
[ -L ~/web2py/applications/solver/static/js/modernizr-2.8.3.min.js ] || ln -s ~/RandomMetroidSolver/web/web2py/static/js/modernizr-2.8.3.min.js ~/web2py/applications/solver/static/js/modernizr-2.8.3.min.js
[ -L ~/web2py/applications/solver/static/js/share.js ] || ln -s ~/RandomMetroidSolver/web/web2py/static/js/share.js ~/web2py/applications/solver/static/js/share.js
[ -L ~/web2py/applications/solver/static/js/web2py-bootstrap3.js ] || ln -s ~/RandomMetroidSolver/web/web2py/static/js/web2py-bootstrap3.js ~/web2py/applications/solver/static/js/web2py-bootstrap3.js
[ -L ~/web2py/applications/solver/static/js/web2py.js ] || ln -s ~/RandomMetroidSolver/web/web2py/static/js/web2py.js ~/web2py/applications/solver/static/js/web2py.js

[ -L ~/web2py/applications/solver/static/images/blue_door.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/doors/blue_door.svg ~/web2py/applications/solver/static/images/blue_door.svg
[ -L ~/web2py/applications/solver/static/images/red_door.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/doors/red_door.svg ~/web2py/applications/solver/static/images/red_door.svg
[ -L ~/web2py/applications/solver/static/images/yellow_door.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/doors/yellow_door.svg ~/web2py/applications/solver/static/images/yellow_door.svg
[ -L ~/web2py/applications/solver/static/images/green_door.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/doors/green_door.svg ~/web2py/applications/solver/static/images/green_door.svg
[ -L ~/web2py/applications/solver/static/images/white_door.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/doors/white_door.svg ~/web2py/applications/solver/static/images/white_door.svg
[ -L ~/web2py/applications/solver/static/images/grey_door.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/doors/grey_door.svg ~/web2py/applications/solver/static/images/grey_door.svg
[ -L ~/web2py/applications/solver/static/images/wave_door_left.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/doors/wave_door_left.svg ~/web2py/applications/solver/static/images/wave_door_left.svg
[ -L ~/web2py/applications/solver/static/images/wave_door_right.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/doors/wave_door_right.svg ~/web2py/applications/solver/static/images/wave_door_right.svg
[ -L ~/web2py/applications/solver/static/images/ice_door.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/doors/ice_door.svg ~/web2py/applications/solver/static/images/ice_door.svg
[ -L ~/web2py/applications/solver/static/images/spazer_door.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/doors/spazer_door.svg ~/web2py/applications/solver/static/images/spazer_door.svg
[ -L ~/web2py/applications/solver/static/images/plasma_door_left.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/doors/plasma_door_left.svg ~/web2py/applications/solver/static/images/plasma_door_left.svg
[ -L ~/web2py/applications/solver/static/images/plasma_door_right.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/doors/plasma_door_right.svg ~/web2py/applications/solver/static/images/plasma_door_right.svg
[ -L ~/web2py/applications/solver/static/images/plasma_door_right.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/doors/plasma_door_right.svg ~/web2py/applications/solver/static/images/plasma_door_right.svg
[ -L ~/web2py/applications/solver/static/images/plasma_door_bottom.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/doors/plasma_door_bottom.svg ~/web2py/applications/solver/static/images/plasma_door_bottom.svg
[ -L ~/web2py/applications/solver/static/images/wave_door_bottom.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/doors/wave_door_bottom.svg ~/web2py/applications/solver/static/images/wave_door_bottom.svg
[ -L ~/web2py/applications/solver/static/images/ice_door_bottom.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/doors/ice_door_bottom.svg ~/web2py/applications/solver/static/images/ice_door_bottom.svg
[ -L ~/web2py/applications/solver/static/images/spazer_door_bottom.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/doors/spazer_door_bottom.svg ~/web2py/applications/solver/static/images/spazer_door_bottom.svg
[ -L ~/web2py/applications/solver/static/images/green_door_bottom.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/doors/green_door_bottom.svg ~/web2py/applications/solver/static/images/green_door_bottom.svg
[ -L ~/web2py/applications/solver/static/images/red_door_bottom.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/doors/red_door_bottom.svg ~/web2py/applications/solver/static/images/red_door_bottom.svg
[ -L ~/web2py/applications/solver/static/images/yellow_door_bottom.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/doors/yellow_door_bottom.svg ~/web2py/applications/solver/static/images/yellow_door_bottom.svg
[ -L ~/web2py/applications/solver/static/images/white_door_bottom.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/doors/white_door_bottom.svg ~/web2py/applications/solver/static/images/white_door_bottom.svg
[ -L ~/web2py/applications/solver/static/images/grey_door_bottom.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/doors/grey_door_bottom.svg ~/web2py/applications/solver/static/images/grey_door_bottom.svg
[ -L ~/web2py/applications/solver/static/images/blue_door_bottom.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/doors/blue_door_bottom.svg ~/web2py/applications/solver/static/images/blue_door_bottom.svg


[ -L ~/web2py/applications/solver/static/images/ice_door.png ] || ln -s ~/RandomMetroidSolver/web/static/help/ice_door.png ~/web2py/applications/solver/static/images/ice_door.png
[ -L ~/web2py/applications/solver/static/images/missile_door.png ] || ln -s ~/RandomMetroidSolver/web/static/help/missile_door.png ~/web2py/applications/solver/static/images/missile_door.png
[ -L ~/web2py/applications/solver/static/images/plasma_door.png ] || ln -s ~/RandomMetroidSolver/web/static/help/plasma_door.png ~/web2py/applications/solver/static/images/plasma_door.png
[ -L ~/web2py/applications/solver/static/images/powerbomb_door.png ] || ln -s ~/RandomMetroidSolver/web/static/help/powerbomb_door.png ~/web2py/applications/solver/static/images/powerbomb_door.png
[ -L ~/web2py/applications/solver/static/images/spazer_door.png ] || ln -s ~/RandomMetroidSolver/web/static/help/spazer_door.png ~/web2py/applications/solver/static/images/spazer_door.png
[ -L ~/web2py/applications/solver/static/images/super_door.png ] || ln -s ~/RandomMetroidSolver/web/static/help/super_door.png ~/web2py/applications/solver/static/images/super_door.png
[ -L ~/web2py/applications/solver/static/images/wave_door.png ] || ln -s ~/RandomMetroidSolver/web/static/help/wave_door.png ~/web2py/applications/solver/static/images/wave_door.png


[ -L ~/web2py/applications/solver/static/images/marker_visited_break_Draygon.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_break_Draygon.png ~/web2py/applications/solver/static/images/marker_visited_break_Draygon.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_break_Ridley.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_break_Ridley.png ~/web2py/applications/solver/static/images/marker_visited_break_Ridley.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_break_Phantoon.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_break_Phantoon.png ~/web2py/applications/solver/static/images/marker_visited_break_Phantoon.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_break_Kraid.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_break_Kraid.png ~/web2py/applications/solver/static/images/marker_visited_break_Kraid.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_break_MotherBrain.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_break_MotherBrain.png ~/web2py/applications/solver/static/images/marker_visited_break_MotherBrain.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_easy_Draygon.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_easy_Draygon.png ~/web2py/applications/solver/static/images/marker_visited_easy_Draygon.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_easy_Ridley.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_easy_Ridley.png ~/web2py/applications/solver/static/images/marker_visited_easy_Ridley.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_easy_Phantoon.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_easy_Phantoon.png ~/web2py/applications/solver/static/images/marker_visited_easy_Phantoon.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_easy_Kraid.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_easy_Kraid.png ~/web2py/applications/solver/static/images/marker_visited_easy_Kraid.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_easy_MotherBrain.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_easy_MotherBrain.png ~/web2py/applications/solver/static/images/marker_visited_easy_MotherBrain.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hardcore_Draygon.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hardcore_Draygon.png ~/web2py/applications/solver/static/images/marker_visited_hardcore_Draygon.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hardcore_Ridley.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hardcore_Ridley.png ~/web2py/applications/solver/static/images/marker_visited_hardcore_Ridley.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hardcore_Phantoon.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hardcore_Phantoon.png ~/web2py/applications/solver/static/images/marker_visited_hardcore_Phantoon.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hardcore_Kraid.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hardcore_Kraid.png ~/web2py/applications/solver/static/images/marker_visited_hardcore_Kraid.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hardcore_MotherBrain.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hardcore_MotherBrain.png ~/web2py/applications/solver/static/images/marker_visited_hardcore_MotherBrain.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_harder_Draygon.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_harder_Draygon.png ~/web2py/applications/solver/static/images/marker_visited_harder_Draygon.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_harder_Ridley.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_harder_Ridley.png ~/web2py/applications/solver/static/images/marker_visited_harder_Ridley.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_harder_Phantoon.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_harder_Phantoon.png ~/web2py/applications/solver/static/images/marker_visited_harder_Phantoon.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_harder_Kraid.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_harder_Kraid.png ~/web2py/applications/solver/static/images/marker_visited_harder_Kraid.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_harder_MotherBrain.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_harder_MotherBrain.png ~/web2py/applications/solver/static/images/marker_visited_harder_MotherBrain.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hard_Draygon.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hard_Draygon.png ~/web2py/applications/solver/static/images/marker_visited_hard_Draygon.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hard_Ridley.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hard_Ridley.png ~/web2py/applications/solver/static/images/marker_visited_hard_Ridley.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hard_Phantoon.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hard_Phantoon.png ~/web2py/applications/solver/static/images/marker_visited_hard_Phantoon.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hard_Kraid.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hard_Kraid.png ~/web2py/applications/solver/static/images/marker_visited_hard_Kraid.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_hard_MotherBrain.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_hard_MotherBrain.png ~/web2py/applications/solver/static/images/marker_visited_hard_MotherBrain.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_mania_Draygon.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_mania_Draygon.png ~/web2py/applications/solver/static/images/marker_visited_mania_Draygon.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_mania_Ridley.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_mania_Ridley.png ~/web2py/applications/solver/static/images/marker_visited_mania_Ridley.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_mania_Phantoon.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_mania_Phantoon.png ~/web2py/applications/solver/static/images/marker_visited_mania_Phantoon.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_mania_Kraid.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_mania_Kraid.png ~/web2py/applications/solver/static/images/marker_visited_mania_Kraid.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_mania_MotherBrain.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_mania_MotherBrain.png ~/web2py/applications/solver/static/images/marker_visited_mania_MotherBrain.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_medium_Draygon.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_medium_Draygon.png ~/web2py/applications/solver/static/images/marker_visited_medium_Draygon.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_medium_Ridley.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_medium_Ridley.png ~/web2py/applications/solver/static/images/marker_visited_medium_Ridley.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_medium_Phantoon.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_medium_Phantoon.png ~/web2py/applications/solver/static/images/marker_visited_medium_Phantoon.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_medium_Kraid.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_medium_Kraid.png ~/web2py/applications/solver/static/images/marker_visited_medium_Kraid.png
[ -L ~/web2py/applications/solver/static/images/marker_visited_medium_MotherBrain.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/visited/marker_visited_medium_MotherBrain.png ~/web2py/applications/solver/static/images/marker_visited_medium_MotherBrain.png

[ -L ~/web2py/applications/solver/static/images/gauntlet_position.png ] || ln -s ~/RandomMetroidSolver/web/static/start_locations/gauntlet_position.png ~/web2py/applications/solver/static/images/gauntlet_position.png



[ -L ~/web2py/applications/solver/static/images/below_botwoon_etank.png ] || ln -s ~/RandomMetroidSolver/web/static/help/below_botwoon_etank.png ~/web2py/applications/solver/static/images/below_botwoon_etank.png
[ -L ~/web2py/applications/solver/static/images/west_sand_hall_tunnel.png ] || ln -s ~/RandomMetroidSolver/web/static/help/west_sand_hall_tunnel.png ~/web2py/applications/solver/static/images/west_sand_hall_tunnel.png
[ -L ~/web2py/applications/solver/static/images/west_sand_hall.png ] || ln -s ~/RandomMetroidSolver/web/static/help/west_sand_hall.png ~/web2py/applications/solver/static/images/west_sand_hall.png
[ -L ~/web2py/applications/solver/static/images/main_street_save.png ] || ln -s ~/RandomMetroidSolver/web/static/help/main_street_save.png ~/web2py/applications/solver/static/images/main_street_save.png
[ -L ~/web2py/applications/solver/static/images/crab_shaft_save.png ] || ln -s ~/RandomMetroidSolver/web/static/help/crab_shaft_save.png ~/web2py/applications/solver/static/images/crab_shaft_save.png

[ -L ~/web2py/applications/solver/static/images/samus_run_Power.gif ] || ln -s ~/RandomMetroidSolver/web/static/solver/samus_run_Power.gif ~/web2py/applications/solver/static/images/samus_run_Power.gif
[ -L ~/web2py/applications/solver/static/images/samus_run_Varia.gif ] || ln -s ~/RandomMetroidSolver/web/static/solver/samus_run_Varia.gif ~/web2py/applications/solver/static/images/samus_run_Varia.gif
[ -L ~/web2py/applications/solver/static/images/samus_run_Gravity.gif ] || ln -s ~/RandomMetroidSolver/web/static/solver/samus_run_Gravity.gif ~/web2py/applications/solver/static/images/samus_run_Gravity.gif

[ -L ~/web2py/applications/solver/views/solver_web/inc_area_map.svg ] || ln -s ~/RandomMetroidSolver/web/views/inc_area_map.svg ~/web2py/applications/solver/views/solver_web/inc_area_map.svg

[ -L ~/web2py/applications/solver/static/images/record.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/record.svg ~/web2py/applications/solver/static/images/record.svg
[ -L ~/web2py/applications/solver/static/images/record_ko.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/record_ko.svg ~/web2py/applications/solver/static/images/record_ko.svg
[ -L ~/web2py/applications/solver/static/images/record_load.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/record_load.svg ~/web2py/applications/solver/static/images/record_load.svg
[ -L ~/web2py/applications/solver/static/images/record_ok.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/record_ok.svg ~/web2py/applications/solver/static/images/record_ok.svg
[ -L ~/web2py/applications/solver/static/images/shut_down.svg ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/shut_down.svg ~/web2py/applications/solver/static/images/shut_down.svg

[ -L ~/web2py/applications/solver/static/images/samusIcon.png ] || ln -s ~/RandomMetroidSolver/web/static/tracker_sprites/samusIcon.png ~/web2py/applications/solver/static/images/samusIcon.png

[ -L ~/web2py/applications/solver/views/solver_web/varia.css ] || ln -s ~/RandomMetroidSolver/web/views/varia.css ~/web2py/applications/solver/views/solver_web/varia.css
