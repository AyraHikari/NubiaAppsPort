.class public Lcn/nubia/touping/Utils/PhoneInfo;
.super Ljava/lang/Object;
.source "PhoneInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneInfo"

.field private static final WIRED_SUPPORT_DEVICES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NX659J"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "NX669J"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "NX666J"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "NX669S"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/touping/Utils/PhoneInfo;->WIRED_SUPPORT_DEVICES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 37
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 41
    :goto_0
    return v0

    .line 40
    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 41
    .local v0, "haspermission":Z
    :goto_1
    goto :goto_0

    .line 40
    .end local v0    # "haspermission":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static TraceBegin(Ljava/lang/String;)V
    .locals 7
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 82
    :try_start_0
    const-string v3, "android.os.Trace"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 83
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "beginSection"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 84
    .local v2, "getName":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "getName":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static TraceEnd()V
    .locals 5

    .prologue
    .line 92
    :try_start_0
    const-string v3, "android.os.Trace"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 93
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "endSection"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 94
    .local v2, "getName":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v2    # "getName":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    const-string v0, ""

    .line 135
    .local v0, "appVersion":Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v1, v0

    .line 146
    .end local v0    # "appVersion":Ljava/lang/String;
    .local v1, "appVersion":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 137
    .end local v1    # "appVersion":Ljava/lang/String;
    .restart local v0    # "appVersion":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 138
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 139
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 140
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    move-object v1, v0

    .line 141
    .end local v0    # "appVersion":Ljava/lang/String;
    .restart local v1    # "appVersion":Ljava/lang/String;
    goto :goto_0

    .line 143
    .end local v1    # "appVersion":Ljava/lang/String;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v0    # "appVersion":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 144
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    move-object v1, v0

    .line 146
    .end local v0    # "appVersion":Ljava/lang/String;
    .restart local v1    # "appVersion":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getBuildDevice()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 102
    .local v0, "buildDeviceName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "669"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-static {}, Lcn/nubia/touping/Utils/PhoneInfo;->getDeviceNameFor669()Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_0
    return-object v0
.end method

.method public static getCurrentHeight(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 66
    .local v0, "display":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v1
.end method

.method public static getCurrentImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const-string v0, "00000000"

    .line 48
    .local v0, "Imei":Ljava/lang/String;
    :try_start_0
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Lcn/nubia/touping/Utils/PhoneInfo;->CheckPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 54
    :cond_0
    :goto_0
    return-object v0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCurrentWidth(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 60
    .local v0, "display":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v1
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 9

    .prologue
    .line 109
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 111
    .local v2, "deviceName":Ljava/lang/String;
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 112
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "get"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 113
    .local v4, "getName":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "persist.sys.devicename"

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "getName":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 114
    :catch_0
    move-exception v3

    .line 115
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getDeviceNameFor669()Ljava/lang/String;
    .locals 9

    .prologue
    .line 121
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 123
    .local v2, "deviceName":Ljava/lang/String;
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 124
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "get"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 125
    .local v4, "getName":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "persist.sys.pcb_version_ext"

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "getName":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 126
    :catch_0
    move-exception v3

    .line 127
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getFocusedWindowFlags()I
    .locals 14

    .prologue
    const/4 v9, 0x0

    .line 293
    :try_start_0
    const-string v8, "android.os.ServiceManager"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v10, "getService"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 294
    .local v5, "getServiceManager":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "window"

    aput-object v12, v10, v11

    invoke-virtual {v5, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 295
    .local v0, "ServirceManager":Ljava/lang/Object;
    const-string v8, "android.view.IWindowManager$Stub"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 296
    .local v2, "cstub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "asInterface"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/os/IBinder;

    aput-object v12, v10, v11

    invoke-virtual {v2, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 297
    .local v1, "asInterface":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-virtual {v1, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IInterface;

    .line 298
    .local v6, "iWindowManager":Landroid/os/IInterface;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v10, "getFocusedWindowFlags"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 299
    .local v7, "method":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 300
    .local v4, "flag":I
    const-string v8, "PhoneInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getFocusedWindowFlags success flag = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .end local v0    # "ServirceManager":Ljava/lang/Object;
    .end local v1    # "asInterface":Ljava/lang/reflect/Method;
    .end local v2    # "cstub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "flag":I
    .end local v6    # "iWindowManager":Landroid/os/IInterface;
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .line 302
    :catch_0
    move-exception v3

    .line 303
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 304
    const-string v8, "PhoneInfo"

    const-string v10, "getFocusedWindowFlags getFocusedWindowFlags = exception"

    invoke-static {v8, v10}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v9

    .line 306
    goto :goto_0
.end method

.method public static getHeight(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 179
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 180
    .local v0, "defualtDisplay":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 181
    .local v1, "outPoint":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 182
    iget v3, v1, Landroid/graphics/Point;->y:I

    return v3
.end method

.method public static getNX669Model()Ljava/lang/String;
    .locals 9

    .prologue
    .line 259
    const/4 v4, 0x0

    .line 261
    .local v4, "model":Ljava/lang/String;
    :try_start_0
    const-string v5, "nubia.os.ApplicationManager$Trigger"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 262
    .local v1, "cls":Ljava/lang/Class;
    const-string v5, "getSystemProperties"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 263
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "persist.sys.pcb_version_ext"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, ""

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 264
    const-string v5, "PhoneInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNX669Model: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v1    # "cls":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v4

    .line 265
    :catch_0
    move-exception v2

    .line 266
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    const-string v5, "PhoneInfo"

    const-string v6, "getNX669Model: exception"

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getPhoneScreenRefreshRate()I
    .locals 10

    .prologue
    .line 152
    const-string v0, "/sys/kernel/lcd_enhance/dfps"

    .line 153
    .local v0, "REFRESH_RATE_NODE_PATH":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v3, "file":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 156
    .local v4, "reader":Ljava/io/FileReader;
    const/4 v7, 0x1

    new-array v1, v7, [C

    .line 157
    .local v1, "buffer":[C
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v6, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/FileReader;->read([C)I

    move-result v7

    if-lez v7, :cond_0

    .line 159
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 164
    .end local v1    # "buffer":[C
    .end local v4    # "reader":Ljava/io/FileReader;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 165
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v7, "PhoneInfo"

    const-string v8, "FileNotFoundException"

    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 174
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    const/4 v7, -0x1

    :goto_2
    return v7

    .line 161
    .restart local v1    # "buffer":[C
    .restart local v4    # "reader":Ljava/io/FileReader;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, "result":Ljava/lang/String;
    const-string v7, "PhoneInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v7

    goto :goto_2

    .line 167
    .end local v1    # "buffer":[C
    .end local v4    # "reader":Ljava/io/FileReader;
    .end local v5    # "result":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v2

    .line 168
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "PhoneInfo"

    const-string v8, "IOException"

    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 170
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 171
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v7, "PhoneInfo"

    const-string v8, "NumberFormatException"

    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getUsbInfo(Landroid/content/Intent;)I
    .locals 10
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 204
    const/high16 v1, 0x3000000

    .line 206
    .local v1, "bitrate":I
    :try_start_0
    const-string v6, "-1"

    .line 207
    .local v6, "result":Ljava/lang/String;
    const-string v0, "/sys/kernel/usb_enhance/usb30"

    .line 208
    .local v0, "USB_INFO_PATH":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v7, "/sys/kernel/usb_enhance/usb30"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local v4, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 210
    .local v5, "reader":Ljava/io/FileReader;
    const/16 v7, 0xa

    new-array v2, v7, [C

    .line 211
    .local v2, "buffer":[C
    invoke-virtual {v5, v2}, Ljava/io/FileReader;->read([C)I

    move-result v7

    if-lez v7, :cond_0

    .line 212
    new-instance v6, Ljava/lang/String;

    .end local v6    # "result":Ljava/lang/String;
    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([C)V

    .line 214
    .restart local v6    # "result":Ljava/lang/String;
    :cond_0
    const-string v7, "PhoneInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getusdb = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "none"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 216
    const/high16 v1, 0x500000

    .line 226
    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    const-string v7, "bitrate"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 227
    const-string v7, "bitrate"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 228
    if-lez v1, :cond_2

    .line 229
    mul-int/lit16 v7, v1, 0x400

    mul-int/lit16 v1, v7, 0x400

    .line 235
    .end local v0    # "USB_INFO_PATH":Ljava/lang/String;
    .end local v2    # "buffer":[C
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "reader":Ljava/io/FileReader;
    .end local v6    # "result":Ljava/lang/String;
    :cond_2
    :goto_1
    return v1

    .line 217
    .restart local v0    # "USB_INFO_PATH":Ljava/lang/String;
    .restart local v2    # "buffer":[C
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "usb20"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 218
    const/high16 v1, 0x3200000

    goto :goto_0

    .line 219
    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "usb30"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 220
    const/high16 v1, 0x6400000

    goto :goto_0

    .line 221
    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "usb3.1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 222
    const/high16 v1, 0x9600000

    goto :goto_0

    .line 223
    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "usb31"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 224
    const/high16 v1, 0x9600000

    goto :goto_0

    .line 232
    .end local v0    # "USB_INFO_PATH":Ljava/lang/String;
    .end local v2    # "buffer":[C
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "reader":Ljava/io/FileReader;
    .end local v6    # "result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 233
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getUsbTypeInfo()Ljava/lang/String;
    .locals 10

    .prologue
    .line 239
    const-string v5, "-1"

    .line 241
    .local v5, "result":Ljava/lang/String;
    :try_start_0
    const-string v0, "/sys/kernel/usb_enhance/usb30"

    .line 242
    .local v0, "USB_INFO_PATH":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v7, "/sys/kernel/usb_enhance/usb30"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    .local v3, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 244
    .local v4, "reader":Ljava/io/FileReader;
    const/16 v7, 0xa

    new-array v1, v7, [C

    .line 245
    .local v1, "buffer":[C
    invoke-virtual {v4, v1}, Ljava/io/FileReader;->read([C)I

    move-result v7

    if-lez v7, :cond_0

    .line 246
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([C)V

    .end local v5    # "result":Ljava/lang/String;
    .local v6, "result":Ljava/lang/String;
    move-object v5, v6

    .line 248
    .end local v6    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_0
    const-string v7, "PhoneInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getusdb = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 253
    .end local v0    # "USB_INFO_PATH":Ljava/lang/String;
    .end local v1    # "buffer":[C
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "reader":Ljava/io/FileReader;
    .end local v5    # "result":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 250
    .restart local v5    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 251
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWidth(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 187
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 188
    .local v0, "defualtDisplay":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 189
    .local v1, "outPoint":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 190
    iget v3, v1, Landroid/graphics/Point;->x:I

    return v3
.end method

.method public static isMonkeyRunning()Z
    .locals 2

    .prologue
    .line 196
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 200
    :goto_0
    return v1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSecureWindow()Z
    .locals 12

    .prologue
    .line 310
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    .line 312
    .local v2, "time1":J
    :try_start_0
    invoke-static {}, Lcn/nubia/touping/Utils/PhoneInfo;->getFocusedWindowFlags()I

    move-result v1

    .line 313
    .local v1, "flags":I
    if-eqz v1, :cond_0

    .line 314
    and-int/lit16 v6, v1, 0x2000

    if-eqz v6, :cond_0

    .line 315
    const-string v6, "PhoneInfo"

    const-string v7, "getFocusedWindowFlag is FLAG_SECURE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    const/4 v6, 0x1

    .line 322
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    .line 323
    .local v4, "time2":J
    const-string v7, "PhoneInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "list.size spendTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v10, v4, v2

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .end local v1    # "flags":I
    :goto_0
    return v6

    .line 322
    .end local v4    # "time2":J
    .restart local v1    # "flags":I
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    .line 323
    .restart local v4    # "time2":J
    const-string v6, "PhoneInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "list.size spendTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v4, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .end local v1    # "flags":I
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 319
    .end local v4    # "time2":J
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    .line 323
    .restart local v4    # "time2":J
    const-string v6, "PhoneInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "list.size spendTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v4, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 322
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "time2":J
    :catchall_0
    move-exception v6

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    .line 323
    .restart local v4    # "time2":J
    const-string v7, "PhoneInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "list.size spendTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v10, v4, v2

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    throw v6
.end method

.method public static isSupportWiredScreenProjection()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 70
    sget-object v3, Lcn/nubia/touping/Utils/PhoneInfo;->WIRED_SUPPORT_DEVICES:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    .local v0, "device":Ljava/lang/String;
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 73
    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 74
    const/4 v1, 0x1

    .line 77
    :cond_0
    return v1

    .line 70
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static support165HZ()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, "support":Z
    invoke-static {}, Lcn/nubia/touping/Utils/PhoneInfo;->getNX669Model()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcn/nubia/touping/Utils/PhoneInfo;->getNX669Model()Ljava/lang/String;

    move-result-object v2

    const-string v3, "669"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 287
    :goto_0
    return v0

    .line 277
    :cond_0
    invoke-static {}, Lcn/nubia/touping/Utils/PhoneInfo;->getNX669Model()Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 283
    const/4 v0, 0x0

    .line 286
    :goto_2
    const-string v1, "PhoneInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "support165HZ: support : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :sswitch_0
    const-string v1, "NX669J_V1A"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v4, "NX669J_V1E"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 280
    :pswitch_0
    const/4 v0, 0x1

    .line 281
    goto :goto_2

    .line 277
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2285ea7e -> :sswitch_0
        -0x2285ea7a -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
