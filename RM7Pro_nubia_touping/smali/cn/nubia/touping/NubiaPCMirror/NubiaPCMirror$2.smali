.class final Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$2;
.super Ljava/lang/Object;
.source "NubiaPCMirror.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setNubiaTouPingStatus2System(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 192
    :try_start_0
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$2;->val$context:Landroid/content/Context;

    if-nez v7, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorPlayingStatus()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v7

    if-eqz v7, :cond_3

    sget-boolean v7, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-nez v7, :cond_3

    :cond_2
    move v2, v6

    .line 194
    .local v2, "isWifiMirror":Z
    :cond_3
    if-eqz v2, :cond_0

    .line 195
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$2;->val$context:Landroid/content/Context;

    const-string v7, "PRIVATE_MODE_WIRELESS"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    .line 197
    .local v4, "privateMode":Z
    const-string v6, "nubia.os.ApplicationManager$Trigger"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 198
    .local v0, "cls":Ljava/lang/Class;
    const-string v6, "setSystemProperties"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 199
    .local v3, "method":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_4

    const-string v5, "1"

    .line 200
    .local v5, "privateModeSwitch":Ljava/lang/String;
    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "sys.nubia.touping.nubiamirror"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v2    # "isWifiMirror":Z
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "privateMode":Z
    .end local v5    # "privateModeSwitch":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 199
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cls":Ljava/lang/Class;
    .restart local v2    # "isWifiMirror":Z
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    .restart local v4    # "privateMode":Z
    :cond_4
    :try_start_1
    const-string v5, "0"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
