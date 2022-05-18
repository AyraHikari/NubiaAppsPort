.class Lcn/nubia/music/app/scan/MusicScanService$1;
.super Ljava/lang/Object;
.source "MusicScanService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/app/scan/MusicScanService;->notifyScanComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/app/scan/MusicScanService;


# direct methods
.method constructor <init>(Lcn/nubia/music/app/scan/MusicScanService;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcn/nubia/music/app/scan/MusicScanService$1;->a:Lcn/nubia/music/app/scan/MusicScanService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$1;->a:Lcn/nubia/music/app/scan/MusicScanService;

    invoke-virtual {v0}, Lcn/nubia/music/app/scan/MusicScanService;->stopSelf()V

    .line 208
    return-void
.end method
