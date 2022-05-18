.class Lcn/nubia/music/activity/AudioPreviewActivity$7;
.super Ljava/lang/Object;
.source "AudioPreviewActivity.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/AudioPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/AudioPreviewActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/AudioPreviewActivity;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcn/nubia/music/activity/AudioPreviewActivity$7;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 451
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$7;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0, v1}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$1602(Lcn/nubia/music/activity/AudioPreviewActivity;Z)Z

    .line 453
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$7;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$200(Lcn/nubia/music/activity/AudioPreviewActivity;)Lcn/nubia/music/activity/AudioPreviewActivity$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 456
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$7;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$1400(Lcn/nubia/music/activity/AudioPreviewActivity;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 492
    :goto_0
    return-void

    .line 459
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 491
    :cond_1
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$7;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$300(Lcn/nubia/music/activity/AudioPreviewActivity;)V

    goto :goto_0

    .line 461
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$7;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0, v1}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$1702(Lcn/nubia/music/activity/AudioPreviewActivity;Z)Z

    .line 462
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$7;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$200(Lcn/nubia/music/activity/AudioPreviewActivity;)Lcn/nubia/music/activity/AudioPreviewActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->pause()V

    goto :goto_1

    .line 467
    :pswitch_2
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$7;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$200(Lcn/nubia/music/activity/AudioPreviewActivity;)Lcn/nubia/music/activity/AudioPreviewActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$7;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$1702(Lcn/nubia/music/activity/AudioPreviewActivity;Z)Z

    .line 469
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$7;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$200(Lcn/nubia/music/activity/AudioPreviewActivity;)Lcn/nubia/music/activity/AudioPreviewActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 471
    :catch_0
    move-exception v0

    goto :goto_1

    .line 481
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$7;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$1800(Lcn/nubia/music/activity/AudioPreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 482
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$7;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$1900(Lcn/nubia/music/activity/AudioPreviewActivity;)V

    goto :goto_1

    .line 484
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$7;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$1700(Lcn/nubia/music/activity/AudioPreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$7;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0, v1}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$1702(Lcn/nubia/music/activity/AudioPreviewActivity;Z)Z

    .line 486
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$7;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$2000(Lcn/nubia/music/activity/AudioPreviewActivity;)V

    goto :goto_1

    .line 459
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
