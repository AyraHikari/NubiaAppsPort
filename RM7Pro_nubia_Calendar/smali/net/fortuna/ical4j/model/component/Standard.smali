.class public Lnet/fortuna/ical4j/model/component/Standard;
.super Lnet/fortuna/ical4j/model/component/Observance;
.source "Standard.java"


# static fields
.field private static final serialVersionUID:J = -0x41ee9f7c5cf015d7L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    const-string v0, "STANDARD"

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/component/Observance;-><init>(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 1
    .param p1, "properties"    # Lnet/fortuna/ical4j/model/PropertyList;

    .prologue
    .line 82
    const-string v0, "STANDARD"

    invoke-direct {p0, v0, p1}, Lnet/fortuna/ical4j/model/component/Observance;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 83
    return-void
.end method
