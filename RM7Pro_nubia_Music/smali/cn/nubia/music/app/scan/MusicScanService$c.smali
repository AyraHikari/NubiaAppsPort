.class Lcn/nubia/music/app/scan/MusicScanService$c;
.super Ljava/lang/Object;
.source "MusicScanService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/app/scan/MusicScanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field a:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Landroid/content/ServiceConnection;)V
    .locals 0

    .prologue
    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput-object p1, p0, Lcn/nubia/music/app/scan/MusicScanService$c;->a:Landroid/content/ServiceConnection;

    .line 506
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$c;->a:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$c;->a:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 512
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 515
    const-string v0, "onServiceDisconnected"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$c;->a:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$c;->a:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 519
    :cond_0
    return-void
.end method
