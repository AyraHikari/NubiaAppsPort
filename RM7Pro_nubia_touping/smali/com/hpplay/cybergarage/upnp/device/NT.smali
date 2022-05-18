.class public Lcom/hpplay/cybergarage/upnp/device/NT;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EVENT:Ljava/lang/String; = "upnp:event"

.field public static final ROOTDEVICE:Ljava/lang/String; = "upnp:rootdevice"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isRootDevice(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0

    :cond_0
    const-string v0, "upnp:rootdevice"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
