.class public Lcom/nubia/nucms/utils/NuCmsLog;
.super Ljava/lang/Object;
.source "NuCmsLog.java"


# static fields
.field private static final LENGTH_SPLIT:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "NuCmsSDK"

.field private static mEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nubia/nucms/utils/NuCmsLog;->mEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {}, Lcom/nubia/nucms/utils/NuCmsLog;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "NuCmsSDK"

    invoke-static {p0}, Lcom/nubia/nucms/utils/NuCmsLog;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {}, Lcom/nubia/nucms/utils/NuCmsLog;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "NuCmsSDK"

    invoke-static {p0, p1}, Lcom/nubia/nucms/utils/NuCmsLog;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 97
    invoke-static {}, Lcom/nubia/nucms/utils/NuCmsLog;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "NuCmsSDK"

    invoke-static {p0, p1}, Lcom/nubia/nucms/utils/NuCmsLog;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    :cond_0
    return-void
.end method

.method private static format(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 25
    return-object p0
.end method

.method private static format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {}, Lcom/nubia/nucms/utils/NuCmsLog;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const-string v0, "NuCmsSDK"

    invoke-static {p0}, Lcom/nubia/nucms/utils/NuCmsLog;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {}, Lcom/nubia/nucms/utils/NuCmsLog;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-string v0, "NuCmsSDK"

    invoke-static {p0, p1}, Lcom/nubia/nucms/utils/NuCmsLog;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    return-void
.end method

.method public static iDebugLines(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v5, 0x0

    .line 44
    .local v5, "startIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 45
    .local v1, "length":I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 47
    sub-int v4, v1, v5

    .line 49
    .local v4, "restLen":I
    const/16 v6, 0x7d0

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 50
    .local v3, "nextLen":I
    add-int v0, v5, v3

    .line 51
    .local v0, "endIndex":I
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "msgSplit":Ljava/lang/String;
    const-string v6, "NuCmsSDK"

    invoke-static {p0, v2}, Lcom/nubia/nucms/utils/NuCmsLog;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    move v5, v0

    .line 55
    goto :goto_0

    .line 56
    .end local v0    # "endIndex":I
    .end local v2    # "msgSplit":Ljava/lang/String;
    .end local v3    # "nextLen":I
    .end local v4    # "restLen":I
    :cond_0
    return-void
.end method

.method public static iRelease(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 63
    const-string v0, "NuCmsSDK"

    invoke-static {p0}, Lcom/nubia/nucms/utils/NuCmsLog;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public static iRelease(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 59
    const-string v0, "NuCmsSDK"

    invoke-static {p0, p1}, Lcom/nubia/nucms/utils/NuCmsLog;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public static isEnable()Z
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/nubia/nucms/utils/NuCmsLog;->mEnable:Z

    return v0
.end method

.method public static setEnable(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 13
    sput-boolean p0, Lcom/nubia/nucms/utils/NuCmsLog;->mEnable:Z

    .line 14
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {}, Lcom/nubia/nucms/utils/NuCmsLog;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "NuCmsSDK"

    invoke-static {p0}, Lcom/nubia/nucms/utils/NuCmsLog;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {}, Lcom/nubia/nucms/utils/NuCmsLog;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "NuCmsSDK"

    invoke-static {p0, p1}, Lcom/nubia/nucms/utils/NuCmsLog;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 79
    invoke-static {}, Lcom/nubia/nucms/utils/NuCmsLog;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "NuCmsSDK"

    invoke-static {p0, p1}, Lcom/nubia/nucms/utils/NuCmsLog;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    :cond_0
    return-void
.end method
