.class Lcn/nubia/music/ui/MiniMusicPlayBar$a;
.super Ljava/util/TimerTask;
.source "MiniMusicPlayBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/ui/MiniMusicPlayBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/ui/MiniMusicPlayBar;


# direct methods
.method private constructor <init>(Lcn/nubia/music/ui/MiniMusicPlayBar;)V
    .locals 0

    .prologue
    .line 704
    iput-object p1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$a;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/music/ui/MiniMusicPlayBar;Lcn/nubia/music/ui/MiniMusicPlayBar$1;)V
    .locals 0

    .prologue
    .line 704
    invoke-direct {p0, p1}, Lcn/nubia/music/ui/MiniMusicPlayBar$a;-><init>(Lcn/nubia/music/ui/MiniMusicPlayBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 708
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$a;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$100(Lcn/nubia/music/ui/MiniMusicPlayBar;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$a;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$1500(Lcn/nubia/music/ui/MiniMusicPlayBar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$a;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$1600(Lcn/nubia/music/ui/MiniMusicPlayBar;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 710
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$a;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$100(Lcn/nubia/music/ui/MiniMusicPlayBar;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 711
    iput v1, v0, Landroid/os/Message;->what:I

    .line 712
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$a;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$1600(Lcn/nubia/music/ui/MiniMusicPlayBar;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 714
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$a;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$1700(Lcn/nubia/music/ui/MiniMusicPlayBar;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$a;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$1700(Lcn/nubia/music/ui/MiniMusicPlayBar;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 717
    :cond_1
    return-void
.end method
