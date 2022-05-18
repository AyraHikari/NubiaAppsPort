.class final Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$3;
.super Ljava/lang/Object;
.source "NubiaPCMirror.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setNubiaTouPingStatus2SystemUSB(Landroid/content/Context;)V
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
    .line 210
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 214
    :try_start_0
    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$3;->val$context:Landroid/content/Context;

    if-nez v5, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    sget-boolean v5, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v5, :cond_0

    .line 216
    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$3;->val$context:Landroid/content/Context;

    const-string v6, "PRIVATE_MODE_USB"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    .line 218
    .local v3, "privateMode":Z
    const-string v5, "nubia.os.ApplicationManager$Trigger"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 219
    .local v0, "cls":Ljava/lang/Class;
    const-string v5, "setSystemProperties"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 220
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_2

    const-string v4, "1"

    .line 221
    .local v4, "privateModeSwitch":Ljava/lang/String;
    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "sys.nubia.touping.nubiamirror"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "privateMode":Z
    .end local v4    # "privateModeSwitch":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 220
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cls":Ljava/lang/Class;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v3    # "privateMode":Z
    :cond_2
    :try_start_1
    const-string v4, "0"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
