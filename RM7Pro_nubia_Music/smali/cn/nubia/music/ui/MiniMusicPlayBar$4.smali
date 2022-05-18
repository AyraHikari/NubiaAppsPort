.class Lcn/nubia/music/ui/MiniMusicPlayBar$4;
.super Landroid/os/Handler;
.source "MiniMusicPlayBar.java"


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
    .line 653
    iput-object p1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$4;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 657
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 658
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 665
    :goto_0
    return-void

    .line 660
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$4;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$300(Lcn/nubia/music/ui/MiniMusicPlayBar;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b012f

    invoke-static {v0, v1}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    goto :goto_0

    .line 658
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
