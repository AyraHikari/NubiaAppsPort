.class public Lnet/fortuna/ical4j/model/DefaultTimeZoneRegistryFactory;
.super Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;
.source "DefaultTimeZoneRegistryFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createRegistry()Lnet/fortuna/ical4j/model/TimeZoneRegistry;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;-><init>()V

    return-object v0
.end method
