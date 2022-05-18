.class public interface abstract Lorg/joda/time/tz/Provider;
.super Ljava/lang/Object;
.source "Provider.java"


# virtual methods
.method public abstract getAvailableIDs()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getZone(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;
.end method
