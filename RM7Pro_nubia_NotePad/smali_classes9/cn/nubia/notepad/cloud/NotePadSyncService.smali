.class public Lcn/nubia/notepad/cloud/NotePadSyncService;
.super Landroid/app/Service;
.source "NotePadSyncService.java"


# instance fields
.field private mIBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncService;->mIBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 20
    new-instance v0, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/NotePadSyncAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/cloud/NotePadSyncService;->mIBinder:Landroid/os/IBinder;

    .line 21
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 32
    invoke-static {}, Lcn/nubia/notepad/cloud/NotePadCloudDbManager;->deleteUnuploadFile()V

    .line 33
    invoke-static {p0}, Lcn/nubia/notepad/utils/Util;->updateWidget(Landroid/content/Context;)V

    .line 34
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 35
    return-void
.end method
