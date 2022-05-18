.class Lcn/nubia/music/app/scan/MusicScanService$d;
.super Lcn/nubia/music/app/scan/IMusicScanService$Stub;
.source "MusicScanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/app/scan/MusicScanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/music/app/scan/MusicScanService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcn/nubia/music/app/scan/MusicScanService;)V
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0}, Lcn/nubia/music/app/scan/IMusicScanService$Stub;-><init>()V

    .line 254
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$d;->a:Ljava/lang/ref/WeakReference;

    .line 255
    return-void
.end method


# virtual methods
.method public startScan()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$d;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/app/scan/MusicScanService;

    invoke-virtual {v0}, Lcn/nubia/music/app/scan/MusicScanService;->startScanService()V

    .line 261
    :cond_0
    return-void
.end method

.method public stopScan()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$d;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/app/scan/MusicScanService;

    invoke-virtual {v0}, Lcn/nubia/music/app/scan/MusicScanService;->stopScan()V

    .line 266
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/app/scan/MusicScanService;

    invoke-virtual {v0}, Lcn/nubia/music/app/scan/MusicScanService;->stopSelf()V

    .line 268
    :cond_0
    return-void
.end method
