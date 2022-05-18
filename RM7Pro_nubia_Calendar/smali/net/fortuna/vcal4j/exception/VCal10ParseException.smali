.class public Lnet/fortuna/vcal4j/exception/VCal10ParseException;
.super Ljava/text/ParseException;
.source "VCal10ParseException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 21
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 22
    return-void
.end method
