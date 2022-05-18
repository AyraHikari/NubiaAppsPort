.class public Lcn/nubia/music/activity/ScanningProgressActivity;
.super Lcn/nubia/music/activity/BaseActivity;
.source "ScanningProgressActivity.java"


# static fields
.field private static final CHECK:I


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseActivity;-><init>()V

    .line 36
    new-instance v0, Lcn/nubia/music/activity/ScanningProgressActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/ScanningProgressActivity$1;-><init>(Lcn/nubia/music/activity/ScanningProgressActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/ScanningProgressActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 70
    invoke-super {p0, p1}, Lcn/nubia/music/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/ScanningProgressActivity;->setVolumeControlStream(I)V

    .line 74
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const v0, 0x7f030082

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/ScanningProgressActivity;->setContentView(I)V

    .line 79
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/music/activity/ScanningProgressActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 81
    invoke-virtual {p0, v2}, Lcn/nubia/music/activity/ScanningProgressActivity;->setResult(I)V

    .line 83
    iget-object v0, p0, Lcn/nubia/music/activity/ScanningProgressActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcn/nubia/music/activity/ScanningProgressActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 85
    return-void

    .line 77
    :cond_0
    const v0, 0x7f030083

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/ScanningProgressActivity;->setContentView(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcn/nubia/music/activity/ScanningProgressActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 90
    invoke-super {p0}, Lcn/nubia/music/activity/BaseActivity;->onDestroy()V

    .line 91
    return-void
.end method
