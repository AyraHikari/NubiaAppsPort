.class public Lcom/hpplay/cybergarage/upnp/device/USN;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ROOTDEVICE:Ljava/lang/String; = "upnp:rootdevice"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getUDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const-string v0, ""

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v0, "::"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 31
    if-gez v0, :cond_1

    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 33
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 34
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final isRootDevice(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0

    :cond_0
    const-string v0, "upnp:rootdevice"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
