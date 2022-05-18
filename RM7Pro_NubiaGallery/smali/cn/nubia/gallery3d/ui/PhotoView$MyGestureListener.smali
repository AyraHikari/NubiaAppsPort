.class Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/GestureRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field private mAccScale:F

.field private mCanChangeMode:Z

.field private mCurrentY:I

.field private mDeltaY:I

.field private mDownInScrolling:Z

.field private mFirstScrollX:Z

.field private mHadFling:Z

.field private mIgnoreScalingGesture:Z

.field private mIgnoreSwipingDelete:Z

.field private mIgnoreSwipingGesture:Z

.field private mIgnoreUpEvent:Z

.field private mIsCameraOnScroll:Z

.field private mIsDown:Z

.field private mModeChanged:Z

.field private mScrolledAfterDown:Z

.field final synthetic this$0:Lcn/nubia/gallery3d/ui/PhotoView;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/ui/PhotoView;)V
    .locals 0

    .line 1445
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1446
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    .line 1470
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mIsCameraOnScroll:Z

    .line 1474
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mIsDown:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/ui/PhotoView;Lcn/nubia/gallery3d/ui/PhotoView$1;)V
    .locals 0

    .line 1445
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;-><init>(Lcn/nubia/gallery3d/ui/PhotoView;)V

    return-void
.end method

.method private calculateDeltaY(F)I
    .locals 5

    .line 1625
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$6100(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_0

    add-float/2addr p1, v1

    float-to-int p1, p1

    return p1

    .line 1630
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->getHeight()I

    move-result v0

    const v2, 0x3e19999a    # 0.15f

    int-to-float v0, v0

    mul-float/2addr v2, v0

    .line 1632
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v0

    if-ltz v3, :cond_2

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    neg-float v2, v2

    goto :goto_0

    :cond_2
    div-float/2addr p1, v0

    const v0, 0x3fc90fdb

    mul-float/2addr p1, v0

    float-to-double v3, p1

    .line 1635
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float p1, v3

    mul-float/2addr v2, p1

    :goto_0
    add-float/2addr v2, v1

    float-to-int p1, v2

    return p1
.end method

.method private deleteAfterAnimation(I)V
    .locals 4

    .line 1697
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5700(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v1

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1700
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$100(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/gallery3d/ui/PhotoView$Listener;->onCommitDeleteImage()V

    .line 1701
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v2

    invoke-interface {v2}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5700(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$6502(Lcn/nubia/gallery3d/ui/PhotoView;I)I

    .line 1702
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$300(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v2

    or-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$302(Lcn/nubia/gallery3d/ui/PhotoView;I)I

    .line 1703
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$900(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1704
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1705
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5700(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1706
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$900(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private flingImages(FFF)Z
    .locals 8

    const/high16 v0, 0x3f000000    # 0.5f

    add-float v1, p1, v0

    float-to-int v1, v1

    add-float/2addr v0, p2

    float-to-int v0, v0

    .line 1663
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2700(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2600(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1664
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcn/nubia/gallery3d/ui/PositionController;->flingPage(II)Z

    move-result p1

    return p1

    .line 1666
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 1667
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/ui/PositionController;->flingFilmX(I)Z

    move-result p1

    return p1

    .line 1671
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2700(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5700(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result p1

    const v2, 0x7fffffff

    if-eq p1, v2, :cond_7

    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$6100(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_3

    :cond_2
    const/16 p1, 0x7d0

    .line 1674
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result p1

    const/16 v3, 0x1f4

    .line 1675
    invoke-static {v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v3

    const/16 v4, 0x96

    .line 1676
    invoke-static {v4}, Lcn/nubia/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v4

    .line 1677
    iget-object v5, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v5}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v6}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5700(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcn/nubia/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    .line 1678
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v3, :cond_5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v3, v1, :cond_5

    if-lez v0, :cond_3

    move v1, v7

    goto :goto_0

    :cond_3
    move v1, p2

    :goto_0
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    .line 1679
    invoke-virtual {v3}, Lcn/nubia/gallery3d/ui/PhotoView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-le v5, v3, :cond_4

    move v3, v7

    goto :goto_1

    :cond_4
    move v3, p2

    :goto_1
    if-ne v1, v3, :cond_5

    int-to-float v1, v4

    cmpl-float p3, p3, v1

    if-ltz p3, :cond_5

    move p3, v7

    goto :goto_2

    :cond_5
    move p3, p2

    :goto_2
    if-eqz p3, :cond_7

    .line 1681
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1682
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p3}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object p3

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5700(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v0

    invoke-virtual {p3, v0, p1}, Lcn/nubia/gallery3d/ui/PositionController;->flingFilmY(II)I

    move-result p3

    if-ltz p3, :cond_7

    .line 1683
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingDelete:Z

    if-nez v0, :cond_7

    .line 1684
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object v0

    if-gez p1, :cond_6

    move p2, v7

    :cond_6
    invoke-virtual {v0, p2}, Lcn/nubia/gallery3d/ui/PositionController;->setPopFromTop(Z)V

    .line 1685
    invoke-direct {p0, p3}, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->deleteAfterAnimation(I)V

    .line 1686
    invoke-static {}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    move-result-object p1

    const-string p2, "cn.nubia.gallery3d"

    const-string p3, "gallery_swipe_delete"

    invoke-virtual {p1, p2, p3}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1, v2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5702(Lcn/nubia/gallery3d/ui/PhotoView;I)I

    return v7

    :cond_7
    :goto_3
    return p2
.end method

.method private maybeVerticalGesture(FFFF)V
    .locals 0

    sub-float/2addr p2, p4

    .line 1641
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p3, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p3}, Lcn/nubia/gallery3d/ui/PhotoView;->access$6200(Lcn/nubia/gallery3d/ui/PhotoView;)F

    move-result p3

    cmpl-float p1, p1, p3

    if-lez p1, :cond_0

    .line 1642
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$6300(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/video/player/MediaSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/video/player/MediaSettings;->setVolume(F)V

    :cond_0
    return-void
.end method

.method private startExtraScalingIfNeeded()V
    .locals 4

    .line 1796
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$600(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1797
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$900(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1798
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/PositionController;->setExtraScalingRange(Z)V

    .line 1799
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$602(Lcn/nubia/gallery3d/ui/PhotoView;Z)Z

    :cond_0
    return-void
.end method

.method private stopExtraScalingIfNeeded()V
    .locals 2

    .line 1804
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$600(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1805
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$900(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 1806
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/PositionController;->setExtraScalingRange(Z)V

    .line 1807
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$602(Lcn/nubia/gallery3d/ui/PhotoView;Z)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getSwipingDelete()Z
    .locals 1

    .line 1892
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingDelete:Z

    return v0
.end method

.method public onDoubleTap(FF)Z
    .locals 5

    .line 1533
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2600(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1535
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v0, :cond_1

    return v1

    .line 1537
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/util/RangeArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 1540
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$100(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1541
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$100(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    move-result-object v0

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-interface {v0, v3, v4}, Lcn/nubia/gallery3d/ui/PhotoView$Listener;->onDoubleTap(II)V

    .line 1544
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object v0

    .line 1545
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PositionController;->getImageScale()F

    move-result v3

    .line 1548
    iput-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    .line 1549
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PositionController;->getCenterScale()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 1551
    invoke-virtual {v0, p1, p2, v4}, Lcn/nubia/gallery3d/ui/PositionController;->zoomIn(FFF)V

    goto :goto_0

    .line 1553
    :cond_4
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PositionController;->resetToFullView()V

    .line 1558
    :goto_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5600(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1559
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    iput-boolean v2, p1, Lcn/nubia/gallery3d/ui/PhotoView;->mShowPlayIcon:Z

    .line 1560
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->startShowPlayIconAction()V

    :cond_5
    return v1
.end method

.method public onDown(FF)V
    .locals 3

    .line 1813
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1400(Lcn/nubia/gallery3d/ui/PhotoView;I)V

    const/4 p2, 0x0

    .line 1814
    iput p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mDeltaY:I

    .line 1815
    iput-boolean p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    const/4 v0, 0x1

    .line 1816
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mIsDown:Z

    .line 1817
    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v1, :cond_0

    return-void

    .line 1820
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$300(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v2

    or-int/2addr v2, v0

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$302(Lcn/nubia/gallery3d/ui/PhotoView;I)I

    .line 1822
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2700(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2600(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/PositionController;->isScrolling()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1823
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mDownInScrolling:Z

    .line 1824
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PositionController;->stopScrolling()V

    goto :goto_0

    .line 1826
    :cond_2
    iput-boolean p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mDownInScrolling:Z

    .line 1828
    :goto_0
    iput-boolean p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mHadFling:Z

    .line 1829
    iput-boolean p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    .line 1830
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2700(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result p2

    const v0, 0x7fffffff

    if-eqz p2, :cond_5

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 1833
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/PhotoView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, p1, v2}, Lcn/nubia/gallery3d/ui/PositionController;->hitTest(II)I

    move-result p1

    invoke-static {p2, p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5702(Lcn/nubia/gallery3d/ui/PhotoView;I)I

    .line 1834
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5700(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result p1

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1100(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result p2

    if-lt p1, p2, :cond_4

    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5700(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result p1

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1000(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result p2

    if-le p1, p2, :cond_3

    goto :goto_1

    .line 1837
    :cond_3
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/util/RangeArray;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5700(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/gallery3d/ui/PhotoView$Picture;

    invoke-interface {p2}, Lcn/nubia/gallery3d/ui/PhotoView$Picture;->isDeletable()Z

    move-result p2

    invoke-static {p1, p2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$6102(Lcn/nubia/gallery3d/ui/PhotoView;Z)Z

    goto :goto_2

    .line 1835
    :cond_4
    :goto_1
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5702(Lcn/nubia/gallery3d/ui/PhotoView;I)I

    goto :goto_2

    .line 1840
    :cond_5
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5702(Lcn/nubia/gallery3d/ui/PhotoView;I)I

    .line 1842
    :goto_2
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$6300(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/video/player/MediaSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/MediaSettings;->reset()V

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 1648
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$6000(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1651
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v0, p3, p4, v2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$6400(Lcn/nubia/gallery3d/ui/PhotoView;FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1652
    iput-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    goto :goto_0

    .line 1654
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-direct {p0, p3, p4, p1}, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->flingImages(FFF)Z

    .line 1656
    :goto_0
    iput-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mHadFling:Z

    :cond_2
    :goto_1
    return v1
.end method

.method public onLongPress(FF)V
    .locals 3

    .line 1520
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$100(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1522
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->getCompensationMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 1523
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1524
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput p1, v0, v2

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 1526
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1527
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$100(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    move-result-object p2

    aget v1, v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    aget p1, v0, p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    invoke-interface {p2, v1, p1}, Lcn/nubia/gallery3d/ui/PhotoView$Listener;->onLongPress(II)V

    :cond_0
    return-void
.end method

.method public onScale(FFF)Z
    .locals 6

    .line 1728
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1730
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    if-eqz v0, :cond_1

    return v1

    .line 1732
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    if-eqz v0, :cond_2

    return v1

    .line 1734
    :cond_2
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_d

    invoke-static {p3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_2

    .line 1736
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object v0

    .line 1737
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/PhotoView;->access$6600(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_4

    cmpg-float v3, p3, v4

    if-gez v3, :cond_4

    .line 1738
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PositionController;->getImageScale()F

    move-result v3

    const v5, 0x3ea3d70a    # 0.32f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_4

    return v1

    .line 1743
    :cond_4
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object v3

    invoke-virtual {v3, p3, p1, p2}, Lcn/nubia/gallery3d/ui/PositionController;->scaleBy(FFF)I

    move-result p1

    .line 1748
    iget p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    mul-float/2addr p2, p3

    iput p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    const v3, 0x3f7851ec    # 0.97f

    cmpg-float v3, p2, v3

    if-ltz v3, :cond_5

    const v3, 0x3f83d70a    # 1.03f

    cmpl-float p2, p2, v3

    if-lez p2, :cond_6

    :cond_5
    move v2, v1

    .line 1751
    :cond_6
    iget-boolean p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mCanChangeMode:Z

    if-eqz p2, :cond_9

    if-eqz v2, :cond_9

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$6600(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result p2

    if-nez p2, :cond_9

    if-gez p1, :cond_7

    .line 1752
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2700(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result p2

    if-eqz p2, :cond_8

    :cond_7
    if-lez p1, :cond_9

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2700(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1753
    :cond_8
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->stopExtraScalingIfNeeded()V

    .line 1757
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$300(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result p2

    and-int/lit8 p2, p2, -0x2

    invoke-static {p1, p2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$302(Lcn/nubia/gallery3d/ui/PhotoView;I)I

    .line 1758
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2700(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-static {p1, p2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$4100(Lcn/nubia/gallery3d/ui/PhotoView;Z)V

    .line 1762
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->onScaleEnd()V

    .line 1763
    iput-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    return v1

    .line 1767
    :cond_9
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$6600(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 1768
    iput-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    cmpl-float p2, p3, v4

    if-nez p2, :cond_a

    .line 1770
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PositionController;->resetToFullView()V

    goto :goto_0

    :cond_a
    const p2, 0x3f8147ae    # 1.01f

    cmpl-float p2, p3, p2

    if-nez p2, :cond_b

    .line 1772
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PositionController;->getCenterScale()F

    move-result p2

    .line 1773
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {p3}, Lcn/nubia/gallery3d/ui/PhotoView;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/PhotoView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, p3, v2, p2}, Lcn/nubia/gallery3d/ui/PositionController;->zoomIn(FFF)V

    :cond_b
    :goto_0
    if-eqz p1, :cond_c

    .line 1777
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->startExtraScalingIfNeeded()V

    goto :goto_1

    .line 1779
    :cond_c
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->stopExtraScalingIfNeeded()V

    :goto_1
    return v1

    :cond_d
    :goto_2
    return v2
.end method

.method public onScaleBegin(FF)Z
    .locals 2

    .line 1711
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1713
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2600(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    if-eqz v0, :cond_1

    return v1

    .line 1717
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/ui/PositionController;->beginScale(FF)V

    .line 1720
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2700(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, p2

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mCanChangeMode:Z

    .line 1721
    iput-boolean p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1722
    iput p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    return v1
.end method

.method public onScaleEnd()V
    .locals 1

    .line 1786
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v0, :cond_0

    return-void

    .line 1788
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    if-eqz v0, :cond_1

    return-void

    .line 1790
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    if-eqz v0, :cond_2

    return-void

    .line 1792
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PositionController;->endScale()V

    return-void
.end method

.method public onScroll(FFFFFF)Z
    .locals 5

    sub-float v0, p5, p3

    sub-float v1, p6, p4

    .line 1569
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/util/RangeArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v2}, Lcn/nubia/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 1570
    iput-boolean v4, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mIsCameraOnScroll:Z

    .line 1571
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2700(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$100(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$100(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    move-result-object v2

    invoke-interface {v2, p1, p2, v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Listener;->onScroll(FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    return v4

    .line 1574
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v0, :cond_1

    return v4

    .line 1576
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    if-nez v0, :cond_3

    .line 1577
    iput-boolean v4, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    .line 1578
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    move v3, v4

    :cond_2
    iput-boolean v3, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    :cond_3
    neg-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    neg-float p2, p2

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 1583
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2700(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1584
    iget-boolean p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    if-eqz p2, :cond_4

    .line 1585
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/ui/PositionController;->scrollFilmX(I)V

    goto/16 :goto_0

    .line 1587
    :cond_4
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5700(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result p1

    const p2, 0x7fffffff

    if-ne p1, p2, :cond_5

    return v4

    .line 1589
    :cond_5
    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->calculateDeltaY(F)I

    move-result p1

    .line 1590
    iget p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mDeltaY:I

    sub-int p2, p1, p2

    if-eqz p2, :cond_a

    .line 1592
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p3}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object p3

    iget-object p4, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p4}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5700(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result p4

    invoke-virtual {p3, p4, p2}, Lcn/nubia/gallery3d/ui/PositionController;->scrollFilmY(II)V

    .line 1593
    iput p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mDeltaY:I

    .line 1594
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lez p1, :cond_a

    .line 1595
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5800(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result p1

    and-int/2addr p1, v4

    if-eqz p1, :cond_6

    .line 1596
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->hideUndoBar()V

    .line 1597
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->showDeleteBar()V

    .line 1599
    :cond_6
    iget-boolean p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mIsDown:Z

    if-eqz p1, :cond_a

    .line 1600
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1, v4}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5900(Lcn/nubia/gallery3d/ui/PhotoView;Z)V

    goto :goto_0

    .line 1607
    :cond_7
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2600(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1608
    iget-boolean p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    if-eqz p2, :cond_a

    .line 1609
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/ui/PositionController;->scrollFilmX(I)V

    goto :goto_0

    .line 1615
    :cond_8
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$6000(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PositionController;->isDefalutScale()Z

    move-result v0

    if-eqz v0, :cond_9

    sub-float v0, p4, p6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v1, p3, p5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    .line 1616
    invoke-direct {p0, p3, p4, p5, p6}, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->maybeVerticalGesture(FFFF)V

    goto :goto_0

    .line 1618
    :cond_9
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p3}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcn/nubia/gallery3d/ui/PositionController;->scrollPage(II)V

    :cond_a
    :goto_0
    return v4
.end method

.method public onSingleTapUp(FF)Z
    .locals 6

    .line 1479
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$300(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$302(Lcn/nubia/gallery3d/ui/PhotoView;I)I

    .line 1480
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2700(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mDownInScrolling:Z

    if-nez v0, :cond_0

    .line 1481
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    add-float/2addr p1, v1

    float-to-int p1, p1

    add-float/2addr p2, v1

    float-to-int p2, p2

    invoke-static {v0, p1, p2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5200(Lcn/nubia/gallery3d/ui/PhotoView;II)V

    .line 1482
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->onScaleEnd()V

    .line 1483
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1, v2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$4100(Lcn/nubia/gallery3d/ui/PhotoView;Z)V

    .line 1484
    iput-boolean v3, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    return v3

    .line 1488
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2600(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1489
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mDownInScrolling:Z

    if-nez v0, :cond_1

    .line 1490
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0, p1, p2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5300(Lcn/nubia/gallery3d/ui/PhotoView;FF)V

    :cond_1
    return v3

    .line 1495
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$3600(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5400(Lcn/nubia/gallery3d/ui/PhotoView;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5400(Lcn/nubia/gallery3d/ui/PhotoView;)Landroid/graphics/Rect;

    move-result-object v0

    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    .line 1496
    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v2}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/gallery3d/data/RecycledImageItem;

    if-nez v0, :cond_4

    const/16 p1, 0x1e

    .line 1497
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object p2

    .line 1498
    invoke-interface {p2, v2}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p2

    .line 1497
    invoke-static {p2}, Lcn/nubia/gallery3d/data/DataSourceType;->getItemSourceType(Lcn/nubia/gallery3d/data/MediaItem;)I

    move-result p2

    if-ne p1, p2, :cond_3

    .line 1499
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$100(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/PhotoView$Listener;->image3dPlay()V

    goto :goto_0

    .line 1501
    :cond_3
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$100(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/PhotoView$Listener;->onShowContent()V

    :goto_0
    return v3

    .line 1506
    :cond_4
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$100(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1508
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->getCompensationMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 1509
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 1510
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput p1, v0, v2

    aput p2, v0, v3

    .line 1512
    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1513
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$100(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    move-result-object p1

    aget p2, v0, v2

    add-float/2addr p2, v1

    float-to-int p2, p2

    aget v0, v0, v3

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-interface {p1, p2, v0}, Lcn/nubia/gallery3d/ui/PhotoView$Listener;->onSingleTapUp(II)V

    :cond_5
    return v3
.end method

.method public onUp()V
    .locals 6

    const/4 v0, 0x0

    .line 1847
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mIsDown:Z

    .line 1848
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$100(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1849
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$100(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/gallery3d/ui/PhotoView$Listener;->onUp()V

    .line 1851
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v1, :cond_1

    return-void

    .line 1854
    :cond_1
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$300(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v2

    and-int/lit8 v2, v2, -0x2

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$302(Lcn/nubia/gallery3d/ui/PhotoView;I)I

    .line 1859
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2700(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    .line 1860
    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5700(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_3

    .line 1861
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5700(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1862
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/PhotoView;->getHeight()I

    move-result v2

    .line 1863
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v3, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5900(Lcn/nubia/gallery3d/ui/PhotoView;Z)V

    .line 1864
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    int-to-float v2, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v5

    cmpl-float v2, v3, v2

    if-lez v2, :cond_3

    .line 1865
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5700(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcn/nubia/gallery3d/ui/PositionController;->flingFilmY(II)I

    move-result v2

    if-ltz v2, :cond_3

    .line 1866
    iget-boolean v3, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingDelete:Z

    if-nez v3, :cond_3

    .line 1867
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    invoke-virtual {v3, v1}, Lcn/nubia/gallery3d/ui/PositionController;->setPopFromTop(Z)V

    .line 1868
    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->deleteAfterAnimation(I)V

    .line 1873
    :cond_3
    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    if-eqz v1, :cond_4

    .line 1874
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    return-void

    .line 1878
    :cond_4
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2700(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2600(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mHadFling:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$6700(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1879
    :cond_6
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1300(Lcn/nubia/gallery3d/ui/PhotoView;)V

    :cond_7
    return-void
.end method

.method public setSwipingDelete(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 1888
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingDelete:Z

    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 1884
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    return-void
.end method
