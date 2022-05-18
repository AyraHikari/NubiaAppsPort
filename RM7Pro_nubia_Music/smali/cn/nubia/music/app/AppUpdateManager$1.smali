.class Lcn/nubia/music/app/AppUpdateManager$1;
.super Ljava/lang/Object;
.source "AppUpdateManager.java"

# interfaces
.implements Lcn/nubia/upgrade/http/IDownLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/app/AppUpdateManager;
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
    .line 37
    iput-object p1, p0, Lcn/nubia/music/app/AppUpdateManager$1;->a:Lcn/nubia/music/app/AppUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcn/nubia/music/app/AppUpdateManager$1;->a:Lcn/nubia/music/app/AppUpdateManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/music/app/AppUpdateManager;->access$002(Lcn/nubia/music/app/AppUpdateManager;Z)Z

    .line 115
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/music/app/AppUpdateManager$1;->a:Lcn/nubia/music/app/AppUpdateManager;

    invoke-static {v1}, Lcn/nubia/music/app/AppUpdateManager;->access$100(Lcn/nubia/music/app/AppUpdateManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcn/nubia/music/app/AppUpdateManager$1$2;

    invoke-direct {v1, p0}, Lcn/nubia/music/app/AppUpdateManager$1$2;-><init>(Lcn/nubia/music/app/AppUpdateManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    return-void
.end method

.method public onDownloadError(I)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download Error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 68
    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3ee

    if-eq p1, v0, :cond_0

    .line 70
    iget-object v0, p0, Lcn/nubia/music/app/AppUpdateManager$1;->a:Lcn/nubia/music/app/AppUpdateManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcn/nubia/music/app/AppUpdateManager;->access$002(Lcn/nubia/music/app/AppUpdateManager;Z)Z

    .line 73
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 100
    :goto_0
    if-eq v0, v1, :cond_1

    .line 101
    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/music/app/AppUpdateManager$1;->a:Lcn/nubia/music/app/AppUpdateManager;

    invoke-static {v2}, Lcn/nubia/music/app/AppUpdateManager;->access$100(Lcn/nubia/music/app/AppUpdateManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcn/nubia/music/app/AppUpdateManager$1$1;

    invoke-direct {v2, p0, v0}, Lcn/nubia/music/app/AppUpdateManager$1$1;-><init>(Lcn/nubia/music/app/AppUpdateManager$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    :cond_1
    return-void

    .line 75
    :sswitch_0
    const v0, 0x7f0b012c

    .line 76
    goto :goto_0

    .line 78
    :sswitch_1
    const v0, 0x7f0b0137

    .line 79
    goto :goto_0

    .line 81
    :sswitch_2
    const v0, 0x7f0b01e4

    .line 82
    goto :goto_0

    .line 84
    :sswitch_3
    const v0, 0x7f0b0069

    .line 85
    goto :goto_0

    .line 88
    :sswitch_4
    const v0, 0x7f0b013e

    .line 89
    goto :goto_0

    .line 92
    :sswitch_5
    const v0, 0x7f0b013f

    .line 93
    goto :goto_0

    .line 95
    :sswitch_6
    const v0, 0x7f0b0019

    .line 96
    goto :goto_0

    .line 73
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x3ea -> :sswitch_4
        0x3eb -> :sswitch_5
        0x3ec -> :sswitch_5
        0x3ed -> :sswitch_6
        0x3ee -> :sswitch_4
        0x3ef -> :sswitch_0
        0x3f0 -> :sswitch_3
        0x7d5 -> :sswitch_2
    .end sparse-switch
.end method

.method public onDownloadPause()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcn/nubia/music/app/AppUpdateManager$1;->a:Lcn/nubia/music/app/AppUpdateManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/music/app/AppUpdateManager;->access$002(Lcn/nubia/music/app/AppUpdateManager;Z)Z

    .line 63
    return-void
.end method

.method public onDownloadProgress(I)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onResumeDownload()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/music/app/AppUpdateManager$1;->a:Lcn/nubia/music/app/AppUpdateManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/music/app/AppUpdateManager;->access$002(Lcn/nubia/music/app/AppUpdateManager;Z)Z

    .line 51
    return-void
.end method

.method public onStartDownload()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcn/nubia/music/app/AppUpdateManager$1;->a:Lcn/nubia/music/app/AppUpdateManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/music/app/AppUpdateManager;->access$002(Lcn/nubia/music/app/AppUpdateManager;Z)Z

    .line 44
    return-void
.end method
