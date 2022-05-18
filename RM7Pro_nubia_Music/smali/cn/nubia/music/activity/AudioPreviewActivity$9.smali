.class Lcn/nubia/music/activity/AudioPreviewActivity$9;
.super Ljava/lang/Object;
.source "AudioPreviewActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 603
    iput-object p1, p0, Lcn/nubia/music/activity/AudioPreviewActivity$9;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .prologue
    .line 609
    if-nez p3, :cond_0

    .line 615
    :goto_0
    return-void

    .line 613
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$9;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0, p2}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$2202(Lcn/nubia/music/activity/AudioPreviewActivity;I)I

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$9;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$2102(Lcn/nubia/music/activity/AudioPreviewActivity;Z)Z

    .line 606
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$9;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$200(Lcn/nubia/music/activity/AudioPreviewActivity;)Lcn/nubia/music/activity/AudioPreviewActivity$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$9;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$200(Lcn/nubia/music/activity/AudioPreviewActivity;)Lcn/nubia/music/activity/AudioPreviewActivity$a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/AudioPreviewActivity$9;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$2200(Lcn/nubia/music/activity/AudioPreviewActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->seekTo(I)V

    .line 623
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$9;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$2102(Lcn/nubia/music/activity/AudioPreviewActivity;Z)Z

    .line 624
    return-void
.end method
