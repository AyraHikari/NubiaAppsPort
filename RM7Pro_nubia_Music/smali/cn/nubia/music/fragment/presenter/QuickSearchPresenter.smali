.class public Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;
.super Ljava/lang/Object;
.source "QuickSearchPresenter.java"

# interfaces
.implements Lcn/nubia/music/fragment/presenter/QuickSearchContract$Presenter;


# static fields
.field private static final REQUEST_ALBUM_FAIL:I = 0x8

.field private static final REQUEST_ALL_FAIL:I = 0xe

.field private static final REQUEST_ARTIST_FAIL:I = 0x4

.field private static final REQUEST_MUSIC_FAIL:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

.field private mView:Lcn/nubia/music/fragment/presenter/QuickSearchContract$View;

.field private requestFail:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/music/fragment/presenter/QuickSearchContract$View;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->requestFail:I

    .line 29
    iput-object p2, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->mView:Lcn/nubia/music/fragment/presenter/QuickSearchContract$View;

    .line 30
    iput-object p1, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->mContext:Landroid/content/Context;

    .line 31
    new-instance v0, Lcn/nubia/music/repository/Subscriptions;

    invoke-direct {v0}, Lcn/nubia/music/repository/Subscriptions;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->requestFail:I

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;I)I
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->requestFail:I

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;)Lcn/nubia/music/fragment/presenter/QuickSearchContract$View;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->mView:Lcn/nubia/music/fragment/presenter/QuickSearchContract$View;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->searchLocalArtist(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->searchLocalAlbum(Ljava/lang/String;)V

    return-void
.end method

.method private searchLocalAlbum(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Lcn/nubia/music/repository/AlbumRepository;->getInstance()Lcn/nubia/music/repository/AlbumRepository;

    move-result-object v0

    new-instance v1, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter$3;

    invoke-direct {v1, p0}, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter$3;-><init>(Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcn/nubia/music/repository/AlbumRepository;->searchAlbum(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/Subscriptions;->add(Lcn/nubia/music/repository/Subscription;)V

    .line 105
    return-void
.end method

.method private searchLocalArtist(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcn/nubia/music/repository/ArtistRepository;->getInstance()Lcn/nubia/music/repository/ArtistRepository;

    move-result-object v0

    new-instance v1, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter$2;

    invoke-direct {v1, p0, p1}, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter$2;-><init>(Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcn/nubia/music/repository/ArtistRepository;->searchArtist(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/Subscriptions;->add(Lcn/nubia/music/repository/Subscription;)V

    .line 80
    return-void
.end method

.method private searchLocalSong(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcn/nubia/music/repository/MusicRepository;->getInstance()Lcn/nubia/music/repository/MusicRepository;

    move-result-object v0

    new-instance v1, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter$1;-><init>(Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcn/nubia/music/repository/MusicRepository;->searchMusic(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/Subscriptions;->add(Lcn/nubia/music/repository/Subscription;)V

    .line 59
    return-void
.end method


# virtual methods
.method public itemClick(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 110
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcn/nubia/music/online/model/MediaModel;

    if-nez v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 113
    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 114
    instance-of v1, p1, Lcn/nubia/music/online/model/MusicModel;

    if-eqz v1, :cond_2

    .line 115
    iget-wide v0, v0, Lcn/nubia/music/online/model/MediaModel;->mMediaId:J

    invoke-static {v0, v1}, Lcn/nubia/music/app/MusicPlayer;->addLocalToNowingPlaying(J)V

    .line 116
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    iget-object v1, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 119
    :cond_2
    instance-of v1, p1, Lcn/nubia/music/online/model/ArtistModel;

    if-eqz v1, :cond_3

    .line 120
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->mContext:Landroid/content/Context;

    const-class v3, Lcn/nubia/music/activity/ArtistDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    const-string v2, "artistid"

    iget-wide v4, v0, Lcn/nubia/music/online/model/MediaModel;->mMediaId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    iget-object v0, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 123
    :cond_3
    instance-of v1, p1, Lcn/nubia/music/online/model/AlbumModel;

    if-eqz v1, :cond_0

    .line 124
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->mContext:Landroid/content/Context;

    const-class v3, Lcn/nubia/music/activity/AlbumDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    const-string v2, "albumid"

    iget-wide v4, v0, Lcn/nubia/music/online/model/MediaModel;->mMediaId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    iget-object v0, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public start()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public startSearchLocalSong(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->requestFail:I

    .line 37
    invoke-direct {p0, p1}, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->searchLocalSong(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v0}, Lcn/nubia/music/repository/Subscriptions;->clear()V

    .line 139
    return-void
.end method
