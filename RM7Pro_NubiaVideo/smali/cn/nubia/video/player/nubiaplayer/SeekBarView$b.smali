.class Lcn/nubia/video/player/nubiaplayer/SeekBarView$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/nubiaplayer/SeekBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$b;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$b;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$000(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$b;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 5
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$b;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {v1, v0, p1}, Lcn/nubia/video/player/nubiaplayer/e;->whichScrubber(II)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$b;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    iget-boolean v1, p1, Lcn/nubia/video/player/nubiaplayer/e;->mIsLongPress:Z

    if-nez v1, :cond_2

    .line 6
    iput-boolean v0, p1, Lcn/nubia/video/player/nubiaplayer/e;->mIsLongPress:Z

    .line 7
    iget v1, p1, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedX:I

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$b;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$b;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    iget v2, v2, Lcn/nubia/video/player/nubiaplayer/e;->mClipLeftDrawableW:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 9
    invoke-virtual {p1, v1, v2}, Lcn/nubia/video/player/nubiaplayer/e;->getTime(J)J

    move-result-wide v1

    iput-wide v1, p1, Lcn/nubia/video/player/nubiaplayer/e;->mLongPressTime:J

    .line 10
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$b;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$100(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$b;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$100(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$b;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    iget-wide v1, v1, Lcn/nubia/video/player/nubiaplayer/e;->mLongPressTime:J

    long-to-int v1, v1

    invoke-interface {p1, v0, v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;->d(ZI)V

    .line 11
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$b;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    iget v0, p1, Lcn/nubia/video/player/nubiaplayer/e;->mPlayedX:I

    iput v0, p1, Lcn/nubia/video/player/nubiaplayer/e;->mPrePlayedX:I

    const/4 v0, 0x0

    .line 12
    iput v0, p1, Lcn/nubia/video/player/nubiaplayer/e;->mLongPressX:I

    .line 13
    iget v0, p1, Lcn/nubia/video/player/nubiaplayer/e;->mScreenWidth:I

    iput v0, p1, Lcn/nubia/video/player/nubiaplayer/e;->mLongPressMaxW:I

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method
