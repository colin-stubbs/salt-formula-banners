{% from "banners/map.jinja" import banner_settings with context %}

{{ banner_settings.lookup.locations.motd }}:
  file.managed:
    - contents: {{ banner_settings.motd }}
    - user: root
    - group: root
    - mode: 0644

{# EOF #}
