.class Lcn/nubia/music/activity/MediaPlaybackActivity$13;
.super Landroid/os/Handler;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/MediaPlaybackActivity;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$13;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 418
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 421
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$13;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1800(Lcn/nubia/music/activity/MediaPlaybackActivity;)J

    move-result-wide v0

    .line 422
    iget-object v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$13;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v2, v0, v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1900(Lcn/nubia/music/activity/MediaPlaybackActivity;J)V

    goto :goto_0

    .line 429
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$13;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$13;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$13;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    .line 434
    invoke-static {v1}, Lcn/nubia/music/utils/MusicUtils;->BeanMusicDialogBuilder(Landroid/content/Context;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 435
    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    .line 433
    invoke-static {v0, v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$2102(Lcn/nubia/music/activity/MediaPlaybackActivity;Lcn/nubia/commonui/app/AlertDialog;)Lcn/nubia/commonui/app/AlertDialog;

    .line 436
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$13;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$2100(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$13;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$600(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0108

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$13;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$2100(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    iget-object v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$13;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    .line 438
    invoke-static {v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$600(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0107

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcn/nubia/music/activity/MediaPlaybackActivity$13$1;

    invoke-direct {v3, p0}, Lcn/nubia/music/activity/MediaPlaybackActivity$13$1;-><init>(Lcn/nubia/music/activity/MediaPlaybackActivity$13;)V

    .line 437
    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 444
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$13;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$2100(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    goto :goto_0

    .line 418
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
