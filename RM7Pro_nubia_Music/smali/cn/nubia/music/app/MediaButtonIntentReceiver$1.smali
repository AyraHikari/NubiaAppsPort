.class final Lcn/nubia/music/app/MediaButtonIntentReceiver$1;
.super Landroid/os/Handler;
.source "MediaButtonIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/app/MediaButtonIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 56
    :pswitch_0
    invoke-static {}, Lcn/nubia/music/app/MediaButtonIntentReceiver;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 58
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 59
    const-string v2, "autoshuffle"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-class v2, Lcn/nubia/music/MainActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 61
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 63
    const/4 v0, 0x1

    invoke-static {v0}, Lcn/nubia/music/app/MediaButtonIntentReceiver;->access$002(Z)Z

    goto :goto_0

    .line 67
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/music/app/MediaButtonIntentReceiver$a;

    .line 68
    if-eqz v0, :cond_0

    .line 69
    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcn/nubia/music/app/MediaButtonIntentReceiver$a;->a:Landroid/content/Context;

    const-class v3, Lcn/nubia/music/MediaPlaybackService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    iget-object v2, v0, Lcn/nubia/music/app/MediaButtonIntentReceiver$a;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    iget-object v2, v0, Lcn/nubia/music/app/MediaButtonIntentReceiver$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    iget-object v0, v0, Lcn/nubia/music/app/MediaButtonIntentReceiver$a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/nubia/music/utils/AdaptationUtil;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 73
    invoke-static {v4, v5}, Lcn/nubia/music/app/MediaButtonIntentReceiver;->access$102(J)J

    .line 74
    invoke-static {v4, v5}, Lcn/nubia/music/app/MediaButtonIntentReceiver;->access$202(J)J

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
