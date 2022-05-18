.class final Lcn/nubia/music/app/scan/MusicScanProgress$1;
.super Ljava/lang/Object;
.source "MusicScanProgress.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/app/scan/MusicScanProgress;->showScanProgress(Landroid/content/Context;Lcn/nubia/music/app/scan/IMusicScanService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/app/scan/IMusicScanService;


# direct methods
.method constructor <init>(Lcn/nubia/music/app/scan/IMusicScanService;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcn/nubia/music/app/scan/MusicScanProgress$1;->a:Lcn/nubia/music/app/scan/IMusicScanService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 111
    const/4 v0, 0x1

    invoke-static {v0}, Lcn/nubia/music/app/scan/MusicScanProgress;->access$002(Z)Z

    .line 113
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanProgress$1;->a:Lcn/nubia/music/app/scan/IMusicScanService;

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "onClick, stop scan"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcn/nubia/music/app/scan/MusicScanProgress;->dismissScanProgress()V

    .line 116
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanProgress$1;->a:Lcn/nubia/music/app/scan/IMusicScanService;

    invoke-interface {v0}, Lcn/nubia/music/app/scan/IMusicScanService;->stopScan()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
