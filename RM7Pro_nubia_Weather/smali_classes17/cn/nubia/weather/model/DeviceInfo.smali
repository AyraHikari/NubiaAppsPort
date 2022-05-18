.class public Lcn/nubia/weather/model/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMobileModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getNubiaId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 66
    .local v0, "nubiaID":Ljava/lang/String;
    return-object v0
.end method

.method public getRomVersion()Ljava/lang/String;
    .locals 9

    .prologue
    .line 38
    const/4 v3, 0x0

    .line 39
    .local v3, "get":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .line 41
    .local v4, "rom":Ljava/lang/String;
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 42
    .local v1, "cls":Ljava/lang/Class;
    const-string v5, "get"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 43
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "ro.build.rom.internal.id"

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v1    # "cls":Ljava/lang/Class;
    :goto_0
    return-object v4

    .line 44
    :catch_0
    move-exception v2

    .line 45
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getVerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const-string v0, ""

    .line 21
    .local v0, "appVersionName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 23
    .local v3, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 24
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public hasSimCard(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 71
    .local v2, "telManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 72
    .local v1, "simState":I
    const/4 v0, 0x0

    .line 73
    .local v0, "result":Z
    packed-switch v1, :pswitch_data_0

    .line 80
    :goto_0
    return v0

    .line 75
    :pswitch_0
    const/4 v0, 0x1

    .line 76
    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
