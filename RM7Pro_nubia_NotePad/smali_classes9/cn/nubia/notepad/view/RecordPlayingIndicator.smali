.class public Lcn/nubia/notepad/view/RecordPlayingIndicator;
.super Landroid/widget/LinearLayout;
.source "RecordPlayingIndicator.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFourAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mFourImage:Landroid/widget/ImageView;

.field private mLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mLeftImage:Landroid/widget/ImageView;

.field private mRightAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mRightImage:Landroid/widget/ImageView;

.field private mThirdAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mThirdImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object p1, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mLeftImage:Landroid/widget/ImageView;

    .line 34
    iget-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mLeftImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/view/RecordPlayingIndicator;->addView(Landroid/view/View;)V

    .line 35
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mRightImage:Landroid/widget/ImageView;

    .line 36
    iget-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mRightImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/view/RecordPlayingIndicator;->addView(Landroid/view/View;)V

    .line 37
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mThirdImage:Landroid/widget/ImageView;

    .line 38
    iget-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mThirdImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/view/RecordPlayingIndicator;->addView(Landroid/view/View;)V

    .line 39
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mFourImage:Landroid/widget/ImageView;

    .line 40
    iget-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mFourImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/view/RecordPlayingIndicator;->addView(Landroid/view/View;)V

    .line 41
    iget-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f04000a

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f04000b

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mRightAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f04000c

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mThirdAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f04000d

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mFourAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 49
    return-void
.end method

.method private removeAnimation()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 77
    iget-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mRightAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 78
    iget-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mThirdAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 79
    iget-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mFourAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 80
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mLeftImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    iget-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mRightImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mRightAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    iget-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mThirdImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mThirdAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    iget-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mFourImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mFourAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    iget-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 58
    iget-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mRightAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 59
    iget-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mThirdAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 60
    iget-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mFourAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 62
    iget-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 63
    iget-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mRightAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 64
    iget-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mThirdAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 65
    iget-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mFourAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 66
    return-void
.end method

.method private stopAnimation()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 70
    iget-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mRightAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 71
    iget-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mThirdAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 72
    iget-object v0, p0, Lcn/nubia/notepad/view/RecordPlayingIndicator;->mFourAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 73
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcn/nubia/notepad/observer/NotePadRecordPlayObsever;->getInstance()Lcn/nubia/notepad/observer/NotePadRecordPlayObsever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/notepad/observer/NotePadRecordPlayObsever;->addObserver(Ljava/util/Observer;)V

    .line 84
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 85
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcn/nubia/notepad/observer/NotePadRecordPlayObsever;->getInstance()Lcn/nubia/notepad/observer/NotePadRecordPlayObsever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/notepad/observer/NotePadRecordPlayObsever;->deleteObserver(Ljava/util/Observer;)V

    .line 90
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 91
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg0"    # Ljava/util/Observable;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 100
    move-object v0, p2

    check-cast v0, Lcn/nubia/notepad/enums/MediaPlayerState;

    .line 101
    .local v0, "mode":Lcn/nubia/notepad/enums/MediaPlayerState;
    sget-object v1, Lcn/nubia/notepad/enums/MediaPlayerState;->PLAYING:Lcn/nubia/notepad/enums/MediaPlayerState;

    if-ne v0, v1, :cond_1

    .line 102
    invoke-direct {p0}, Lcn/nubia/notepad/view/RecordPlayingIndicator;->startAnimation()V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    sget-object v1, Lcn/nubia/notepad/enums/MediaPlayerState;->PAUSED:Lcn/nubia/notepad/enums/MediaPlayerState;

    if-ne v0, v1, :cond_2

    .line 104
    invoke-direct {p0}, Lcn/nubia/notepad/view/RecordPlayingIndicator;->stopAnimation()V

    goto :goto_0

    .line 105
    :cond_2
    sget-object v1, Lcn/nubia/notepad/enums/MediaPlayerState;->STOPPED:Lcn/nubia/notepad/enums/MediaPlayerState;

    if-ne v0, v1, :cond_0

    .line 106
    invoke-direct {p0}, Lcn/nubia/notepad/view/RecordPlayingIndicator;->removeAnimation()V

    goto :goto_0
.end method
