.class public Lcom/nubia/reyun/deviceid/SwId;
.super Ljava/lang/Object;
.source "SwId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nubia/reyun/deviceid/SwId$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SwId"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static generateRandomId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 19
    if-nez p0, :cond_0

    .line 20
    invoke-static {}, Lcom/nubia/reyun/deviceid/HwId;->getSerial()Ljava/lang/String;

    move-result-object p0

    .line 21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 25
    :cond_0
    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 26
    sget-object v0, Lcom/nubia/reyun/deviceid/SwId$Holder;->sNG:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 27
    invoke-static {p0, v1}, Lcom/nubia/reyun/deviceid/IdCodecer;->sha256(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    invoke-static {v1}, Lcom/nubia/reyun/deviceid/IdCodecer;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 33
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    const-string v0, "00000000"

    .line 36
    :cond_2
    return-object v0
.end method
