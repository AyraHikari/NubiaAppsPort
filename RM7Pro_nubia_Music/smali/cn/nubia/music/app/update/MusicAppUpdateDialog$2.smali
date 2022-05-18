.class final Lcn/nubia/music/app/update/MusicAppUpdateDialog$2;
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
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;

.field final synthetic c:Lcn/nubia/upgrade/model/VersionData;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;Lcn/nubia/upgrade/model/VersionData;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcn/nubia/music/app/update/MusicAppUpdateDialog$2;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcn/nubia/music/app/update/MusicAppUpdateDialog$2;->b:Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;

    iput-object p3, p0, Lcn/nubia/music/app/update/MusicAppUpdateDialog$2;->c:Lcn/nubia/upgrade/model/VersionData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lcn/nubia/music/utils/NetworkHelper;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p0, Lcn/nubia/music/app/update/MusicAppUpdateDialog$2;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcn/nubia/music/app/AppUpdateManager;->getInstance(Landroid/content/Context;)Lcn/nubia/music/app/AppUpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/app/update/MusicAppUpdateDialog$2;->b:Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;

    invoke-virtual {v0, v1}, Lcn/nubia/music/app/AppUpdateManager;->setListener(Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;)Lcn/nubia/music/app/AppUpdateManager;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcn/nubia/music/app/AppUpdateManager;->isUpgrading()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcn/nubia/music/app/update/MusicAppUpdateDialog$2;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcn/nubia/music/app/AppUpdateManager;->getInstance(Landroid/content/Context;)Lcn/nubia/music/app/AppUpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/app/update/MusicAppUpdateDialog$2;->b:Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;

    invoke-virtual {v0, v1}, Lcn/nubia/music/app/AppUpdateManager;->setListener(Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;)Lcn/nubia/music/app/AppUpdateManager;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcn/nubia/music/app/AppUpdateManager;->startUpdate()V

    .line 50
    iget-object v0, p0, Lcn/nubia/music/app/update/MusicAppUpdateDialog$2;->c:Lcn/nubia/upgrade/model/VersionData;

    invoke-virtual {v0}, Lcn/nubia/upgrade/model/VersionData;->isForce()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/app/update/MusicAppUpdateDialog$2;->a:Landroid/app/Activity;

    const v1, 0x7f0b013e

    invoke-static {v0, v1}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    goto :goto_0

    .line 57
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/app/update/MusicAppUpdateDialog$2;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcn/nubia/music/app/AppUpdateManager;->getInstance(Landroid/content/Context;)Lcn/nubia/music/app/AppUpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/app/update/MusicAppUpdateDialog$2;->b:Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;

    invoke-virtual {v0, v1}, Lcn/nubia/music/app/AppUpdateManager;->setListener(Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;)Lcn/nubia/music/app/AppUpdateManager;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcn/nubia/music/app/AppUpdateManager;->installIfApkExits()Z

    move-result v0

    if-nez v0, :cond_3

    .line 59
    iget-object v0, p0, Lcn/nubia/music/app/update/MusicAppUpdateDialog$2;->a:Landroid/app/Activity;

    const v1, 0x7f0b013d

    invoke-static {v0, v1}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    goto :goto_0

    .line 61
    :cond_3
    iget-object v0, p0, Lcn/nubia/music/app/update/MusicAppUpdateDialog$2;->c:Lcn/nubia/upgrade/model/VersionData;

    invoke-virtual {v0}, Lcn/nubia/upgrade/model/VersionData;->isForce()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0
.end method
