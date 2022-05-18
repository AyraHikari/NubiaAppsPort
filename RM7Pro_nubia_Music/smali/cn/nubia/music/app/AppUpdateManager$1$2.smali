.class Lcn/nubia/music/app/AppUpdateManager$1$2;
.super Ljava/lang/Object;
.source "AppUpdateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/app/AppUpdateManager$1;->onDownloadComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/app/AppUpdateManager$1;


# direct methods
.method constructor <init>(Lcn/nubia/music/app/AppUpdateManager$1;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcn/nubia/music/app/AppUpdateManager$1$2;->a:Lcn/nubia/music/app/AppUpdateManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcn/nubia/music/app/AppUpdateManager$1$2;->a:Lcn/nubia/music/app/AppUpdateManager$1;

    iget-object v0, v0, Lcn/nubia/music/app/AppUpdateManager$1;->a:Lcn/nubia/music/app/AppUpdateManager;

    invoke-static {v0}, Lcn/nubia/music/app/AppUpdateManager;->access$200(Lcn/nubia/music/app/AppUpdateManager;)Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/app/AppUpdateManager$1$2;->a:Lcn/nubia/music/app/AppUpdateManager$1;

    iget-object v1, v1, Lcn/nubia/music/app/AppUpdateManager$1;->a:Lcn/nubia/music/app/AppUpdateManager;

    invoke-static {v1}, Lcn/nubia/music/app/AppUpdateManager;->access$100(Lcn/nubia/music/app/AppUpdateManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->getVersionData()Lcn/nubia/upgrade/model/VersionData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->install(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V

    .line 121
    return-void
.end method
