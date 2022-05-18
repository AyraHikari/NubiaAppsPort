.class Lcn/nubia/music/app/scan/MusicScanManager$1;
.super Ljava/lang/Object;
.source "MusicScanManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/app/scan/MusicScanManager;
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
    .line 66
    iput-object p1, p0, Lcn/nubia/music/app/scan/MusicScanManager$1;->a:Lcn/nubia/music/app/scan/MusicScanManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected() ComponentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanManager$1;->a:Lcn/nubia/music/app/scan/MusicScanManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/music/app/scan/MusicScanManager;->access$002(Lcn/nubia/music/app/scan/MusicScanManager;Z)Z

    .line 79
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanManager$1;->a:Lcn/nubia/music/app/scan/MusicScanManager;

    invoke-static {p2}, Lcn/nubia/music/app/scan/IMusicScanService$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/music/app/scan/IMusicScanService;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/app/scan/MusicScanManager;->access$102(Lcn/nubia/music/app/scan/MusicScanManager;Lcn/nubia/music/app/scan/IMusicScanService;)Lcn/nubia/music/app/scan/IMusicScanService;

    .line 81
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanManager$1;->a:Lcn/nubia/music/app/scan/MusicScanManager;

    invoke-static {v0}, Lcn/nubia/music/app/scan/MusicScanManager;->access$200(Lcn/nubia/music/app/scan/MusicScanManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanManager$1;->a:Lcn/nubia/music/app/scan/MusicScanManager;

    invoke-static {v0}, Lcn/nubia/music/app/scan/MusicScanManager;->access$300(Lcn/nubia/music/app/scan/MusicScanManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 83
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 84
    iget-object v1, p0, Lcn/nubia/music/app/scan/MusicScanManager$1;->a:Lcn/nubia/music/app/scan/MusicScanManager;

    invoke-static {v1}, Lcn/nubia/music/app/scan/MusicScanManager;->access$300(Lcn/nubia/music/app/scan/MusicScanManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanManager$1;->a:Lcn/nubia/music/app/scan/MusicScanManager;

    invoke-static {v0}, Lcn/nubia/music/app/scan/MusicScanManager;->access$400(Lcn/nubia/music/app/scan/MusicScanManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanManager$1;->a:Lcn/nubia/music/app/scan/MusicScanManager;

    invoke-static {v0}, Lcn/nubia/music/app/scan/MusicScanManager;->access$500(Lcn/nubia/music/app/scan/MusicScanManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanManager$1;->a:Lcn/nubia/music/app/scan/MusicScanManager;

    iget-object v1, p0, Lcn/nubia/music/app/scan/MusicScanManager$1;->a:Lcn/nubia/music/app/scan/MusicScanManager;

    invoke-static {v1}, Lcn/nubia/music/app/scan/MusicScanManager;->access$600(Lcn/nubia/music/app/scan/MusicScanManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/music/app/scan/MusicScanManager;->access$700(Lcn/nubia/music/app/scan/MusicScanManager;I)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected() ComponentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanManager$1;->a:Lcn/nubia/music/app/scan/MusicScanManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/music/app/scan/MusicScanManager;->access$002(Lcn/nubia/music/app/scan/MusicScanManager;Z)Z

    .line 72
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanManager$1;->a:Lcn/nubia/music/app/scan/MusicScanManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/music/app/scan/MusicScanManager;->access$102(Lcn/nubia/music/app/scan/MusicScanManager;Lcn/nubia/music/app/scan/IMusicScanService;)Lcn/nubia/music/app/scan/IMusicScanService;

    .line 73
    return-void
.end method
