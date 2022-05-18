.class Lcn/nubia/music/activity/AudioPreviewActivity$b;
.super Ljava/lang/Object;
.source "AudioPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/AudioPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/AudioPreviewActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/AudioPreviewActivity;)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcn/nubia/music/activity/AudioPreviewActivity$b;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 579
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$b;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$200(Lcn/nubia/music/activity/AudioPreviewActivity;)Lcn/nubia/music/activity/AudioPreviewActivity$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$b;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$2100(Lcn/nubia/music/activity/AudioPreviewActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$b;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$1000(Lcn/nubia/music/activity/AudioPreviewActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$b;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$1100(Lcn/nubia/music/activity/AudioPreviewActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/AudioPreviewActivity$b;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$200(Lcn/nubia/music/activity/AudioPreviewActivity;)Lcn/nubia/music/activity/AudioPreviewActivity$a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 582
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$b;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$1500(Lcn/nubia/music/activity/AudioPreviewActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 583
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$b;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$1500(Lcn/nubia/music/activity/AudioPreviewActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/nubia/music/activity/AudioPreviewActivity$b;

    iget-object v2, p0, Lcn/nubia/music/activity/AudioPreviewActivity$b;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-direct {v1, v2}, Lcn/nubia/music/activity/AudioPreviewActivity$b;-><init>(Lcn/nubia/music/activity/AudioPreviewActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 584
    return-void
.end method
