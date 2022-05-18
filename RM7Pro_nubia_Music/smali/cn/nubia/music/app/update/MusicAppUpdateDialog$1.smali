.class final Lcn/nubia/music/app/update/MusicAppUpdateDialog$1;
.super Ljava/lang/Object;
.source "MusicAppUpdateDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/app/update/MusicAppUpdateDialog;->showUpdateInfoDialog(Landroid/app/Activity;Lcn/nubia/upgrade/model/VersionData;Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/upgrade/model/VersionData;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;


# direct methods
.method constructor <init>(Lcn/nubia/upgrade/model/VersionData;Landroid/app/Activity;Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcn/nubia/music/app/update/MusicAppUpdateDialog$1;->a:Lcn/nubia/upgrade/model/VersionData;

    iput-object p2, p0, Lcn/nubia/music/app/update/MusicAppUpdateDialog$1;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcn/nubia/music/app/update/MusicAppUpdateDialog$1;->c:Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcn/nubia/music/app/update/MusicAppUpdateDialog$1;->a:Lcn/nubia/upgrade/model/VersionData;

    invoke-virtual {v0}, Lcn/nubia/upgrade/model/VersionData;->isForce()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcn/nubia/music/app/update/MusicAppUpdateDialog$1;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcn/nubia/music/app/AppUpdateManager;->getInstance(Landroid/content/Context;)Lcn/nubia/music/app/AppUpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/app/update/MusicAppUpdateDialog$1;->c:Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;

    invoke-virtual {v0, v1}, Lcn/nubia/music/app/AppUpdateManager;->setListener(Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;)Lcn/nubia/music/app/AppUpdateManager;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcn/nubia/music/app/AppUpdateManager;->pauseDownload()V

    .line 75
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->exitApp()V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
