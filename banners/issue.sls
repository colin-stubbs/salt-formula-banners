{% from "banners/map.jinja" import banner_settings with context %}

{{ banner_settings.lookup.locations.issue }}:
  file.managed:
    - contents: {{ banner_settings.issue }}
    - user: root
    - group: root
    - mode: 0644

{# EOF #}
