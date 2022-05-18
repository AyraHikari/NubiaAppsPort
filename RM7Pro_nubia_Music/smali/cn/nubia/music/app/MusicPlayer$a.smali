.class Lcn/nubia/music/app/MusicPlayer$a;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/app/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Landroid/content/ServiceConnection;)V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    iput-object p1, p0, Lcn/nubia/music/app/MusicPlayer$a;->a:Landroid/content/ServiceConnection;

    .line 534
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 537
    invoke-static {p2}, Lcn/nubia/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/music/IMediaPlaybackService;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    .line 538
    const-string v0, "MusicPlayer onServiceConnected"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 539
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/music/app/MusicPlayer;->isBinded:Z

    .line 540
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->initAlbumArtCache()V

    .line 541
    iget-object v0, p0, Lcn/nubia/music/app/MusicPlayer$a;->a:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcn/nubia/music/app/MusicPlayer$a;->a:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 544
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 547
    const-string v0, "MusicPlayer onServiceDisconnected"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcn/nubia/music/app/MusicPlayer$a;->a:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcn/nubia/music/app/MusicPlayer$a;->a:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 551
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/music/app/MusicPlayer;->isBinded:Z

    .line 552
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    .line 553
    return-void
.end method
