.class Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;
.super Ljava/lang/Object;
.source "NubiaPlayerView.java"

# interfaces
.implements Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsUserChanged:Z

.field private mNeedResume:Z

.field private mProgress:I

.field private mSeekPos:I

.field private mTimeCounter:Lcn/nubia/gallery3d/video/TimeCounter;

.field final synthetic this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 121
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->mIsUserChanged:Z

    .line 122
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->mNeedResume:Z

    .line 123
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->mProgress:I

    const/4 p1, -0x1

    .line 124
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->mSeekPos:I

    .line 125
    new-instance p1, Lcn/nubia/gallery3d/video/TimeCounter;

    invoke-direct {p1}, Lcn/nubia/gallery3d/video/TimeCounter;-><init>()V

    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->mTimeCounter:Lcn/nubia/gallery3d/video/TimeCounter;

    return-void
.end method


# virtual methods
.method public onClipChanged(ZI)V
    .locals 3

    .line 162
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$802(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;I)I

    .line 163
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$1300(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 164
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$1400(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->pause()V

    .line 166
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->mTimeCounter:Lcn/nubia/gallery3d/video/TimeCounter;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/TimeCounter;->count100Ms()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 167
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$1500(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/VideoView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/video/player/VideoView;->seekTo(I)V

    .line 168
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->mSeekPos:I

    .line 170
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mHeadClip:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSeekbar:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getClipLeftTime()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$1600(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;Landroid/widget/TextView;I)V

    .line 171
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mEndClip:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSeekbar:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getClipRightTime()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$1600(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;Landroid/widget/TextView;I)V

    .line 172
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mClipTimp:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSeekbar:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getClipRightTime()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v2}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSeekbar:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {v2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getClipLeftTime()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$1600(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;Landroid/widget/TextView;I)V

    .line 173
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->mProgress:I

    const/4 p1, 0x1

    .line 174
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->mIsUserChanged:Z

    return-void
.end method

.method public onClipPlayEnd(I)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$2100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->pause()V

    .line 200
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v0, p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$802(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;I)I

    return-void
.end method

.method public onIsClip(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 207
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$802(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;I)I

    .line 209
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v0, p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$402(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;Z)Z

    .line 211
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSliderBar:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->enabled(Z)V

    return-void
.end method

.method public onLongPress(ZI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 181
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$1700(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 182
    iput-boolean v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->mNeedResume:Z

    .line 183
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$1800(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->pause()V

    .line 185
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$1900(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)V

    .line 186
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSliderBar:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {p1, v0, p2}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->setLongPress(II)V

    goto :goto_0

    .line 188
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSliderBar:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {p1, v1, p2}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->setLongPress(II)V

    .line 189
    iget-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->mNeedResume:Z

    if-eqz p1, :cond_2

    .line 190
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$2000(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->resume()V

    .line 191
    iput-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->mNeedResume:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onProgressChanged(IZ)V
    .locals 0

    if-eqz p2, :cond_1

    .line 150
    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->mTimeCounter:Lcn/nubia/gallery3d/video/TimeCounter;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/video/TimeCounter;->count100Ms()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 151
    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p2}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$1200(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/VideoView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/nubia/video/player/VideoView;->seekTo(I)V

    .line 152
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->mSeekPos:I

    :cond_0
    const/4 p2, 0x1

    .line 154
    iput-boolean p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->mIsUserChanged:Z

    .line 155
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->mProgress:I

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(I)V
    .locals 1

    .line 140
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$802(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;I)I

    .line 141
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->mSeekPos:I

    const/4 p1, 0x0

    .line 142
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->mProgress:I

    .line 143
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->mIsUserChanged:Z

    return-void
.end method

.method public onStopTrackingTouch(I)V
    .locals 2

    .line 129
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->mIsUserChanged:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->mProgress:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->mSeekPos:I

    if-eq v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$1000(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/VideoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/video/player/VideoView;->seekTo(I)V

    const/4 p1, 0x0

    .line 131
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->mIsUserChanged:Z

    .line 132
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$1100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)V

    :cond_0
    const/4 p1, -0x1

    .line 134
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;->mSeekPos:I

    return-void
.end method
