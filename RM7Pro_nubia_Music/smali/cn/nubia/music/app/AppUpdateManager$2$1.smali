.class Lcn/nubia/music/app/AppUpdateManager$2$1;
.super Ljava/lang/Object;
.source "AppUpdateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/app/AppUpdateManager$2;->onGetNewVersion(Lcn/nubia/upgrade/model/VersionData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/upgrade/model/VersionData;

.field final synthetic b:Lcn/nubia/music/app/AppUpdateManager$2;


# direct methods
.method constructor <init>(Lcn/nubia/music/app/AppUpdateManager$2;Lcn/nubia/upgrade/model/VersionData;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcn/nubia/music/app/AppUpdateManager$2$1;->b:Lcn/nubia/music/app/AppUpdateManager$2;

    iput-object p2, p0, Lcn/nubia/music/app/AppUpdateManager$2$1;->a:Lcn/nubia/upgrade/model/VersionData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcn/nubia/music/app/AppUpdateManager$2$1;->b:Lcn/nubia/music/app/AppUpdateManager$2;

    iget-object v0, v0, Lcn/nubia/music/app/AppUpdateManager$2;->a:Lcn/nubia/music/app/AppUpdateManager;

    invoke-static {v0}, Lcn/nubia/music/app/AppUpdateManager;->access$300(Lcn/nubia/music/app/AppUpdateManager;)Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/app/AppUpdateManager$2$1;->a:Lcn/nubia/upgrade/model/VersionData;

    invoke-interface {v0, v1}, Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;->showUpdateInfo(Lcn/nubia/upgrade/model/VersionData;)V

    .line 245
    return-void
.end method
