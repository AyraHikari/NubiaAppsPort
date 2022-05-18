.class Lcn/nubia/music/app/AppUpdateManager$2;
.super Ljava/lang/Object;
.source "AppUpdateManager.java"

# interfaces
.implements Lcn/nubia/upgrade/http/IGetVersionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/app/AppUpdateManager;->checkUpdate(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/app/AppUpdateManager;


# direct methods
.method constructor <init>(Lcn/nubia/music/app/AppUpdateManager;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcn/nubia/music/app/AppUpdateManager$2;->a:Lcn/nubia/music/app/AppUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update version onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public onGetNewVersion(Lcn/nubia/upgrade/model/VersionData;)V
    .locals 2

    .prologue
    .line 238
    const-string v0, "onGetNewVersion"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 239
    invoke-static {p1}, Lcn/nubia/music/utils/MusicUtils;->setVersionData(Lcn/nubia/upgrade/model/VersionData;)V

    .line 240
    iget-object v0, p0, Lcn/nubia/music/app/AppUpdateManager$2;->a:Lcn/nubia/music/app/AppUpdateManager;

    invoke-static {v0}, Lcn/nubia/music/app/AppUpdateManager;->access$300(Lcn/nubia/music/app/AppUpdateManager;)Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 241
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcn/nubia/music/app/AppUpdateManager$2$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/music/app/AppUpdateManager$2$1;-><init>(Lcn/nubia/music/app/AppUpdateManager$2;Lcn/nubia/upgrade/model/VersionData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 248
    :cond_0
    return-void
.end method

.method public onGetNoVersion()V
    .locals 1

    .prologue
    .line 228
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->clearVersionData()V

    .line 229
    const-string v0, "onGetNoVersion"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcn/nubia/music/app/AppUpdateManager$2;->a:Lcn/nubia/music/app/AppUpdateManager;

    invoke-static {v0}, Lcn/nubia/music/app/AppUpdateManager;->access$300(Lcn/nubia/music/app/AppUpdateManager;)Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcn/nubia/music/app/AppUpdateManager$2;->a:Lcn/nubia/music/app/AppUpdateManager;

    invoke-static {v0}, Lcn/nubia/music/app/AppUpdateManager;->access$300(Lcn/nubia/music/app/AppUpdateManager;)Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;->showNoVersion()V

    .line 233
    :cond_0
    return-void
.end method
