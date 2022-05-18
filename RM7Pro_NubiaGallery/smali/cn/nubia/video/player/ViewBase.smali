.class public abstract Lcn/nubia/video/player/ViewBase;
.super Ljava/lang/Object;
.source "ViewBase.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mGestrueProgress:Landroid/widget/TextView;

.field protected mGestrueProgressLayout:Landroid/widget/RelativeLayout;

.field protected mGestureVolume:Landroid/widget/ImageView;

.field protected mGestureVolumeBG:Landroid/widget/ImageView;

.field protected mGestureVolumeLayout:Landroid/widget/RelativeLayout;

.field protected mIsGesturing:Z

.field protected mIsHide:Z

.field protected mIsLock:Z

.field private mLastPos:I

.field private mNeedResume:Z

.field protected mRoot:Landroid/view/View;

.field protected mVideoView:Lcn/nubia/video/player/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcn/nubia/video/player/ViewBase;->mIsHide:Z

    .line 23
    iput-boolean v0, p0, Lcn/nubia/video/player/ViewBase;->mIsLock:Z

    .line 24
    iput-boolean v0, p0, Lcn/nubia/video/player/ViewBase;->mIsGesturing:Z

    .line 30
    iput-boolean v0, p0, Lcn/nubia/video/player/ViewBase;->mNeedResume:Z

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcn/nubia/video/player/ViewBase;->mLastPos:I

    return-void
.end method

.method private setGestrueProgressIcon(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 36
    iget-object p1, p0, Lcn/nubia/video/player/ViewBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0801d4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/ViewBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0801d6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 40
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 41
    iget-object v0, p0, Lcn/nubia/video/player/ViewBase;->mGestrueProgress:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public abstract getBottomRect()Landroid/graphics/Rect;
.end method

.method public abstract getTopRect()Landroid/graphics/Rect;
.end method

.method protected getTrimEndPos()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected getTrimStartPos()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public abstract hide()V
.end method

.method public abstract isHide()Z
.end method

.method public onEndGestrue()V
    .locals 2

    .line 91
    iget-boolean v0, p0, Lcn/nubia/video/player/ViewBase;->mNeedResume:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcn/nubia/video/player/ViewBase;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->resume()V

    .line 93
    iput-boolean v1, p0, Lcn/nubia/video/player/ViewBase;->mNeedResume:Z

    .line 95
    :cond_0
    iput-boolean v1, p0, Lcn/nubia/video/player/ViewBase;->mIsGesturing:Z

    const/4 v0, -0x1

    .line 96
    iput v0, p0, Lcn/nubia/video/player/ViewBase;->mLastPos:I

    return-void
.end method

.method public onGestrueProgressChange(I)V
    .locals 6

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcn/nubia/video/player/ViewBase;->mIsGesturing:Z

    .line 55
    iget v1, p0, Lcn/nubia/video/player/ViewBase;->mLastPos:I

    if-gez v1, :cond_0

    .line 56
    iput p1, p0, Lcn/nubia/video/player/ViewBase;->mLastPos:I

    return-void

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/video/player/ViewBase;->getTrimStartPos()I

    move-result v1

    .line 61
    invoke-virtual {p0}, Lcn/nubia/video/player/ViewBase;->getTrimEndPos()I

    move-result v2

    if-gez v1, :cond_1

    if-ltz v2, :cond_2

    .line 63
    :cond_1
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 66
    :cond_2
    iget-object v2, p0, Lcn/nubia/video/player/ViewBase;->mGestrueProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    iget-object v2, p0, Lcn/nubia/video/player/ViewBase;->mRoot:Landroid/view/View;

    .line 67
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcn/nubia/video/player/ViewBase;->mRoot:Landroid/view/View;

    .line 68
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    .line 69
    :cond_3
    iget-object v2, p0, Lcn/nubia/video/player/ViewBase;->mRoot:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v2, p0, Lcn/nubia/video/player/ViewBase;->mRoot:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object v2, p0, Lcn/nubia/video/player/ViewBase;->mGestrueProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 73
    :cond_4
    iget-object v2, p0, Lcn/nubia/video/player/ViewBase;->mGestrueProgress:Landroid/widget/TextView;

    int-to-long v4, p1

    invoke-static {v4, v5}, Lcn/nubia/video/player/common/Utils;->stringForTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v2, p0, Lcn/nubia/video/player/ViewBase;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v2}, Lcn/nubia/video/player/VideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 76
    iget-object v2, p0, Lcn/nubia/video/player/ViewBase;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v2}, Lcn/nubia/video/player/VideoView;->pause()V

    .line 77
    iput-boolean v0, p0, Lcn/nubia/video/player/ViewBase;->mNeedResume:Z

    .line 79
    :cond_5
    iget-object v2, p0, Lcn/nubia/video/player/ViewBase;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v2, p1}, Lcn/nubia/video/player/VideoView;->seekTo(I)V

    .line 80
    iget v2, p0, Lcn/nubia/video/player/ViewBase;->mLastPos:I

    if-gt v2, p1, :cond_8

    if-ne v2, p1, :cond_6

    if-eqz p1, :cond_8

    :cond_6
    if-ne v2, v1, :cond_7

    goto :goto_0

    .line 85
    :cond_7
    invoke-direct {p0, v3}, Lcn/nubia/video/player/ViewBase;->setGestrueProgressIcon(Z)V

    goto :goto_1

    .line 83
    :cond_8
    :goto_0
    invoke-direct {p0, v0}, Lcn/nubia/video/player/ViewBase;->setGestrueProgressIcon(Z)V

    .line 87
    :goto_1
    iput p1, p0, Lcn/nubia/video/player/ViewBase;->mLastPos:I

    return-void
.end method

.method public onGestrueVolumeChange(I)V
    .locals 3

    .line 100
    iget-object v0, p0, Lcn/nubia/video/player/ViewBase;->mGestureVolumeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/video/player/ViewBase;->mRoot:Landroid/view/View;

    .line 101
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/video/player/ViewBase;->mRoot:Landroid/view/View;

    .line 102
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/ViewBase;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcn/nubia/video/player/ViewBase;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcn/nubia/video/player/ViewBase;->mGestureVolumeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    const/16 v0, 0xf

    if-ltz p1, :cond_2

    if-le p1, v0, :cond_3

    .line 108
    :cond_2
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 110
    :cond_3
    iget-object v1, p0, Lcn/nubia/video/player/ViewBase;->mGestureVolume:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lcn/nubia/video/player/ViewBase;->mGestureVolumeBG:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 112
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    mul-int/2addr p1, v2

    div-int/2addr p1, v0

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 113
    iget-object p1, p0, Lcn/nubia/video/player/ViewBase;->mGestureVolume:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object p1, p0, Lcn/nubia/video/player/ViewBase;->mGestureVolume:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method public abstract show()V
.end method

.method public abstract startHide()V
.end method
