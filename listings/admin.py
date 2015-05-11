from django.contrib import admin
from core.models import UserProfile, Satellite, Transponder


class TransponderInline(admin.TabularInline):
    model = Transponder


class SatelliteAdmin(admin.ModelAdmin):
    inlines = [
        TransponderInline,
    ]

admin.site.register(UserProfile)
admin.site.register(Satellite, SatelliteAdmin)

# there is really no need to work on an Transponder individually as
# they are managed inline with the satellite objects - but hey - choices!
admin.site.register(Transponder)
