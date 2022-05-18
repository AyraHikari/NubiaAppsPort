.class public Lcn/nubia/music/ui/MusicPlayingIndicator;
.super Landroid/widget/LinearLayout;
.source "MusicPlayingIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/ui/MusicPlayingIndicator$a;
    }
.end annotation


# instance fields
.field private mAttachedToWindow:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mFourAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mFourImage:Landroid/widget/ImageView;

.field private mLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mLeftImage:Landroid/widget/ImageView;

.field private mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mRightAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mRightImage:Landroid/widget/ImageView;

.field private mThirdAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mThirdImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mCurrentState:I

    .line 30
    iput-boolean v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mReceiverRegistered:Z

    .line 67
    new-instance v0, Lcn/nubia/music/ui/MusicPlayingIndicator$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/music/ui/MusicPlayingIndicator$a;-><init>(Lcn/nubia/music/ui/MusicPlayingIndicator;Lcn/nubia/music/ui/MusicPlayingIndicator$1;)V

    .line 68
    iput-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    iput-object p1, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mLeftImage:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mLeftImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/MusicPlayingIndicator;->addView(Landroid/view/View;)V

    .line 74
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mRightImage:Landroid/widget/ImageView;

    .line 75
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mRightImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/MusicPlayingIndicator;->addView(Landroid/view/View;)V

    .line 77
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mThirdImage:Landroid/widget/ImageView;

    .line 78
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mThirdImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/MusicPlayingIndicator;->addView(Landroid/view/View;)V

    .line 80
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mFourImage:Landroid/widget/ImageView;

    .line 81
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mFourImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/MusicPlayingIndicator;->addView(Landroid/view/View;)V

    .line 83
    const v0, 0x7f040017

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 86
    const v0, 0x7f040018

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mRightAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 89
    const v0, 0x7f040019

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mThirdAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 92
    const v0, 0x7f04001a

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mFourAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/ui/MusicPlayingIndicator;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcn/nubia/music/ui/MusicPlayingIndicator;->setPlayState(I)V

    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 98
    iget-boolean v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mAttachedToWindow:Z

    if-nez v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    const-string v1, "cn.nubia.music.preset.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mContext:Landroid/content/Context;

    .line 108
    iget-object v2, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mReceiverRegistered:Z

    goto :goto_0
.end method

.method private setPlayState(I)V
    .locals 2

    .prologue
    .line 115
    iput p1, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mCurrentState:I

    .line 116
    packed-switch p1, :pswitch_data_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayState: unexpected state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    const-string v1, "PlayingIndicator"

    invoke-static {v1, v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void

    .line 122
    :pswitch_0
    invoke-direct {p0}, Lcn/nubia/music/ui/MusicPlayingIndicator;->unregisterReceiver()V

    .line 123
    invoke-direct {p0}, Lcn/nubia/music/ui/MusicPlayingIndicator;->stopAnimation()V

    goto :goto_0

    .line 126
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/music/ui/MusicPlayingIndicator;->registerReceiver()V

    .line 127
    invoke-direct {p0}, Lcn/nubia/music/ui/MusicPlayingIndicator;->startAnimation()V

    .line 128
    invoke-direct {p0}, Lcn/nubia/music/ui/MusicPlayingIndicator;->stopAnimation()V

    goto :goto_0

    .line 131
    :pswitch_2
    invoke-direct {p0}, Lcn/nubia/music/ui/MusicPlayingIndicator;->registerReceiver()V

    .line 132
    invoke-direct {p0}, Lcn/nubia/music/ui/MusicPlayingIndicator;->startAnimation()V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mLeftImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mRightImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mRightAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mThirdImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mThirdAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mFourImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mFourAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 145
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mRightAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 146
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mThirdAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 147
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mFourAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 149
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 150
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mRightAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 151
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mThirdAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 152
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mFourAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 153
    return-void
.end method

.method private stopAnimation()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 157
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mRightAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 158
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mThirdAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 159
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mFourAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 165
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 168
    iget-boolean v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mReceiverRegistered:Z

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 177
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 178
    iput-boolean v1, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mAttachedToWindow:Z

    .line 179
    iget v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mCurrentState:I

    if-nez v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-direct {p0}, Lcn/nubia/music/ui/MusicPlayingIndicator;->registerReceiver()V

    .line 183
    iget v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mCurrentState:I

    if-ne v0, v1, :cond_2

    .line 184
    invoke-direct {p0}, Lcn/nubia/music/ui/MusicPlayingIndicator;->stopAnimation()V

    goto :goto_0

    .line 187
    :cond_2
    iget v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 190
    invoke-direct {p0}, Lcn/nubia/music/ui/MusicPlayingIndicator;->startAnimation()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 194
    invoke-direct {p0}, Lcn/nubia/music/ui/MusicPlayingIndicator;->unregisterReceiver()V

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mAttachedToWindow:Z

    .line 196
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 197
    return-void
.end method

.method public setPauseDrawable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPauseDrawable() mReceiverRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mReceiverRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mLeftImage:Landroid/widget/ImageView;

    const v1, 0x7f0200e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mRightImage:Landroid/widget/ImageView;

    const v1, 0x7f0200e4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mThirdImage:Landroid/widget/ImageView;

    const v1, 0x7f0200e5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mFourImage:Landroid/widget/ImageView;

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mLeftImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mRightImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mThirdImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator;->mFourImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    if-nez p1, :cond_2

    .line 202
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcn/nubia/music/ui/MusicPlayingIndicator;->setPlayState(I)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/music/ui/MusicPlayingIndicator;->setPlayState(I)V

    goto :goto_0

    .line 209
    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/music/ui/MusicPlayingIndicator;->setPlayState(I)V

    goto :goto_0
.end method
