.class public Lcn/nubia/music/fragment/CoverFragment;
.super Landroid/support/v4/app/Fragment;
.source "CoverFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/fragment/CoverFragment$a;
    }
.end annotation


# instance fields
.field private mAlbumFrame:Lcn/nubia/music/ui/RoundImageView;

.field private mAlbumLayout:Lcn/nubia/music/ui/GestureLayout;

.field private mCircleSurfaceView:Lcn/nubia/music/ui/CircleMusicView;

.field mContext:Landroid/content/Context;

.field private mCurrentAlbum:Ljava/lang/String;

.field private mCurrentArtist:Ljava/lang/String;

.field private mCurrentPath:Ljava/lang/String;

.field private mCurrentSongName:Ljava/lang/String;

.field private final mNoLyricViewListener:Landroid/view/View$OnClickListener;

.field private mSetCoverTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Z

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private portaitFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/fragment/CoverFragment;->mState:Z

    .line 37
    iput-object v1, p0, Lcn/nubia/music/fragment/CoverFragment;->mCurrentPath:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcn/nubia/music/fragment/CoverFragment;->mCurrentArtist:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcn/nubia/music/fragment/CoverFragment;->mCurrentAlbum:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/fragment/CoverFragment;->portaitFlag:Z

    .line 45
    iput-object v1, p0, Lcn/nubia/music/fragment/CoverFragment;->mCurrentSongName:Ljava/lang/String;

    .line 60
    new-instance v0, Lcn/nubia/music/fragment/CoverFragment$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/fragment/CoverFragment$1;-><init>(Lcn/nubia/music/fragment/CoverFragment;)V

    iput-object v0, p0, Lcn/nubia/music/fragment/CoverFragment;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 241
    new-instance v0, Lcn/nubia/music/fragment/CoverFragment$2;

    invoke-direct {v0, p0}, Lcn/nubia/music/fragment/CoverFragment$2;-><init>(Lcn/nubia/music/fragment/CoverFragment;)V

    iput-object v0, p0, Lcn/nubia/music/fragment/CoverFragment;->mNoLyricViewListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/fragment/CoverFragment;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcn/nubia/music/fragment/CoverFragment;->onInfoChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/music/fragment/CoverFragment;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcn/nubia/music/fragment/CoverFragment;->updataCurrentAlbum()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/music/fragment/CoverFragment;)Lcn/nubia/music/ui/CircleMusicView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/music/fragment/CoverFragment;->mCircleSurfaceView:Lcn/nubia/music/ui/CircleMusicView;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/music/fragment/CoverFragment;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcn/nubia/music/fragment/CoverFragment;->mState:Z

    return v0
.end method

.method static synthetic access$302(Lcn/nubia/music/fragment/CoverFragment;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcn/nubia/music/fragment/CoverFragment;->mState:Z

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/music/fragment/CoverFragment;)Lcn/nubia/music/ui/RoundImageView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/music/fragment/CoverFragment;->mAlbumFrame:Lcn/nubia/music/ui/RoundImageView;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/music/fragment/CoverFragment;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lcn/nubia/music/fragment/CoverFragment;

    invoke-direct {v0}, Lcn/nubia/music/fragment/CoverFragment;-><init>()V

    .line 53
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 54
    const-string v2, "songName"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v2, "artist"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, v1}, Lcn/nubia/music/fragment/CoverFragment;->setArguments(Landroid/os/Bundle;)V

    .line 57
    return-object v0
.end method

.method private onInfoChanged(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 196
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/music/fragment/CoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    .line 202
    iget-object v3, p0, Lcn/nubia/music/fragment/CoverFragment;->mCurrentPath:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcn/nubia/music/fragment/CoverFragment;->mCurrentPath:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/music/fragment/CoverFragment;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 203
    :cond_2
    iput-object v0, p0, Lcn/nubia/music/fragment/CoverFragment;->mCurrentPath:Ljava/lang/String;

    .line 204
    iput-object v1, p0, Lcn/nubia/music/fragment/CoverFragment;->mCurrentArtist:Ljava/lang/String;

    .line 205
    iput-object v2, p0, Lcn/nubia/music/fragment/CoverFragment;->mCurrentAlbum:Ljava/lang/String;

    .line 206
    invoke-direct {p0, v1, v2}, Lcn/nubia/music/fragment/CoverFragment;->setCover(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerReceiverSafe()V
    .locals 3

    .prologue
    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 103
    const-string v1, "cn.nubia.music.preset.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v1, "cn.nubia.music.preset.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v1, "com.bean.music.preset.CurrentAlbumChange"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcn/nubia/music/fragment/CoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/fragment/CoverFragment;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    return-void
.end method

.method private setCover(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 250
    iget-object v0, p0, Lcn/nubia/music/fragment/CoverFragment;->mSetCoverTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcn/nubia/music/fragment/CoverFragment;->mSetCoverTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 254
    :cond_0
    new-instance v0, Lcn/nubia/music/fragment/CoverFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/music/fragment/CoverFragment$a;-><init>(Lcn/nubia/music/fragment/CoverFragment;Lcn/nubia/music/fragment/CoverFragment$1;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-virtual {v0, v1}, Lcn/nubia/music/fragment/CoverFragment$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/CoverFragment;->mSetCoverTask:Landroid/os/AsyncTask;

    .line 255
    return-void
.end method

.method private unRegisterReceiverSafe()V
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lcn/nubia/music/fragment/CoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/fragment/CoverFragment;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 115
    return-void
.end method

.method private updataCurrentAlbum()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcn/nubia/music/fragment/CoverFragment;->mCurrentArtist:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/fragment/CoverFragment;->mCurrentArtist:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/music/fragment/CoverFragment;->mCurrentAlbum:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcn/nubia/music/fragment/CoverFragment;->setCover(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 184
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 133
    invoke-virtual {p0}, Lcn/nubia/music/fragment/CoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/CoverFragment;->mContext:Landroid/content/Context;

    .line 134
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getTrackName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/CoverFragment;->mCurrentSongName:Ljava/lang/String;

    .line 125
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getArtistName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/CoverFragment;->mCurrentArtist:Ljava/lang/String;

    .line 126
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/CoverFragment;->mCurrentAlbum:Ljava/lang/String;

    .line 127
    invoke-direct {p0}, Lcn/nubia/music/fragment/CoverFragment;->updataCurrentAlbum()V

    .line 128
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 8

    .prologue
    const-wide/16 v6, 0xf0

    const/high16 v5, 0x3f800000    # 1.0f

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 212
    const v0, 0x7f0d00b1

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDimension(I)F

    move-result v0

    mul-float v1, v0, v3

    .line 214
    const v0, 0x7f0d00af

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDimension(I)F

    move-result v0

    mul-float/2addr v0, v3

    .line 216
    iget-boolean v2, p0, Lcn/nubia/music/fragment/CoverFragment;->portaitFlag:Z

    if-nez v2, :cond_0

    .line 217
    const v0, 0x7f0d00b2

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDimension(I)F

    move-result v0

    mul-float v1, v0, v3

    .line 219
    const v0, 0x7f0d00b0

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDimension(I)F

    move-result v0

    mul-float/2addr v0, v3

    .line 222
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "album,centerX,centerY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 224
    if-eqz p2, :cond_1

    .line 225
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 226
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 236
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 237
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 238
    return-object v0

    .line 229
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 230
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 231
    iget-object v1, p0, Lcn/nubia/music/fragment/CoverFragment;->mCircleSurfaceView:Lcn/nubia/music/ui/CircleMusicView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcn/nubia/music/ui/CircleMusicView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 158
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 159
    const v0, 0x7f030036

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/fragment/CoverFragment;->portaitFlag:Z

    .line 161
    const v0, 0x7f1000c5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/ui/RoundImageView;

    iput-object v0, p0, Lcn/nubia/music/fragment/CoverFragment;->mAlbumFrame:Lcn/nubia/music/ui/RoundImageView;

    .line 163
    const v0, 0x7f1000c4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/ui/GestureLayout;

    iput-object v0, p0, Lcn/nubia/music/fragment/CoverFragment;->mAlbumLayout:Lcn/nubia/music/ui/GestureLayout;

    .line 164
    const v0, 0x7f1000c3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/ui/CircleMusicView;

    iput-object v0, p0, Lcn/nubia/music/fragment/CoverFragment;->mCircleSurfaceView:Lcn/nubia/music/ui/CircleMusicView;

    .line 165
    iget-object v0, p0, Lcn/nubia/music/fragment/CoverFragment;->mCircleSurfaceView:Lcn/nubia/music/ui/CircleMusicView;

    invoke-virtual {p0}, Lcn/nubia/music/fragment/CoverFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/nubia/music/ui/CircleMusicView;->setColor(I)V

    .line 167
    const v0, 0x7f1000c6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 171
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v2, p0, Lcn/nubia/music/fragment/CoverFragment;->mNoLyricViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    invoke-direct {p0}, Lcn/nubia/music/fragment/CoverFragment;->registerReceiverSafe()V

    .line 177
    return-object v1
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 189
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 191
    invoke-direct {p0}, Lcn/nubia/music/fragment/CoverFragment;->unRegisterReceiverSafe()V

    .line 192
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/fragment/CoverFragment;->mCircleSurfaceView:Lcn/nubia/music/ui/CircleMusicView;

    .line 152
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/third/StatisticsEvent;->onPageEnd(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/third/StatisticsEvent;->onPageStart(Ljava/lang/String;)V

    .line 140
    return-void
.end method
