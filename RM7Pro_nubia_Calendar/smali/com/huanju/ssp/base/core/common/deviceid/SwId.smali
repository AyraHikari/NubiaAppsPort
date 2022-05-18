.class public Lcom/huanju/ssp/base/core/common/deviceid/SwId;
.super Ljava/lang/Object;
.source "SwId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/base/core/common/deviceid/SwId$Holder;
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
    .locals 6
    .param p0, "scope"    # Ljava/lang/String;

    .prologue
    .line 19
    if-nez p0, :cond_0

    .line 20
    invoke-static {}, Lcom/huanju/ssp/base/core/common/deviceid/HwId;->getSerial()Ljava/lang/String;

    move-result-object p0

    .line 21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 25
    :cond_0
    const/16 v2, 0x20

    new-array v0, v2, [B

    .line 26
    .local v0, "bs":[B
    sget-object v2, Lcom/huanju/ssp/base/core/common/deviceid/SwId$Holder;->sNG:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 27
    invoke-static {p0, v0}, Lcom/huanju/ssp/base/core/common/deviceid/IdCodecer;->sha256(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    invoke-static {v0}, Lcom/huanju/ssp/base/core/common/deviceid/IdCodecer;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 33
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 34
    const-string v1, "00000000"

    .line 36
    :cond_2
    return-object v1
.end method
