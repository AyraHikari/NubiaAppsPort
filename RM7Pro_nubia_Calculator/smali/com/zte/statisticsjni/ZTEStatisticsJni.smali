.class public Lcom/zte/statisticsjni/ZTEStatisticsJni;
.super Ljava/lang/Object;
.source "ZTEStatisticsJni.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImeiExternal(Landroid/content/Context;Lcom/zte/statisticsjni/JniCallback;)V
    .locals 3

    .line 19
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.zdmdaemon.GET_DEVICE_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.zte.zdmdaemon"

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ZTEStatisticsJni"

    const-string v2, "lwp enter getImeiExternal"

    .line 21
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :try_start_0
    new-instance v1, Lcom/zte/statisticsjni/ZTEStatisticsJni$1;

    invoke-direct {v1, p1, p0}, Lcom/zte/statisticsjni/ZTEStatisticsJni$1;-><init>(Lcom/zte/statisticsjni/JniCallback;Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ZTEStatisticsJni"

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lwp getGlobalInfodId e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
