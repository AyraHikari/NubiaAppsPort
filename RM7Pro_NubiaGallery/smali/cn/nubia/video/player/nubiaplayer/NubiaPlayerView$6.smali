.class Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;
.super Ljava/lang/Object;
.source "NubiaPlayerView.java"

# interfaces
.implements Lcn/nubia/video/player/nubiaplayer/SliderBar$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mTimeCounter:Lcn/nubia/gallery3d/video/TimeCounter;

.field final synthetic this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance p1, Lcn/nubia/gallery3d/video/TimeCounter;

    invoke-direct {p1}, Lcn/nubia/gallery3d/video/TimeCounter;-><init>()V

    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;->mTimeCounter:Lcn/nubia/gallery3d/video/TimeCounter;

    return-void
.end method

.method private pauseAndSeek(I)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$2200(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$2300(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->pause()V

    .line 222
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;->mTimeCounter:Lcn/nubia/gallery3d/video/TimeCounter;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/TimeCounter;->count100Ms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$2400(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/VideoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/video/player/VideoView;->seekTo(I)V

    .line 224
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$1100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onLongPress(II)V
    .locals 0

    .line 250
    invoke-direct {p0, p2}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;->pauseAndSeek(I)V

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSeekbar:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->setSpeedIsLong(Z)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSeekbar:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {p1, p2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->setSpeedIsLong(Z)V

    .line 259
    :goto_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->show()V

    return-void
.end method

.method public onMove(I)V
    .locals 1

    .line 231
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;->pauseAndSeek(I)V

    .line 232
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$2500(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSliderBar:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getStartTime()I

    move-result p1

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$500(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0xa

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSliderBar:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getEndTime()I

    move-result p1

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$500(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0xa

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    .line 233
    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$2500(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSliderBar:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getStartTime()I

    move-result p1

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$500(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSliderBar:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getEndTime()I

    move-result p1

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$500(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    if-eq p1, v0, :cond_2

    .line 234
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$600(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 235
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$602(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;Z)Z

    goto :goto_0

    .line 239
    :cond_2
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$600(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 240
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$602(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;Z)Z

    .line 244
    :cond_3
    :goto_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->show()V

    return-void
.end method
