.class Lcn/nubia/music/ui/MiniMusicPlayBar$1;
.super Ljava/lang/Object;
.source "MiniMusicPlayBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/ui/MiniMusicPlayBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/ui/MiniMusicPlayBar;


# direct methods
.method constructor <init>(Lcn/nubia/music/ui/MiniMusicPlayBar;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$1;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$1;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$000(Lcn/nubia/music/ui/MiniMusicPlayBar;)J

    move-result-wide v0

    .line 119
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 120
    iget-object v2, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$1;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v2}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$100(Lcn/nubia/music/ui/MiniMusicPlayBar;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    :cond_0
    return-void
.end method
