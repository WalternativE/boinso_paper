from django.db import models
from django.contrib.auth.models import User


class UserProfile(models.Model):

    """
    User Profile model adds information to ground control clients.
    Right now nothing happens with that information as there
    are no active passes scheduled right now (just downlink).
    """

    user = models.OneToOneField(User)
    latitude = models.FloatField(default=51.483462)
    longitude = models.FloatField(default=0.0586198)
    altitude = models.FloatField(default=45)

    def __str__(self):
        return "{} {}".format(self.user.username, self.user.email)


class Satellite(models.Model):

    """
    Satellite model represents an earht orbiter.
    Closely modelled after GPredict satellite representation.
    """

    catalogue_number = models.IntegerField(blank=False)
    version = models.IntegerField(default=1)
    name = models.CharField(max_length=140)
    nickname = models.CharField(max_length=140)
    tle = models.FileField(null=True, blank=True)

    # definitions for operation choices
    OP_STAT_UNKNOWN = 0         # unknown status
    OP_STAT_OPERATIONAL = 1     # operational
    OP_STAT_NONOP = 2           # non operational
    OP_STAT_PARTIAL = 3         # partially operational
    OP_STAT_STDBY = 4           # standby
    OP_STAT_SPARE = 5           # spare
    OP_STAT_EXTENDED = 6        # extended mission

    STAT_CHOICES = (
        (OP_STAT_UNKNOWN, 'operation status unknown'),
        (OP_STAT_OPERATIONAL, 'operational'),
        (OP_STAT_NONOP, 'non operational'),
        (OP_STAT_PARTIAL, 'partially operational'),
        (OP_STAT_STDBY, 'on standby'),
        (OP_STAT_SPARE, 'spare'),
        (OP_STAT_EXTENDED, 'extended mission')
    )

    status = models.IntegerField(max_length=2,
                                 choices=STAT_CHOICES,
                                 default=OP_STAT_UNKNOWN)

    def __str__(self):
        return "{} Version {}".format(self.name, self.version)


class Transponder(models.Model):

    """
    Transponder model. Pretty close to transponder representation
    in GPredicts trsp files.
    """

    satellite = models.ForeignKey('Satellite', related_name='transponders')
    name = models.CharField(blank=False, max_length=250)
    up_low = models.BigIntegerField(blank=True)
    up_high = models.BigIntegerField(blank=True)
    down_low = models.BigIntegerField(blank=True)
    down_high = models.BigIntegerField(blank=True)
    inverted = models.BooleanField(default=False)

    def __str__(self):
        return "Sat: {} Name: {}".format(
            self.satellite.catalogue_number, self.name)
