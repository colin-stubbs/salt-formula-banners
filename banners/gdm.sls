{% from "banners/map.jinja" import banner_settings with context %}

pkg-gdm:
  pkg.installed:
    - name: {{ banner_settings.lookup.packages.gdm }}

{{ banner_settings.lookup.locations.gdm.dconf_profile_gdm }}:
  file.managed:
    - source: salt://banners/files/dconf_profile
    - template: jinja
    - context:
      filename: {{ banner_settings.lookup.locations.gdm.dconf_profile_gdm }}
      config: {{ banner_settings.gdm.profile }}
    - user: root
    - group: root
    - mode: 0644

{{ banner_settings.lookup.locations.gdm.dconf_db_gdm_d }}:
  file.managed:
    - source: salt://banners/files/dconf_db_gdm_d
    - template: jinja
    - context:
      filename: {{ banner_settings.lookup.locations.gdm.dconf_db_gdm_d }}
      config: {{ banner_settings.gdm.banner }}
    - user: root
    - group: root
    - mode: 0644

{# EOF #}
