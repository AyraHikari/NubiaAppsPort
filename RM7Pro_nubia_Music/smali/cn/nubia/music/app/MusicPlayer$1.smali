.class final Lcn/nubia/music/app/MusicPlayer$1;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/app/MusicPlayer;->addNetToNowingPlaying(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcn/nubia/music/app/MusicPlayer$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 515
    iget-object v0, p0, Lcn/nubia/music/app/MusicPlayer$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->getAudioIdBySongId(Ljava/lang/String;)J

    move-result-wide v0

    .line 516
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/nubia/music/app/MusicPlayer;->enqueueLocal(JI)V

    .line 517
    return-void
.end method
