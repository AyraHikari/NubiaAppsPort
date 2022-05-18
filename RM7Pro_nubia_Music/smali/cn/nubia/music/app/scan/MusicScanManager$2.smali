.class Lcn/nubia/music/app/scan/MusicScanManager$2;
.super Ljava/lang/Object;
.source "MusicScanManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/app/scan/MusicScanManager;->scanLocalMusic(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/app/scan/MusicScanManager;


# direct methods
.method constructor <init>(Lcn/nubia/music/app/scan/MusicScanManager;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcn/nubia/music/app/scan/MusicScanManager$2;->a:Lcn/nubia/music/app/scan/MusicScanManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 154
    :try_start_0
    invoke-static {}, Lcn/nubia/music/app/scan/MusicScanFoundFolder;->clear()V

    .line 155
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanManager$2;->a:Lcn/nubia/music/app/scan/MusicScanManager;

    invoke-static {v0}, Lcn/nubia/music/app/scan/MusicScanManager;->access$300(Lcn/nubia/music/app/scan/MusicScanManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/app/scan/MusicScanService;->setUiHandler(Landroid/os/Handler;)V

    .line 156
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanManager$2;->a:Lcn/nubia/music/app/scan/MusicScanManager;

    invoke-static {v0}, Lcn/nubia/music/app/scan/MusicScanManager;->access$100(Lcn/nubia/music/app/scan/MusicScanManager;)Lcn/nubia/music/app/scan/IMusicScanService;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/music/app/scan/IMusicScanService;->startScan()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
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
