{% from "banners/map.jinja" import banner_settings with context %}

{{ banner_settings.lookup.locations.issue_net }}:
  file.managed:
    - contents: {{ banner_settings.issue_net }}
    - user: root
    - group: root
    - mode: 0644

{# EOF #}
