.class public Lcn/nubia/touping/Utils/ExpandingsionModeUtil;
.super Ljava/lang/Object;
.source "ExpandingsionModeUtil.java"


# static fields
.field public static final ExpandingVisionSwitch:Ljava/lang/String; = "ExpandingVisionSwitch"

.field private static final TAG:Ljava/lang/String; = "ExpandingsionModeUtil"

.field public static currentMirrorActivityName:Ljava/lang/String; = null

.field public static currentMirrorPackageName:Ljava/lang/String; = null

.field private static final supportExpandingVisionPackageName:Ljava/lang/String; = "com.tencent.tmgp.pubgmhd:com.rekoo.pubgm:com.tencent.ig:com.pubg.krmobile:com.vng.pubgmobile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, ""

    sput-object v0, Lcn/nubia/touping/Utils/ExpandingsionModeUtil;->currentMirrorPackageName:Ljava/lang/String;

    .line 28
    const-string v0, ""

    sput-object v0, Lcn/nubia/touping/Utils/ExpandingsionModeUtil;->currentMirrorActivityName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static comeInExpandingSionMode()V
    .locals 3

    .prologue
    .line 59
    :try_start_0
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/ExpandingsionModeUtil;->updateExpandingSionMode(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 61
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getExpandingSionMode(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 131
    :try_start_0
    const-string v5, "window"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 132
    .local v4, "windowManager":Landroid/view/WindowManager;
    if-eqz v4, :cond_0

    .line 133
    const-string v5, "android.view.WindowManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 134
    .local v0, "clazz":Ljava/lang/Class;
    const-string v5, "getAppVision"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 135
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 136
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 143
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    :goto_0
    return v1

    .line 139
    :catch_0
    move-exception v2

    .line 140
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    const-string v5, "ExpandingsionModeUtil"

    const-string v6, "setExpandingSionMode exception"

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static outExpandingSionMode()V
    .locals 3

    .prologue
    .line 67
    :try_start_0
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/ExpandingsionModeUtil;->updateExpandingSionMode(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 69
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static outExpandingSionModeForApplication(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    :try_start_0
    const-string v1, "ExpandingsionModeUtil"

    const-string v2, "uncaughtException 000"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcn/nubia/touping/Utils/ExpandingsionModeUtil;->updateExpandingSionMode(Landroid/content/Context;Z)V

    .line 77
    const-string v1, "ExpandingsionModeUtil"

    const-string v2, "uncaughtException 111"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    const-string v1, "ExpandingsionModeUtil"

    const-string v2, "uncaughtException outExpandingSionModeForApplication exception"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setCurrentExpandingVisionSwitch(ILandroid/content/Context;)V
    .locals 5
    .param p0, "num"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v2, 0x1

    if-le p0, v2, :cond_0

    .line 40
    const/4 p0, 0x1

    .line 41
    :try_start_0
    const-string v2, "ExpandingsionModeUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "num = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    if-gez p0, :cond_1

    .line 44
    const/4 p0, 0x0

    .line 45
    const-string v2, "ExpandingsionModeUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "num = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ExpandingVisionSwitch"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 48
    .local v1, "saveValue":I
    if-ne v1, p0, :cond_2

    .line 54
    .end local v1    # "saveValue":I
    :goto_0
    return-void

    .line 49
    .restart local v1    # "saveValue":I
    :cond_2
    const-string v2, "ExpandingsionModeUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set current num = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ExpandingVisionSwitch"

    invoke-static {v2, v3, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    .end local v1    # "saveValue":I
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setCurrentMirrorPackageName(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p0, "currentMirrorPackageNameTemp"    # Ljava/lang/String;
    .param p1, "activityname"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    sput-object p0, Lcn/nubia/touping/Utils/ExpandingsionModeUtil;->currentMirrorPackageName:Ljava/lang/String;

    .line 31
    sput-object p1, Lcn/nubia/touping/Utils/ExpandingsionModeUtil;->currentMirrorActivityName:Ljava/lang/String;

    .line 32
    const-string v0, "com.tencent.tmgp.pubgmhd:com.rekoo.pubgm:com.tencent.ig:com.pubg.krmobile:com.vng.pubgmobile"

    sget-object v1, Lcn/nubia/touping/Utils/ExpandingsionModeUtil;->currentMirrorPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-static {}, Lcn/nubia/touping/Utils/ExpandingsionModeUtil;->outExpandingSionMode()V

    .line 35
    :cond_0
    return-void
.end method

.method private static setExpandingSionMode(Landroid/content/Context;I)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "numMode"    # I

    .prologue
    .line 116
    :try_start_0
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 117
    .local v3, "windowManager":Landroid/view/WindowManager;
    if-eqz v3, :cond_0

    .line 118
    const-string v4, "android.view.WindowManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 119
    .local v0, "clazz":Ljava/lang/Class;
    const-string v4, "setAppVision"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 120
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 121
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcn/nubia/touping/Utils/ExpandingsionModeUtil;->currentMirrorPackageName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcn/nubia/touping/Utils/ExpandingsionModeUtil;->currentMirrorActivityName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    const-string v4, "ExpandingsionModeUtil"

    const-string v5, "setExpandingSionMode exception"

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateExpandingSionMode(Landroid/content/Context;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "comeIn"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 88
    :try_start_0
    invoke-static {p0}, Lcn/nubia/touping/Utils/ExpandingsionModeUtil;->getExpandingSionMode(Landroid/content/Context;)I

    move-result v2

    .line 89
    .local v2, "oldExpandingsionStatus":I
    if-eqz p1, :cond_3

    .line 90
    const/4 v5, 0x1

    invoke-static {p0, v5}, Lcn/nubia/touping/Utils/ExpandingsionModeUtil;->setExpandingSionMode(Landroid/content/Context;I)V

    .line 94
    :goto_0
    invoke-static {p0}, Lcn/nubia/touping/Utils/ExpandingsionModeUtil;->getExpandingSionMode(Landroid/content/Context;)I

    move-result v0

    .line 95
    .local v0, "currentExpandingsionStatus":I
    if-ne v2, v0, :cond_1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    if-ne v0, v3, :cond_2

    .line 96
    :cond_1
    invoke-static {v0}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->sendCurrentExpandingMode(I)V

    .line 98
    :cond_2
    if-ne v0, v3, :cond_4

    .line 99
    const/4 v5, 0x1

    invoke-static {v5, p0}, Lcn/nubia/touping/Utils/ExpandingsionModeUtil;->setCurrentExpandingVisionSwitch(ILandroid/content/Context;)V

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "cn.nubia.close_freeform"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    :goto_1
    if-ne v0, v3, :cond_5

    :goto_2
    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->setCurrentExpandingsion(Z)V

    .line 110
    .end local v0    # "currentExpandingsionStatus":I
    .end local v2    # "oldExpandingsionStatus":I
    :goto_3
    return-void

    .line 92
    .restart local v2    # "oldExpandingsionStatus":I
    :cond_3
    const/4 v5, 0x0

    invoke-static {p0, v5}, Lcn/nubia/touping/Utils/ExpandingsionModeUtil;->setExpandingSionMode(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    .end local v2    # "oldExpandingsionStatus":I
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    const-string v3, "ExpandingsionModeUtil"

    const-string v4, "updateExpandingSionMode = exception"

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 103
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "currentExpandingsionStatus":I
    .restart local v2    # "oldExpandingsionStatus":I
    :cond_4
    const/4 v5, 0x0

    :try_start_1
    invoke-static {v5, p0}, Lcn/nubia/touping/Utils/ExpandingsionModeUtil;->setCurrentExpandingVisionSwitch(ILandroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_5
    move v3, v4

    .line 105
    goto :goto_2
.end method
