.class public abstract Lcn/nubia/music/activity/BaseDetailListActivity;
.super Lcn/nubia/music/activity/BaseFragmentActivity;
.source "BaseDetailListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcn/nubia/music/app/menu/MusicMenu;
.implements Lcn/nubia/music/ui/scrolllayout/ScrollableHelper$ScrollableContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;,
        Lcn/nubia/music/activity/BaseDetailListActivity$DataSetObserver;,
        Lcn/nubia/music/activity/BaseDetailListActivity$a;,
        Lcn/nubia/music/activity/BaseDetailListActivity$State;
    }
.end annotation


# static fields
.field protected static final ALBUM_DETAIL_TYPE:I = 0x0

.field protected static final ARTIST_DETAIL_TYPE:I = 0x1

.field protected static final PLAY_LIST_DETAIL_TYPE:I = 0x2

.field public static final TYPE_ALBUM_DETAIL:I = 0x1

.field public static final TYPE_ARTIST_DETAIL:I = 0x2

.field public static final TYPE_PLAYLIST_DETAIL:I = 0x3


# instance fields
.field protected mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

.field protected mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

.field protected mAlbumBitmap:Landroid/graphics/Bitmap;

.field protected mAlbumImg:Landroid/widget/ImageView;

.field protected mBmpDefaultListDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field public mCurrentDetailType:I

.field protected mDataSetObserver:Landroid/database/ContentObserver;

.field protected mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

.field protected mHandler:Landroid/os/Handler;

.field protected mIsStartedDeleteActivity:Z

.field private mMiniPlayBar:Lcn/nubia/music/ui/MiniMusicPlayBar;

.field protected mModeManagerListener:Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

.field private mMoreButton:Landroid/widget/ImageView;

.field protected mPlaylistId:Ljava/lang/String;

.field protected mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field protected mToneList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseFragmentActivity;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mCurrentDetailType:I

    .line 63
    iput-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mBmpDefaultListDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mIsStartedDeleteActivity:Z

    .line 340
    new-instance v0, Lcn/nubia/music/activity/BaseDetailListActivity$8;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/BaseDetailListActivity$8;-><init>(Lcn/nubia/music/activity/BaseDetailListActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 351
    iput-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAlbumImg:Landroid/widget/ImageView;

    .line 378
    new-instance v0, Lcn/nubia/music/activity/BaseDetailListActivity$10;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/BaseDetailListActivity$10;-><init>(Lcn/nubia/music/activity/BaseDetailListActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mModeManagerListener:Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/activity/BaseDetailListActivity;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->addtoPlayingCmpl()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/music/activity/BaseDetailListActivity;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->playAllSongs()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/music/activity/BaseDetailListActivity;[J)Z
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/BaseDetailListActivity;->isInvalidList([J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcn/nubia/music/activity/BaseDetailListActivity;)[J
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->getAllAudioIds()[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/music/activity/BaseDetailListActivity;[J)[J
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/BaseDetailListActivity;->getSongIdlist([J)[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/music/activity/BaseDetailListActivity;Z)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/BaseDetailListActivity;->setActionModeState(Z)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/music/activity/BaseDetailListActivity;)Z
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->hasSelectAll()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcn/nubia/music/activity/BaseDetailListActivity;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->selectNone()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/music/activity/BaseDetailListActivity;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->selectAll()V

    return-void
.end method

.method private addtoPlayingCmpl()V
    .locals 3

    .prologue
    .line 180
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->getFilteredAudioIds()[J

    move-result-object v0

    .line 181
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 182
    invoke-static {p0, v0}, Lcn/nubia/music/utils/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    .line 187
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b019f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method private delSelectItem(Lcn/nubia/music/online/model/MediaModel;Landroid/widget/CheckBox;)V
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 656
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 657
    return-void
.end method

.method private filterUnavailableSongs(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 203
    :cond_0
    const/4 v0, 0x0

    .line 218
    :goto_0
    return-object v0

    .line 206
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 208
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 209
    instance-of v1, v0, Lcn/nubia/music/online/model/MusicModel;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 210
    check-cast v1, Lcn/nubia/music/online/model/MusicModel;

    iget v1, v1, Lcn/nubia/music/online/model/MusicModel;->mAudioType:I

    if-nez v1, :cond_3

    .line 211
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 212
    :cond_3
    const/4 v4, 0x1

    move-object v1, v0

    check-cast v1, Lcn/nubia/music/online/model/MusicModel;

    iget v1, v1, Lcn/nubia/music/online/model/MusicModel;->mAudioType:I

    if-ne v4, v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcn/nubia/music/online/model/MusicModel;

    iget-boolean v1, v1, Lcn/nubia/music/online/model/MusicModel;->mAvaliable:Z

    if-eqz v1, :cond_2

    .line 213
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object v0, v2

    .line 218
    goto :goto_0
.end method

.method private getAllAudioIds()[J
    .locals 6

    .prologue
    .line 250
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 251
    const/4 v0, 0x0

    .line 258
    :goto_0
    return-object v0

    .line 254
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [J

    .line 255
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, v2

    if-ge v1, v0, :cond_1

    .line 256
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    iget-wide v4, v0, Lcn/nubia/music/online/model/MediaModel;->mMediaId:J

    aput-wide v4, v2, v1

    .line 255
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 258
    goto :goto_0
.end method

.method private getAllSongsMap(Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 223
    :cond_0
    const/4 v0, 0x0

    .line 230
    :goto_0
    return-object v0

    .line 225
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 226
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 227
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 230
    goto :goto_0
.end method

.method private getDefaultBitmap()V
    .locals 7

    .prologue
    .line 1054
    const v0, 0x7f0d00d1

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDimension(I)F

    move-result v0

    float-to-int v2, v0

    .line 1056
    const v0, 0x7f0d00d0

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDimension(I)F

    move-result v0

    float-to-int v3, v0

    .line 1058
    const-wide v4, 0x3fe6666666666666L    # 0.7

    const v6, 0x7f020080

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcn/nubia/music/ui/ThemeColor;->getGridDrawable(Landroid/content/Context;IIDI)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mBmpDefaultListDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 1062
    return-void
.end method

.method private getFilteredAudioIds()[J
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 234
    iget-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v1, v1, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-object v0

    .line 238
    :cond_1
    iget-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v1, v1, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcn/nubia/music/activity/BaseDetailListActivity;->filterUnavailableSongs(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 239
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [J

    .line 243
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, v2

    if-ge v1, v0, :cond_2

    .line 244
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    iget-wide v4, v0, Lcn/nubia/music/online/model/MediaModel;->mMediaId:J

    aput-wide v4, v2, v1

    .line 243
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 246
    goto :goto_0
.end method

.method private getSongIdlist([J)[J
    .locals 6

    .prologue
    .line 1032
    if-nez p1, :cond_0

    .line 1033
    const/4 v0, 0x0

    .line 1040
    :goto_0
    return-object v0

    .line 1035
    :cond_0
    array-length v0, p1

    new-array v2, v0, [J

    .line 1036
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 1037
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    aget-wide v4, p1, v1

    long-to-int v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    iget-wide v4, v0, Lcn/nubia/music/online/model/MediaModel;->mMediaId:J

    aput-wide v4, v2, v1

    .line 1036
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 1040
    goto :goto_0
.end method

.method private hasSelectAll()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 686
    iget-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v1, v1, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcn/nubia/music/activity/BaseDetailListActivity;->filterUnavailableSongs(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 687
    if-nez v1, :cond_1

    .line 690
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v2, v2, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initEmptyView()V
    .locals 2

    .prologue
    .line 304
    const v0, 0x7f10007c

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseDetailListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    iput-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    .line 305
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    new-instance v1, Lcn/nubia/music/activity/BaseDetailListActivity$5;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/BaseDetailListActivity$5;-><init>(Lcn/nubia/music/activity/BaseDetailListActivity;)V

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->setRefreshListener(Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout$RefreshClickListener;)V

    .line 311
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    new-instance v1, Lcn/nubia/music/activity/BaseDetailListActivity$6;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/BaseDetailListActivity$6;-><init>(Lcn/nubia/music/activity/BaseDetailListActivity;)V

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->setAddSongListener(Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout$AddSongListener;)V

    .line 318
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    const v1, 0x7f10009a

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAlbumImg:Landroid/widget/ImageView;

    .line 319
    return-void
.end method

.method private initHeadViews()V
    .locals 0

    .prologue
    .line 292
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->initActionBar()V

    .line 293
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->initHeaer()V

    .line 294
    return-void
.end method

.method private initListView()V
    .locals 2

    .prologue
    .line 321
    const v0, 0x7f100073

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseDetailListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mToneList:Landroid/widget/ListView;

    .line 322
    new-instance v0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;-><init>(Lcn/nubia/music/activity/BaseDetailListActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    .line 323
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mToneList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 324
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    .line 325
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mToneList:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 326
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mToneList:Landroid/widget/ListView;

    new-instance v1, Lcn/nubia/music/activity/BaseDetailListActivity$7;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/BaseDetailListActivity$7;-><init>(Lcn/nubia/music/activity/BaseDetailListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 335
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->allowMultiChoice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mToneList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 338
    :cond_0
    return-void
.end method

.method private initStatusBar()V
    .locals 3

    .prologue
    .line 262
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 265
    const/16 v2, 0x2500

    .line 266
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 267
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 268
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 269
    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 297
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->initHeadViews()V

    .line 298
    const v0, 0x7f10007a

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseDetailListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/ui/MiniMusicPlayBar;

    iput-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mMiniPlayBar:Lcn/nubia/music/ui/MiniMusicPlayBar;

    .line 299
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->initEmptyView()V

    .line 300
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->initListView()V

    .line 301
    return-void
.end method

.method private isInvalidList([J)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 525
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 536
    :cond_0
    :goto_0
    return v0

    .line 529
    :cond_1
    array-length v3, p1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_3

    aget-wide v4, p1, v2

    .line 530
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 531
    const-string v1, "base more selected id < 0"

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 529
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 536
    goto :goto_0
.end method

.method private playAllSongs()V
    .locals 2

    .prologue
    .line 194
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->getFilteredAudioIds()[J

    move-result-object v0

    .line 195
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 196
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/music/app/MusicPlayer;->playAll([JI)V

    .line 199
    :cond_0
    return-void
.end method

.method private selectAll()V
    .locals 4

    .prologue
    .line 694
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 695
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mCheckedPosition:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 696
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcn/nubia/music/activity/BaseDetailListActivity;->filterUnavailableSongs(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 697
    iget-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v1, v1, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcn/nubia/music/activity/BaseDetailListActivity;->getAllSongsMap(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v1

    .line 698
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 702
    iget-object v3, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v3, v3, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 703
    iget-object v3, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v3, v3, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mCheckedPosition:Ljava/util/Set;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 706
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->notifyDataSetChanged()V

    .line 707
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->updateSelectedNum()V

    goto :goto_0
.end method

.method private static selectDefaultPlaylistCover(J)I
    .locals 4

    .prologue
    .line 1159
    const-wide/16 v0, 0xc

    rem-long v0, p0, v0

    long-to-int v0, v0

    .line 1160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1161
    packed-switch v0, :pswitch_data_0

    .line 1170
    :pswitch_0
    const v0, 0x7f0200b8

    :goto_0
    return v0

    .line 1168
    :pswitch_1
    const v0, 0x7f0200be

    goto :goto_0

    .line 1161
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private selectItem(Lcn/nubia/music/online/model/MediaModel;Landroid/widget/CheckBox;)V
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 661
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 662
    return-void
.end method

.method private selectNone()V
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 712
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mCheckedPosition:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 713
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->notifyDataSetChanged()V

    .line 714
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->updateSelectedNum()V

    .line 715
    return-void
.end method

.method private selectOrNot(Lcn/nubia/music/online/model/MediaModel;Landroid/widget/CheckBox;I)V
    .locals 2

    .prologue
    .line 665
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mCheckedPosition:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 667
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/activity/BaseDetailListActivity;->delSelectItem(Lcn/nubia/music/online/model/MediaModel;Landroid/widget/CheckBox;)V

    .line 673
    :goto_0
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->hasSelectAll()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/music/activity/BaseDetailListActivity;->setAllSelectedIcon(Z)V

    .line 674
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->updateSelectedNum()V

    .line 675
    return-void

    .line 669
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mCheckedPosition:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 670
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/activity/BaseDetailListActivity;->selectItem(Lcn/nubia/music/online/model/MediaModel;Landroid/widget/CheckBox;)V

    goto :goto_0
.end method

.method private setActionModeState(Z)V
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    invoke-virtual {v0, p1}, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->setActionModeState(Z)V

    .line 719
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->notifyDataSetChanged()V

    .line 720
    return-void
.end method

.method private setAllSelectedIcon(Z)V
    .locals 1

    .prologue
    .line 678
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->getActionBarContextView()Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    move-result-object v0

    .line 679
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getSelectCheckedTextView()Landroid/widget/CheckedTextView;

    move-result-object v0

    .line 680
    :goto_0
    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 683
    :cond_0
    return-void

    .line 679
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDetailDefault(ILandroid/widget/ImageView;J)V
    .locals 3

    .prologue
    .line 1138
    const/4 v0, 0x0

    .line 1139
    packed-switch p1, :pswitch_data_0

    .line 1150
    const-string v1, " error detail type "

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 1153
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAlbumBitmap:Landroid/graphics/Bitmap;

    .line 1154
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAlbumBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1155
    return-void

    .line 1141
    :pswitch_0
    const v0, 0x7f0200b9

    .line 1142
    goto :goto_0

    .line 1144
    :pswitch_1
    const v0, 0x7f0200bc

    .line 1145
    goto :goto_0

    .line 1147
    :pswitch_2
    invoke-static {p3, p4}, Lcn/nubia/music/activity/BaseDetailListActivity;->selectDefaultPlaylistCover(J)I

    move-result v0

    goto :goto_0

    .line 1139
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showLoadingData()V
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->setVisibility(I)V

    .line 626
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->showProgress()V

    .line 627
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    const v1, 0x7f0b0142

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->setEmptyTipText(Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->hideRefreshImageview()V

    .line 629
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->hideRefreshButton()V

    .line 630
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->hideArtistAlbums()V

    .line 631
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mToneList:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 633
    :cond_0
    return-void
.end method

.method private showNoData()V
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->setLocalNodata()V

    .line 652
    :cond_0
    return-void
.end method

.method private startActionMode()V
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->startActionMode()V

    .line 728
    return-void
.end method

.method private updateSelectedNum()V
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->updateSelectedNum()V

    .line 724
    return-void
.end method


# virtual methods
.method protected addAllToPlaying()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 190
    new-instance v0, Lcn/nubia/music/activity/BaseDetailListActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/music/activity/BaseDetailListActivity$a;-><init>(Lcn/nubia/music/activity/BaseDetailListActivity;Lcn/nubia/music/activity/BaseDetailListActivity$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcn/nubia/music/activity/BaseDetailListActivity$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 191
    return-void
.end method

.method protected addSongToPlaylist()V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method protected afterCreatePlaylistLoadData()V
    .locals 1

    .prologue
    .line 359
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->showLoadingData()V

    .line 360
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->hideAddSongBtn()V

    .line 361
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->loadData()V

    .line 362
    return-void
.end method

.method protected allowMultiChoice()Z
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x1

    return v0
.end method

.method protected doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1106
    sget-boolean v0, Lcn/nubia/music/third/StatisticsEvent;->UMENG_OPEN:Z

    if-eqz v0, :cond_0

    .line 1107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1108
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    invoke-static {p0, p1, v0}, Lcn/nubia/music/third/StatisticsEvent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1111
    :cond_0
    return-void
.end method

.method public exitActionMode()V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 561
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/music/activity/BaseDetailListActivity;->setActionModeState(Z)V

    .line 563
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->exitActionMode()V

    .line 566
    :cond_0
    return-void
.end method

.method protected firstLoading()V
    .locals 1

    .prologue
    .line 617
    const-string v0, "firstLoading"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 618
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->showLoadingData()V

    .line 619
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->loadNeedRefreshData()V

    .line 620
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->loadData()V

    .line 621
    return-void
.end method

.method public getScrollableView()Landroid/view/View;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mToneList:Landroid/widget/ListView;

    return-object v0
.end method

.method protected abstract getUmengEventId()Ljava/lang/String;
.end method

.method protected abstract getUmengEventKey()Ljava/lang/String;
.end method

.method protected hideContent()V
    .locals 2

    .prologue
    .line 1083
    const v0, 0x7f10006a

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseDetailListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1084
    return-void
.end method

.method protected initActionBar()V
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayOptions(I)V

    .line 81
    const v1, 0x7f030027

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setCustomView(I)V

    .line 82
    new-instance v0, Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    .line 83
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    new-instance v1, Lcn/nubia/music/activity/BaseDetailListActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/BaseDetailListActivity$1;-><init>(Lcn/nubia/music/activity/BaseDetailListActivity;)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 89
    const v0, 0x7f10008f

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseDetailListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mMoreButton:Landroid/widget/ImageView;

    .line 90
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mMoreButton:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/music/activity/BaseDetailListActivity$3;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/BaseDetailListActivity$3;-><init>(Lcn/nubia/music/activity/BaseDetailListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v0, 0x7f10008e

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseDetailListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/nubia/music/activity/BaseDetailListActivity$4;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/BaseDetailListActivity$4;-><init>(Lcn/nubia/music/activity/BaseDetailListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :cond_0
    return-void
.end method

.method protected initHeaer()V
    .locals 2

    .prologue
    .line 370
    const v0, 0x7f10006a

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseDetailListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/nubia/music/activity/BaseDetailListActivity$9;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/BaseDetailListActivity$9;-><init>(Lcn/nubia/music/activity/BaseDetailListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    return-void
.end method

.method protected isActive()Z
    .locals 1

    .prologue
    .line 1175
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract loadData()V
.end method

.method protected loadNeedRefreshData()V
    .locals 0

    .prologue
    .line 1047
    return-void
.end method

.method protected nodataOption()V
    .locals 0

    .prologue
    .line 1051
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 12

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcn/nubia/music/activity/BaseFragmentActivity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 124
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 126
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 130
    const/4 v3, 0x0

    .line 133
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 136
    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v6, :cond_4

    .line 137
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 139
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.android.internal.widget.ActionBarContainer"

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    move-object v2, v1

    .line 140
    check-cast v2, Landroid/view/ViewGroup;

    .line 141
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 142
    const/4 v1, 0x0

    move v5, v1

    :goto_1
    if-ge v5, v7, :cond_3

    .line 143
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 144
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 145
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.widget.ActionMenuView"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    .line 146
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    .line 147
    check-cast v1, Landroid/widget/LinearLayout;

    .line 148
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    .line 149
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v8, :cond_2

    .line 150
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 151
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 152
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.android.internal.view.menu.ActionMenuItemView"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_0

    .line 154
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 149
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    move-object v1, v3

    .line 142
    :cond_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v3, v1

    goto :goto_1

    .line 136
    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 161
    :cond_4
    if-eqz v3, :cond_5

    .line 162
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 164
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 165
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    :cond_5
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1007
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mIsStartedDeleteActivity:Z

    .line 1009
    sparse-switch p1, :sswitch_data_0

    .line 1029
    :cond_0
    :goto_0
    return-void

    .line 1011
    :sswitch_0
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->exitActionMode()V

    goto :goto_0

    .line 1014
    :sswitch_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->isActionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1016
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->exitActionMode()V

    .line 1021
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1022
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->nodataOption()V

    goto :goto_0

    .line 1009
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method protected onComplete(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1065
    if-eqz p1, :cond_0

    .line 1066
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->showContent()V

    .line 1067
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1068
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1069
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->notifyDataSetChanged()V

    .line 1070
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->updateMorePopupItems()V

    .line 1079
    :goto_0
    return-void

    .line 1072
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1073
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->notifyDataSetChanged()V

    .line 1074
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->showNoData()V

    .line 1075
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->hideContent()V

    .line 1076
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->nodataOption()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 273
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->initStatusBar()V

    .line 274
    invoke-super {p0, p1}, Lcn/nubia/music/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 275
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseDetailListActivity;->setContentView(I)V

    .line 276
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->initViews()V

    .line 277
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mHandler:Landroid/os/Handler;

    .line 278
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->getDefaultBitmap()V

    .line 279
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->allowMultiChoice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mToneList:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseDetailListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 282
    :cond_0
    new-instance v0, Lcn/nubia/music/app/menu/MusicListActionModManager;

    iget-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mModeManagerListener:Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    invoke-direct {v0, p0, v1}, Lcn/nubia/music/app/menu/MusicListActionModManager;-><init>(Landroid/content/Context;Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;)V

    iput-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    .line 283
    new-instance v0, Lcn/nubia/music/activity/BaseDetailListActivity$DataSetObserver;

    iget-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/music/activity/BaseDetailListActivity$DataSetObserver;-><init>(Lcn/nubia/music/activity/BaseDetailListActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mDataSetObserver:Landroid/database/ContentObserver;

    .line 284
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 285
    const-string v1, "cn.nubia.music.preset.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v1, v2}, Lcn/nubia/music/activity/BaseDetailListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 287
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "cn.nubia.music.preset.metachanged"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 288
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->firstLoading()V

    .line 289
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 583
    invoke-super {p0}, Lcn/nubia/music/activity/BaseFragmentActivity;->onDestroy()V

    .line 584
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAlbumBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAlbumBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAlbumBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 586
    iput-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAlbumBitmap:Landroid/graphics/Bitmap;

    .line 588
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mToneList:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseDetailListActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 589
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 590
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 592
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mMiniPlayBar:Lcn/nubia/music/ui/MiniMusicPlayBar;

    if-eqz v0, :cond_2

    .line 593
    const-string v0, "unbindServiceAndUnRegisteReceiver basemore"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mMiniPlayBar:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->unbindServiceAndUnRegisteReceiver()V

    .line 598
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mDataSetObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_3

    .line 599
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mDataSetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 601
    :cond_3
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 602
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseDetailListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :cond_4
    :goto_0
    return-void

    .line 604
    :catch_0
    move-exception v0

    .line 605
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 765
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mToneList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v4, p3, v0

    .line 767
    if-ltz v4, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v4, v0, :cond_1

    .line 808
    :cond_0
    :goto_0
    return-void

    .line 771
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->isActionMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 772
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    invoke-virtual {v0, v4}, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 773
    const v1, 0x7f10005f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 774
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 777
    if-eqz v0, :cond_2

    const/4 v5, 0x1

    move-object v2, v0

    check-cast v2, Lcn/nubia/music/online/model/MusicModel;

    iget v2, v2, Lcn/nubia/music/online/model/MusicModel;->mAudioType:I

    if-ne v5, v2, :cond_2

    move-object v2, v0

    check-cast v2, Lcn/nubia/music/online/model/MusicModel;

    iget-boolean v2, v2, Lcn/nubia/music/online/model/MusicModel;->mAvaliable:Z

    if-nez v2, :cond_2

    .line 779
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 782
    :cond_2
    invoke-direct {p0, v0, v1, v4}, Lcn/nubia/music/activity/BaseDetailListActivity;->selectOrNot(Lcn/nubia/music/online/model/MediaModel;Landroid/widget/CheckBox;I)V

    goto :goto_0

    .line 785
    :cond_3
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 786
    const-string v1, "onListItemClick"

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 787
    if-eqz v0, :cond_0

    .line 791
    iget-boolean v1, v0, Lcn/nubia/music/online/model/MediaModel;->mIsLocal:Z

    if-eqz v1, :cond_0

    .line 792
    const-string v1, "local song"

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 793
    instance-of v1, v0, Lcn/nubia/music/online/model/MusicModel;

    if-eqz v1, :cond_0

    check-cast v0, Lcn/nubia/music/online/model/MusicModel;

    iget v0, v0, Lcn/nubia/music/online/model/MusicModel;->mAudioType:I

    if-nez v0, :cond_0

    .line 794
    const-string v0, "local song, actual local"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [J

    move v1, v3

    .line 796
    :goto_1
    array-length v0, v2

    if-ge v1, v0, :cond_4

    .line 797
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    iget-wide v6, v0, Lcn/nubia/music/online/model/MediaModel;->mMediaId:J

    aput-wide v6, v2, v1

    .line 796
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 800
    :cond_4
    new-instance v0, Lcn/nubia/music/activity/BaseDetailListActivity$2;

    invoke-direct {v0, p0, v2, v4}, Lcn/nubia/music/activity/BaseDetailListActivity$2;-><init>(Lcn/nubia/music/activity/BaseDetailListActivity;[JI)V

    invoke-static {v0}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 732
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mToneList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 734
    if-gez v0, :cond_1

    move v3, v4

    .line 739
    :goto_0
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    invoke-virtual {v0, v3}, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 740
    const v1, 0x7f10005f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 742
    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    .line 760
    :cond_0
    :goto_1
    return v5

    .line 736
    :cond_1
    iget-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    invoke-virtual {v1}, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_5

    .line 737
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    goto :goto_0

    .line 746
    :cond_2
    if-eqz v0, :cond_3

    move-object v2, v0

    check-cast v2, Lcn/nubia/music/online/model/MusicModel;

    iget v2, v2, Lcn/nubia/music/online/model/MusicModel;->mAudioType:I

    if-ne v5, v2, :cond_3

    move-object v2, v0

    check-cast v2, Lcn/nubia/music/online/model/MusicModel;

    iget-boolean v2, v2, Lcn/nubia/music/online/model/MusicModel;->mAvaliable:Z

    if-nez v2, :cond_3

    .line 748
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 751
    :cond_3
    iget-object v2, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v2}, Lcn/nubia/music/app/menu/MusicListActionModManager;->isActionMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 752
    invoke-direct {p0, v0, v1, v3}, Lcn/nubia/music/activity/BaseDetailListActivity;->selectOrNot(Lcn/nubia/music/online/model/MediaModel;Landroid/widget/CheckBox;I)V

    goto :goto_1

    .line 754
    :cond_4
    iget-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v1, v1, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 755
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mCheckedPosition:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 756
    invoke-direct {p0, v5}, Lcn/nubia/music/activity/BaseDetailListActivity;->setActionModeState(Z)V

    .line 757
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->startActionMode()V

    goto :goto_1

    :cond_5
    move v3, v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/16 v1, 0x19

    .line 571
    const/16 v0, 0x52

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    .line 572
    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->isActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->getActionMode()Lcn/nubia/commonui/actionbar/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    .line 573
    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->getActionMode()Lcn/nubia/commonui/actionbar/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    .line 574
    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->getActionMode()Lcn/nubia/commonui/actionbar/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    .line 575
    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->getActionMode()Lcn/nubia/commonui/actionbar/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->showActionbarMorePopup()V

    .line 578
    :cond_0
    invoke-super {p0, p1, p2}, Lcn/nubia/music/activity/BaseFragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 115
    const/16 v0, 0x8

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mMoreButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    iget-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setAnchorView(Landroid/view/View;)V

    .line 117
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->show()V

    .line 119
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 612
    invoke-super {p0}, Lcn/nubia/music/activity/BaseFragmentActivity;->onPause()V

    .line 613
    return-void
.end method

.method protected setDetailAlbum(ILjava/lang/String;Landroid/widget/ImageView;J)V
    .locals 2

    .prologue
    .line 1125
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    invoke-direct {p0, p1, p3, p4, p5}, Lcn/nubia/music/activity/BaseDetailListActivity;->setDetailDefault(ILandroid/widget/ImageView;J)V

    .line 1135
    :goto_0
    return-void

    .line 1128
    :cond_0
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAlbumBitmap:Landroid/graphics/Bitmap;

    .line 1129
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAlbumBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAlbumBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1130
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAlbumBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1132
    :cond_1
    invoke-direct {p0, p1, p3, p4, p5}, Lcn/nubia/music/activity/BaseDetailListActivity;->setDetailDefault(ILandroid/widget/ImageView;J)V

    goto :goto_0
.end method

.method protected setListItemTitle(Lcn/nubia/music/online/model/MediaModel;Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;)V
    .locals 2

    .prologue
    .line 813
    iget-object v0, p2, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcn/nubia/music/online/model/MediaModel;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 814
    iget-object v0, p2, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lcn/nubia/music/online/model/MediaModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    return-void
.end method

.method protected setLocalNodata()V
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->hideProgress()V

    .line 638
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->hideArtistAlbums()V

    .line 639
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->hideRefreshImageview()V

    .line 640
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->hideRefreshButton()V

    .line 642
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->setEmptyTipText(Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->showAddSongBtn()V

    .line 645
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mToneList:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 646
    return-void
.end method

.method protected showContent()V
    .locals 2

    .prologue
    .line 1087
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->notifyDataSetChanged()V

    .line 1089
    const v0, 0x7f10006a

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseDetailListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1090
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 1094
    invoke-super {p0, p1, p2}, Lcn/nubia/music/activity/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "base more delete code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 1096
    const/16 v0, 0xe

    if-eq p2, v0, :cond_0

    const/16 v0, 0xa

    if-ne p2, v0, :cond_1

    .line 1097
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity;->mIsStartedDeleteActivity:Z

    .line 1099
    :cond_1
    return-void
.end method

.method protected updateMorePopupItems()V
    .locals 0

    .prologue
    .line 1115
    return-void
.end method
