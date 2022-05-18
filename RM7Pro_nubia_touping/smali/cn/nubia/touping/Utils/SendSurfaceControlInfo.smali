.class public Lcn/nubia/touping/Utils/SendSurfaceControlInfo;
.super Ljava/lang/Object;
.source "SendSurfaceControlInfo.java"


# static fields
.field private static final E_SCREEN_CAST_ENABLE:I = 0x3e9

.field private static final E_SCREEN_CAST_NONE:I = 0x3e8

.field private static final E_SCREEN_CAST_PC_FPS:I = 0x3eb

.field private static final E_SCREEN_CAST_TARGET_IS_PC:I = 0x3ec

.field private static final E_SCREEN_CAST_TV_FPS:I = 0x3ea

.field private static final TAG:Ljava/lang/String; = "SendSurfaceControlInfo"

.field private static mirrorNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput v0, Lcn/nubia/touping/Utils/SendSurfaceControlInfo;->mirrorNum:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static resetNumInfo(I)I
    .locals 5
    .param p0, "num"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 98
    const/4 v2, 0x5

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 99
    .local v1, "supportNum":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 100
    aget v2, v1, v0

    if-ne p0, v2, :cond_0

    .line 111
    .end local p0    # "num":I
    :goto_1
    return p0

    .line 99
    .restart local p0    # "num":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_1
    aget v2, v1, v3

    if-gt p0, v2, :cond_2

    aget p0, v1, v3

    goto :goto_1

    .line 105
    :cond_2
    aget v2, v1, v4

    if-lt p0, v2, :cond_3

    aget p0, v1, v4

    goto :goto_1

    .line 106
    :cond_3
    const/4 v0, 0x0

    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 107
    aget v2, v1, v0

    if-lt p0, v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    aget v2, v1, v2

    if-gt p0, v2, :cond_4

    .line 108
    aget p0, v1, v0

    goto :goto_1

    .line 106
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 111
    :cond_5
    const/4 v2, 0x1

    aget p0, v1, v2

    goto :goto_1

    .line 98
    :array_0
    .array-data 4
        0x1e
        0x3c
        0x5a
        0x78
        0x90
    .end array-data
.end method

.method public static sendTouPingNum(I)V
    .locals 10
    .param p0, "num"    # I

    .prologue
    .line 39
    if-gtz p0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 41
    :cond_0
    :try_start_0
    const-string v6, "SendSurfaceControlInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "num = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorPlayingStatus()Z

    move-result v2

    .line 43
    .local v2, "isMirrorStatus":Z
    const-string v6, "SendSurfaceControlInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isMirrorStatus = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v3

    .line 45
    .local v3, "isNubiaMirrorStatus":Z
    const-string v6, "SendSurfaceControlInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isNubiaMirrorStatus = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorTypeIsPC()Z

    move-result v4

    .line 47
    .local v4, "isPc":Z
    const-string v6, "SendSurfaceControlInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isPc = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {p0}, Lcn/nubia/touping/Utils/SendSurfaceControlInfo;->resetNumInfo(I)I

    move-result p0

    .line 51
    const-string v6, "android.view.SurfaceControl"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 52
    .local v0, "cls":Ljava/lang/Class;
    const-string v6, "setScreenCastOption"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 53
    .local v5, "setMethod":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_1

    .line 54
    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x3eb

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x3ec

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v6, "SendSurfaceControlInfo"

    const-string v7, "set PC succcess"

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 62
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v2    # "isMirrorStatus":Z
    .end local v3    # "isNubiaMirrorStatus":Z
    .end local v4    # "isPc":Z
    .end local v5    # "setMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 58
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cls":Ljava/lang/Class;
    .restart local v2    # "isMirrorStatus":Z
    .restart local v3    # "isNubiaMirrorStatus":Z
    .restart local v4    # "isPc":Z
    .restart local v5    # "setMethod":Ljava/lang/reflect/Method;
    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x2

    :try_start_1
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x3ea

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x1e

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x3ec

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v6, "SendSurfaceControlInfo"

    const-string v7, "set TV succcess num = 30"

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static sendTouPingNumByMirrorStatus(Z)V
    .locals 1
    .param p0, "mirrorStatus"    # Z

    .prologue
    .line 31
    invoke-static {p0}, Lcn/nubia/touping/Utils/SendSurfaceControlInfo;->setTurnOffSkipSwitch(Z)V

    .line 32
    if-eqz p0, :cond_0

    .line 33
    sget v0, Lcn/nubia/touping/Utils/SendSurfaceControlInfo;->mirrorNum:I

    invoke-static {v0}, Lcn/nubia/touping/Utils/SendSurfaceControlInfo;->sendTouPingNum(I)V

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/nubia/touping/Utils/SendSurfaceControlInfo;->setMirrorNum(I)V

    goto :goto_0
.end method

.method public static setMirrorNum(I)V
    .locals 0
    .param p0, "mirrorNumTemp"    # I

    .prologue
    .line 27
    sput p0, Lcn/nubia/touping/Utils/SendSurfaceControlInfo;->mirrorNum:I

    .line 28
    return-void
.end method

.method public static setTouPingFrameRateNum()V
    .locals 7

    .prologue
    .line 71
    :try_start_0
    const-string v3, "android.view.SurfaceControl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 72
    .local v0, "cls":Ljava/lang/Class;
    const-string v3, "setScreenCastOption"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 73
    .local v2, "setMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x3eb

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x3ec

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v3, "SendSurfaceControlInfo"

    const-string v4, "set PC succcess"

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v2    # "setMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setTurnOffSkipSwitch(Z)V
    .locals 7
    .param p0, "switchStatus"    # Z

    .prologue
    .line 84
    :try_start_0
    const-string v3, "android.view.SurfaceControl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 85
    .local v0, "cls":Ljava/lang/Class;
    const-string v3, "setScreenCastOption"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 86
    .local v2, "setMethod":Ljava/lang/reflect/Method;
    if-eqz p0, :cond_0

    .line 87
    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x3e9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v2    # "setMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 89
    .restart local v0    # "cls":Ljava/lang/Class;
    .restart local v2    # "setMethod":Ljava/lang/reflect/Method;
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x3e9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v2    # "setMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
