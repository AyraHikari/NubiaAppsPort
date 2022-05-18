.class Lcn/nubia/video/player/nubiaplayer/SeekBarView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SeekBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/nubiaplayer/SeekBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$2;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 107
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$2;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {v1, v0, p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->whichScrubber(II)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$2;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    iget-boolean p1, p1, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsLongPress:Z

    if-nez p1, :cond_1

    .line 108
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$2;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    iput-boolean v0, p1, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsLongPress:Z

    .line 109
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$2;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    iget v1, p1, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$2;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    .line 110
    invoke-virtual {v2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$2;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {v2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$2;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    iget v2, v2, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mClipLeftDrawableW:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 109
    invoke-virtual {p1, v1, v2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getTime(J)J

    move-result-wide v1

    iput-wide v1, p1, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressTime:J

    .line 112
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$2;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$000(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$2;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$000(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$2;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    iget-wide v1, v1, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressTime:J

    long-to-int v1, v1

    invoke-interface {p1, v0, v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;->onLongPress(ZI)V

    .line 113
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$2;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    iget v0, p1, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPlayedX:I

    iput v0, p1, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mPrePlayedX:I

    .line 114
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$2;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    const/4 v0, 0x0

    iput v0, p1, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressX:I

    .line 115
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$2;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    iget v0, p1, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mScreenWidth:I

    iput v0, p1, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongPressMaxW:I

    .line 116
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$2;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->invalidate()V

    :cond_1
    return-void
.end method
