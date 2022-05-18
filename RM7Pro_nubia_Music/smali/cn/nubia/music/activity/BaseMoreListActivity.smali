.class public abstract Lcn/nubia/music/activity/BaseMoreListActivity;
.super Lcn/nubia/music/activity/BaseListActivity;
.source "BaseMoreListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcn/nubia/music/activity/presenter/BaseMoreListContract$View;
.implements Lcn/nubia/music/app/menu/MusicMenu;
.implements Lcn/nubia/music/ui/ScrollRefreshListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;,
        Lcn/nubia/music/activity/BaseMoreListActivity$DataSetObserver;,
        Lcn/nubia/music/activity/BaseMoreListActivity$a;,
        Lcn/nubia/music/activity/BaseMoreListActivity$State;
    }
.end annotation


# instance fields
.field protected mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

.field protected mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

.field protected mAlbumImg:Landroid/widget/ImageView;

.field protected mBmpDefaultListDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field protected mContentView:Landroid/view/View;

.field private mCurrCount:I

.field private mDataExceptionStr:Ljava/lang/String;

.field protected mDataSetObserver:Landroid/database/ContentObserver;

.field protected mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

.field protected mHandler:Landroid/os/Handler;

.field protected mHeaderDistance:I

.field protected mHeaderView:Landroid/view/View;

.field protected mHeaderViewSrc:Landroid/graphics/Bitmap;

.field protected mIsStartedDeleteActivity:Z

.field protected mListViewHeader:Landroid/view/View;

.field protected mListViewHeader2:Landroid/view/View;

.field private mMiniPlayBar:Lcn/nubia/music/ui/MiniMusicPlayBar;

.field protected mModeManagerListener:Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

.field protected mNeedListViewRefresh:Z

.field protected mPageNumber:I

.field protected mPlayAllViewInListView:Landroid/view/View;

.field protected mPlayallView:Landroid/view/View;

.field protected mPlaylistId:Ljava/lang/String;

.field protected mPresenter:Lcn/nubia/music/activity/presenter/BaseMoreListContract$Presenter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field protected mState:Lcn/nubia/music/activity/BaseMoreListActivity$State;

.field protected mToneList:Lcn/nubia/music/ui/ScrollRefreshListView;

.field protected mTotalCount:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseListActivity;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mPageNumber:I

    .line 51
    iput v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mTotalCount:I

    .line 54
    iput-boolean v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mNeedListViewRefresh:Z

    .line 58
    iput-object v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mBmpDefaultListDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mHeaderDistance:I

    .line 72
    sget-object v0, Lcn/nubia/music/activity/BaseMoreListActivity$State;->IDLE:Lcn/nubia/music/activity/BaseMoreListActivity$State;

    iput-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mState:Lcn/nubia/music/activity/BaseMoreListActivity$State;

    .line 76
    iput-boolean v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mIsStartedDeleteActivity:Z

    .line 314
    new-instance v0, Lcn/nubia/music/activity/BaseMoreListActivity$4;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/BaseMoreListActivity$4;-><init>(Lcn/nubia/music/activity/BaseMoreListActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 325
    iput-object v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAlbumImg:Landroid/widget/ImageView;

    .line 356
    new-instance v0, Lcn/nubia/music/activity/BaseMoreListActivity$6;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/BaseMoreListActivity$6;-><init>(Lcn/nubia/music/activity/BaseMoreListActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mModeManagerListener:Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    .line 1163
    iput v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mCurrCount:I

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/activity/BaseMoreListActivity;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->addtoPlayingCmpl()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/music/activity/BaseMoreListActivity;[J)Z
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/BaseMoreListActivity;->isInvalidList([J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/music/activity/BaseMoreListActivity;)[J
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->getAllAudioIds()[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/music/activity/BaseMoreListActivity;[J)[J
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/BaseMoreListActivity;->getSongIdlist([J)[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/music/activity/BaseMoreListActivity;)Lcn/nubia/music/ui/MiniMusicPlayBar;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mMiniPlayBar:Lcn/nubia/music/ui/MiniMusicPlayBar;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/music/activity/BaseMoreListActivity;Z)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/BaseMoreListActivity;->setActionModeState(Z)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/music/activity/BaseMoreListActivity;)Z
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->hasSelectAll()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcn/nubia/music/activity/BaseMoreListActivity;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->selectNone()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/music/activity/BaseMoreListActivity;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->selectAll()V

    return-void
.end method

.method private addtoPlayingCmpl()V
    .locals 3

    .prologue
    .line 89
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->getFilteredAudioIds()[J

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 91
    invoke-static {p0, v0}, Lcn/nubia/music/utils/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b019f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method private delSelectItem(Lcn/nubia/music/online/model/MediaModel;Landroid/widget/CheckBox;)V
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 669
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 670
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
    .line 111
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 112
    :cond_0
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    .line 115
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 117
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

    .line 118
    instance-of v1, v0, Lcn/nubia/music/online/model/MusicModel;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 119
    check-cast v1, Lcn/nubia/music/online/model/MusicModel;

    iget v1, v1, Lcn/nubia/music/online/model/MusicModel;->mAudioType:I

    if-nez v1, :cond_3

    .line 121
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 122
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

    .line 123
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object v0, v2

    .line 128
    goto :goto_0
.end method

.method private getAllAudioIds()[J
    .locals 6

    .prologue
    .line 160
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 168
    :goto_0
    return-object v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [J

    .line 165
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, v2

    if-ge v1, v0, :cond_1

    .line 166
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    iget-wide v4, v0, Lcn/nubia/music/online/model/MediaModel;->mMediaId:J

    aput-wide v4, v2, v1

    .line 165
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 168
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
    .line 132
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 133
    :cond_0
    const/4 v0, 0x0

    .line 140
    :goto_0
    return-object v0

    .line 135
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 136
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 137
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 140
    goto :goto_0
.end method

.method private getDefaultBitmap()V
    .locals 7

    .prologue
    .line 1087
    const v0, 0x7f0d00d1

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDimension(I)F

    move-result v0

    float-to-int v2, v0

    .line 1089
    const v0, 0x7f0d00d0

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDimension(I)F

    move-result v0

    float-to-int v3, v0

    .line 1091
    const-wide v4, 0x3fe6666666666666L    # 0.7

    const v6, 0x7f020080

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcn/nubia/music/ui/ThemeColor;->getGridDrawable(Landroid/content/Context;IIDI)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mBmpDefaultListDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 1095
    return-void
.end method

.method private getFilteredAudioIds()[J
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 144
    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v1, v1, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-object v0

    .line 148
    :cond_1
    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v1, v1, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcn/nubia/music/activity/BaseMoreListActivity;->filterUnavailableSongs(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 149
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [J

    .line 153
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, v2

    if-ge v1, v0, :cond_2

    .line 154
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    iget-wide v4, v0, Lcn/nubia/music/online/model/MediaModel;->mMediaId:J

    aput-wide v4, v2, v1

    .line 153
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 156
    goto :goto_0
.end method

.method private getSongIdlist([J)[J
    .locals 6

    .prologue
    .line 1065
    if-nez p1, :cond_0

    .line 1066
    const/4 v0, 0x0

    .line 1073
    :goto_0
    return-object v0

    .line 1068
    :cond_0
    array-length v0, p1

    new-array v2, v0, [J

    .line 1069
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 1070
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    aget-wide v4, p1, v1

    long-to-int v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    iget-wide v4, v0, Lcn/nubia/music/online/model/MediaModel;->mMediaId:J

    aput-wide v4, v2, v1

    .line 1069
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 1073
    goto :goto_0
.end method

.method private hasSelectAll()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 699
    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v1, v1, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcn/nubia/music/activity/BaseMoreListActivity;->filterUnavailableSongs(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 700
    if-nez v1, :cond_1

    .line 703
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v2, v2, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isInvalidList([J)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 517
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 528
    :cond_0
    :goto_0
    return v0

    .line 521
    :cond_1
    array-length v3, p1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_3

    aget-wide v4, p1, v2

    .line 522
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 523
    const-string v1, "base more selected id < 0"

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 521
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 528
    goto :goto_0
.end method

.method private selectAll()V
    .locals 4

    .prologue
    .line 707
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 708
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mCheckedPosition:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 709
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->filterUnavailableSongs(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 710
    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v1, v1, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcn/nubia/music/activity/BaseMoreListActivity;->getAllSongsMap(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v1

    .line 711
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 714
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

    .line 715
    iget-object v3, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v3, v3, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 716
    iget-object v3, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v3, v3, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mCheckedPosition:Ljava/util/Set;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 719
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->notifyDataSetChanged()V

    .line 720
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->updateSelectedNum()V

    goto :goto_0
.end method

.method private selectItem(Lcn/nubia/music/online/model/MediaModel;Landroid/widget/CheckBox;)V
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 674
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 675
    return-void
.end method

.method private selectNone()V
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 725
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mCheckedPosition:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 726
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->notifyDataSetChanged()V

    .line 727
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->updateSelectedNum()V

    .line 728
    return-void
.end method

.method private selectOrNot(Lcn/nubia/music/online/model/MediaModel;Landroid/widget/CheckBox;I)V
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mCheckedPosition:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 680
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/activity/BaseMoreListActivity;->delSelectItem(Lcn/nubia/music/online/model/MediaModel;Landroid/widget/CheckBox;)V

    .line 686
    :goto_0
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->hasSelectAll()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->setAllSelectedIcon(Z)V

    .line 687
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->updateSelectedNum()V

    .line 688
    return-void

    .line 682
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mCheckedPosition:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 683
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/activity/BaseMoreListActivity;->selectItem(Lcn/nubia/music/online/model/MediaModel;Landroid/widget/CheckBox;)V

    goto :goto_0
.end method

.method private setActionModeState(Z)V
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    invoke-virtual {v0, p1}, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->setActionModeState(Z)V

    .line 732
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->notifyDataSetChanged()V

    .line 733
    return-void
.end method

.method private setAllSelectedIcon(Z)V
    .locals 1

    .prologue
    .line 691
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->getActionBarContextView()Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    move-result-object v0

    .line 692
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getSelectCheckedTextView()Landroid/widget/CheckedTextView;

    move-result-object v0

    .line 693
    :goto_0
    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 696
    :cond_0
    return-void

    .line 692
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showLoadAgain()V
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->hideProgress()V

    .line 641
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mDataExceptionStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->setEmptyTipText(Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->hideArtistAlbums()V

    .line 643
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->hideRefreshImageview()V

    .line 644
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->hideRefreshButton()V

    .line 645
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mToneList:Lcn/nubia/music/ui/ScrollRefreshListView;

    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/ScrollRefreshListView;->setEmptyView(Landroid/view/View;)V

    .line 647
    :cond_0
    return-void
.end method

.method private showLoadingData()V
    .locals 2

    .prologue
    .line 627
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->showProgress()V

    .line 630
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    const v1, 0x7f0b0142

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->setEmptyTipText(Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->hideRefreshImageview()V

    .line 632
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->hideRefreshButton()V

    .line 633
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->hideArtistAlbums()V

    .line 634
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mToneList:Lcn/nubia/music/ui/ScrollRefreshListView;

    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/ScrollRefreshListView;->setEmptyView(Landroid/view/View;)V

    .line 636
    :cond_0
    return-void
.end method

.method private showNoData()V
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->setLocalNodata()V

    .line 665
    :cond_0
    return-void
.end method

.method private startActionMode()V
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->startActionMode()V

    .line 741
    return-void
.end method

.method private updateSelectedNum()V
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->updateSelectedNum()V

    .line 737
    return-void
.end method


# virtual methods
.method protected addAllToPlaying()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 99
    new-instance v0, Lcn/nubia/music/activity/BaseMoreListActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/music/activity/BaseMoreListActivity$a;-><init>(Lcn/nubia/music/activity/BaseMoreListActivity;Lcn/nubia/music/activity/BaseMoreListActivity$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcn/nubia/music/activity/BaseMoreListActivity$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 100
    return-void
.end method

.method protected addSongToPlaylist()V
    .locals 0

    .prologue
    .line 337
    return-void
.end method

.method protected allowMultiChoice()Z
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x1

    return v0
.end method

.method protected doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1191
    sget-boolean v0, Lcn/nubia/music/third/StatisticsEvent;->UMENG_OPEN:Z

    if-eqz v0, :cond_0

    .line 1192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1193
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    invoke-static {p0, p1, v0}, Lcn/nubia/music/third/StatisticsEvent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1196
    :cond_0
    return-void
.end method

.method public exitActionMode()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 557
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->setActionModeState(Z)V

    .line 559
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->exitActionMode()V

    .line 562
    :cond_0
    return-void
.end method

.method protected firstLoading()V
    .locals 1

    .prologue
    .line 619
    const-string v0, "firstLoading"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 620
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->showLoadingData()V

    .line 621
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->loadNeedRefreshData()V

    .line 622
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->loadData()V

    .line 623
    sget-object v0, Lcn/nubia/music/activity/BaseMoreListActivity$State;->LOADING:Lcn/nubia/music/activity/BaseMoreListActivity$State;

    iput-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mState:Lcn/nubia/music/activity/BaseMoreListActivity$State;

    .line 624
    return-void
.end method

.method protected getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mPlayallView:Landroid/view/View;

    return-object v0
.end method

.method protected getListHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mListViewHeader:Landroid/view/View;

    return-object v0
.end method

.method protected abstract getUmengEventId()Ljava/lang/String;
.end method

.method protected abstract getUmengEventKey()Ljava/lang/String;
.end method

.method protected hideContent()V
    .locals 2

    .prologue
    .line 1155
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mContentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1156
    return-void
.end method

.method protected initHeaer()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mHeaderView:Landroid/view/View;

    const v1, 0x7f1000b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mPlayAllViewInListView:Landroid/view/View;

    .line 346
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mPlayAllViewInListView:Landroid/view/View;

    new-instance v1, Lcn/nubia/music/activity/BaseMoreListActivity$5;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/BaseMoreListActivity$5;-><init>(Lcn/nubia/music/activity/BaseMoreListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 1146
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isHasMoreMenu()Z
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract loadData()V
.end method

.method protected loadNeedRefreshData()V
    .locals 0

    .prologue
    .line 1080
    return-void
.end method

.method protected nodataOption()V
    .locals 0

    .prologue
    .line 1084
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1040
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mIsStartedDeleteActivity:Z

    .line 1042
    sparse-switch p1, :sswitch_data_0

    .line 1062
    :cond_0
    :goto_0
    return-void

    .line 1044
    :sswitch_0
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->exitActionMode()V

    goto :goto_0

    .line 1047
    :sswitch_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->isActionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1049
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->exitActionMode()V

    .line 1054
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1055
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->nodataOption()V

    goto :goto_0

    .line 1042
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 173
    invoke-super {p0, p1}, Lcn/nubia/music/activity/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 174
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mHandler:Landroid/os/Handler;

    .line 175
    const v0, 0x7f0b0040

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mDataExceptionStr:Ljava/lang/String;

    .line 176
    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->setContentView(I)V

    .line 178
    new-instance v0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;-><init>(Lcn/nubia/music/activity/BaseMoreListActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    .line 179
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/ui/ScrollRefreshListView;

    iput-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mToneList:Lcn/nubia/music/ui/ScrollRefreshListView;

    .line 181
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 182
    const v1, 0x7f030031

    iget-object v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mToneList:Lcn/nubia/music/ui/ScrollRefreshListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mHeaderView:Landroid/view/View;

    .line 184
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mHeaderView:Landroid/view/View;

    const v1, 0x7f1000b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mListViewHeader:Landroid/view/View;

    .line 185
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mHeaderView:Landroid/view/View;

    const v1, 0x7f1000bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mListViewHeader2:Landroid/view/View;

    .line 187
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->initHeaer()V

    .line 188
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mToneList:Lcn/nubia/music/ui/ScrollRefreshListView;

    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mHeaderView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/music/ui/ScrollRefreshListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 189
    const v0, 0x7f0d0132

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDimensionPixelSize(I)I

    move-result v1

    .line 192
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    .line 193
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 194
    const v0, 0x7f10007c

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    iput-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    .line 196
    iget-boolean v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mNeedListViewRefresh:Z

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mToneList:Lcn/nubia/music/ui/ScrollRefreshListView;

    invoke-virtual {v0, p0}, Lcn/nubia/music/ui/ScrollRefreshListView;->setOnRefreshListener(Lcn/nubia/music/ui/ScrollRefreshListView$OnRefreshListener;)V

    .line 200
    :cond_0
    const v0, 0x7f10007a

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/ui/MiniMusicPlayBar;

    iput-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mMiniPlayBar:Lcn/nubia/music/ui/MiniMusicPlayBar;

    .line 201
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->getDefaultBitmap()V

    .line 203
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->allowMultiChoice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mToneList:Lcn/nubia/music/ui/ScrollRefreshListView;

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 206
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    new-instance v2, Lcn/nubia/music/activity/BaseMoreListActivity$1;

    invoke-direct {v2, p0}, Lcn/nubia/music/activity/BaseMoreListActivity$1;-><init>(Lcn/nubia/music/activity/BaseMoreListActivity;)V

    invoke-virtual {v0, v2}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->setRefreshListener(Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout$RefreshClickListener;)V

    .line 215
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    new-instance v2, Lcn/nubia/music/activity/BaseMoreListActivity$2;

    invoke-direct {v2, p0}, Lcn/nubia/music/activity/BaseMoreListActivity$2;-><init>(Lcn/nubia/music/activity/BaseMoreListActivity;)V

    invoke-virtual {v0, v2}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->setAddSongListener(Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout$AddSongListener;)V

    .line 224
    new-instance v0, Lcn/nubia/music/activity/BaseMoreListActivity$DataSetObserver;

    iget-object v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcn/nubia/music/activity/BaseMoreListActivity$DataSetObserver;-><init>(Lcn/nubia/music/activity/BaseMoreListActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mDataSetObserver:Landroid/database/ContentObserver;

    .line 225
    new-instance v0, Lcn/nubia/music/app/menu/MusicListActionModManager;

    iget-object v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mModeManagerListener:Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    invoke-direct {v0, p0, v2}, Lcn/nubia/music/app/menu/MusicListActionModManager;-><init>(Landroid/content/Context;Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;)V

    iput-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    .line 227
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->allowMultiChoice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mToneList:Lcn/nubia/music/ui/ScrollRefreshListView;

    invoke-virtual {v0, p0}, Lcn/nubia/music/ui/ScrollRefreshListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 230
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 232
    const v0, 0x7f1000b7

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mContentView:Landroid/view/View;

    .line 234
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 235
    iget-object v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mToneList:Lcn/nubia/music/ui/ScrollRefreshListView;

    new-instance v3, Lcn/nubia/music/activity/BaseMoreListActivity$3;

    invoke-direct {v3, p0, v1, v0}, Lcn/nubia/music/activity/BaseMoreListActivity$3;-><init>(Lcn/nubia/music/activity/BaseMoreListActivity;ILandroid/graphics/Rect;)V

    invoke-virtual {v2, v3}, Lcn/nubia/music/ui/ScrollRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 304
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    if-eqz v0, :cond_3

    .line 305
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    const v1, 0x7f10009a

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAlbumImg:Landroid/widget/ImageView;

    .line 308
    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 309
    const-string v1, "cn.nubia.music.preset.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v1, v2}, Lcn/nubia/music/activity/BaseMoreListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 311
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "cn.nubia.music.preset.metachanged"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 312
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 579
    invoke-super {p0}, Lcn/nubia/music/activity/BaseListActivity;->onDestroy()V

    .line 580
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mToneList:Lcn/nubia/music/ui/ScrollRefreshListView;

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 581
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 584
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mMiniPlayBar:Lcn/nubia/music/ui/MiniMusicPlayBar;

    if-eqz v0, :cond_1

    .line 585
    const-string v0, "unbindServiceAndUnRegisteReceiver basemore"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mMiniPlayBar:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->unbindServiceAndUnRegisteReceiver()V

    .line 590
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mDataSetObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    .line 591
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mDataSetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 594
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 595
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    :cond_3
    :goto_0
    return-void

    .line 597
    :catch_0
    move-exception v0

    .line 598
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
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

    .line 745
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mToneList:Lcn/nubia/music/ui/ScrollRefreshListView;

    invoke-virtual {v0}, Lcn/nubia/music/ui/ScrollRefreshListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 747
    if-gez v0, :cond_1

    move v3, v4

    .line 752
    :goto_0
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    invoke-virtual {v0, v3}, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 753
    const v1, 0x7f10005f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 755
    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    .line 772
    :cond_0
    :goto_1
    return v5

    .line 749
    :cond_1
    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    invoke-virtual {v1}, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_5

    .line 750
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    goto :goto_0

    .line 759
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

    .line 761
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 764
    :cond_3
    iget-object v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v2}, Lcn/nubia/music/app/menu/MusicListActionModManager;->isActionMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 765
    invoke-direct {p0, v0, v1, v3}, Lcn/nubia/music/activity/BaseMoreListActivity;->selectOrNot(Lcn/nubia/music/online/model/MediaModel;Landroid/widget/CheckBox;I)V

    goto :goto_1

    .line 767
    :cond_4
    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v1, v1, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 768
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mCheckedPosition:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 769
    invoke-direct {p0, v5}, Lcn/nubia/music/activity/BaseMoreListActivity;->setActionModeState(Z)V

    .line 770
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->startActionMode()V

    goto :goto_1

    :cond_5
    move v3, v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/16 v1, 0x19

    .line 567
    const/16 v0, 0x52

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    .line 568
    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->isActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->getActionMode()Lcn/nubia/commonui/actionbar/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    .line 569
    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->getActionMode()Lcn/nubia/commonui/actionbar/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    .line 570
    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->getActionMode()Lcn/nubia/commonui/actionbar/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    .line 571
    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->getActionMode()Lcn/nubia/commonui/actionbar/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->showActionbarMorePopup()V

    .line 574
    :cond_0
    invoke-super {p0, p1, p2}, Lcn/nubia/music/activity/BaseListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 777
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mToneList:Lcn/nubia/music/ui/ScrollRefreshListView;

    invoke-virtual {v0}, Lcn/nubia/music/ui/ScrollRefreshListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v3, p3, v0

    .line 779
    if-ltz v3, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_1

    .line 822
    :cond_0
    :goto_0
    return-void

    .line 783
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->isActionMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 784
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    invoke-virtual {v0, v3}, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 785
    const v1, 0x7f10005f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 786
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 789
    if-eqz v0, :cond_2

    const/4 v4, 0x1

    move-object v2, v0

    check-cast v2, Lcn/nubia/music/online/model/MusicModel;

    iget v2, v2, Lcn/nubia/music/online/model/MusicModel;->mAudioType:I

    if-ne v4, v2, :cond_2

    move-object v2, v0

    check-cast v2, Lcn/nubia/music/online/model/MusicModel;

    iget-boolean v2, v2, Lcn/nubia/music/online/model/MusicModel;->mAvaliable:Z

    if-nez v2, :cond_2

    .line 791
    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 794
    :cond_2
    invoke-direct {p0, v0, v1, v3}, Lcn/nubia/music/activity/BaseMoreListActivity;->selectOrNot(Lcn/nubia/music/online/model/MediaModel;Landroid/widget/CheckBox;I)V

    goto :goto_0

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 797
    invoke-super/range {v0 .. v5}, Lcn/nubia/music/activity/BaseListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 799
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 800
    const-string v1, "onListItemClick"

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 801
    if-eqz v0, :cond_0

    .line 805
    iget-boolean v1, v0, Lcn/nubia/music/online/model/MediaModel;->mIsLocal:Z

    if-eqz v1, :cond_0

    .line 806
    const-string v1, "local song"

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 807
    instance-of v1, v0, Lcn/nubia/music/online/model/MusicModel;

    if-eqz v1, :cond_0

    check-cast v0, Lcn/nubia/music/online/model/MusicModel;

    iget v0, v0, Lcn/nubia/music/online/model/MusicModel;->mAudioType:I

    if-nez v0, :cond_0

    .line 808
    const-string v0, "local song, actual local"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [J

    move v1, v6

    .line 810
    :goto_1
    array-length v0, v2

    if-ge v1, v0, :cond_4

    .line 811
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    iget-wide v4, v0, Lcn/nubia/music/online/model/MediaModel;->mMediaId:J

    aput-wide v4, v2, v1

    .line 810
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 814
    :cond_4
    new-instance v0, Lcn/nubia/music/activity/BaseMoreListActivity$7;

    invoke-direct {v0, p0, v2, v3}, Lcn/nubia/music/activity/BaseMoreListActivity$7;-><init>(Lcn/nubia/music/activity/BaseMoreListActivity;[JI)V

    invoke-static {v0}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public onRefresh()V
    .locals 3

    .prologue
    .line 1167
    iget v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mCurrCount:I

    iget v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mTotalCount:I

    if-ge v0, v1, :cond_0

    .line 1168
    const-string v0, "list refresh"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->loadNeedRefreshData()V

    .line 1175
    :goto_0
    return-void

    .line 1171
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00ae

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;II)V

    .line 1173
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mToneList:Lcn/nubia/music/ui/ScrollRefreshListView;

    invoke-virtual {v0}, Lcn/nubia/music/ui/ScrollRefreshListView;->onRefreshComplete()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 604
    invoke-super {p0}, Lcn/nubia/music/activity/BaseListActivity;->onResume()V

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mState:Lcn/nubia/music/activity/BaseMoreListActivity$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mState:Lcn/nubia/music/activity/BaseMoreListActivity$State;

    sget-object v1, Lcn/nubia/music/activity/BaseMoreListActivity$State;->IDLE:Lcn/nubia/music/activity/BaseMoreListActivity$State;

    if-ne v0, v1, :cond_1

    .line 608
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->firstLoading()V

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mState:Lcn/nubia/music/activity/BaseMoreListActivity$State;

    sget-object v1, Lcn/nubia/music/activity/BaseMoreListActivity$State;->LOADING:Lcn/nubia/music/activity/BaseMoreListActivity$State;

    if-ne v0, v1, :cond_2

    .line 610
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->showLoadingData()V

    goto :goto_0

    .line 611
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mState:Lcn/nubia/music/activity/BaseMoreListActivity$State;

    sget-object v1, Lcn/nubia/music/activity/BaseMoreListActivity$State;->LOAD_ERROR:Lcn/nubia/music/activity/BaseMoreListActivity$State;

    if-ne v0, v1, :cond_3

    .line 612
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->showLoadAgain()V

    goto :goto_0

    .line 613
    :cond_3
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mState:Lcn/nubia/music/activity/BaseMoreListActivity$State;

    sget-object v1, Lcn/nubia/music/activity/BaseMoreListActivity$State;->LOAD_NULL:Lcn/nubia/music/activity/BaseMoreListActivity$State;

    if-ne v0, v1, :cond_0

    .line 614
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->showNoData()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1140
    invoke-super {p0}, Lcn/nubia/music/activity/BaseListActivity;->onStop()V

    .line 1141
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mPresenter:Lcn/nubia/music/activity/presenter/BaseMoreListContract$Presenter;

    invoke-interface {v0}, Lcn/nubia/music/activity/presenter/BaseMoreListContract$Presenter;->stop()V

    .line 1142
    return-void
.end method

.method protected playAllSongs()V
    .locals 2

    .prologue
    .line 103
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->getFilteredAudioIds()[J

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 105
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/music/app/MusicPlayer;->playAll([JI)V

    .line 108
    :cond_0
    return-void
.end method

.method protected setListItemImage(Lcn/nubia/music/online/model/MediaModel;Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 834
    return-void
.end method

.method protected setListItemTitle(Lcn/nubia/music/online/model/MediaModel;Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;)V
    .locals 2

    .prologue
    .line 827
    iget-object v0, p2, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcn/nubia/music/online/model/MediaModel;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 828
    iget-object v0, p2, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lcn/nubia/music/online/model/MediaModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 829
    return-void
.end method

.method protected setLocalNodata()V
    .locals 2

    .prologue
    .line 651
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->hideProgress()V

    .line 652
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->hideArtistAlbums()V

    .line 653
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->hideRefreshImageview()V

    .line 654
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->hideRefreshButton()V

    .line 655
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->setEmptyTipText(Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->showAddSongBtn()V

    .line 658
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mToneList:Lcn/nubia/music/ui/ScrollRefreshListView;

    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/ScrollRefreshListView;->setEmptyView(Landroid/view/View;)V

    .line 659
    return-void
.end method

.method public setPresenter(Lcn/nubia/music/activity/presenter/BaseMoreListContract$Presenter;)V
    .locals 0

    .prologue
    .line 1151
    iput-object p1, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mPresenter:Lcn/nubia/music/activity/presenter/BaseMoreListContract$Presenter;

    .line 1152
    return-void
.end method

.method public bridge synthetic setPresenter(Lcn/nubia/music/base/BasePresenter;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Lcn/nubia/music/activity/presenter/BaseMoreListContract$Presenter;

    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/BaseMoreListActivity;->setPresenter(Lcn/nubia/music/activity/presenter/BaseMoreListContract$Presenter;)V

    return-void
.end method

.method protected showContent()V
    .locals 2

    .prologue
    .line 1159
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1160
    return-void
.end method

.method public showDataSuccess(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1099
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1101
    if-eqz p1, :cond_4

    .line 1102
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->showContent()V

    .line 1103
    iput p2, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mTotalCount:I

    .line 1104
    iget v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mCurrCount:I

    iget v3, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mTotalCount:I

    if-lt v2, v3, :cond_0

    iget-boolean v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mNeedListViewRefresh:Z

    if-nez v2, :cond_2

    .line 1105
    :cond_0
    iget v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mCurrCount:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mCurrCount:I

    .line 1106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mCurrCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mCurrCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1107
    sget-object v2, Lcn/nubia/music/activity/BaseMoreListActivity$State;->LOAD_OK:Lcn/nubia/music/activity/BaseMoreListActivity$State;

    iput-object v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mState:Lcn/nubia/music/activity/BaseMoreListActivity$State;

    .line 1109
    iget-boolean v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mNeedListViewRefresh:Z

    if-nez v2, :cond_1

    .line 1110
    iget-object v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v2, v2, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1113
    :cond_1
    iget-object v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v2, v2, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1114
    iget-object v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    invoke-virtual {v2}, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->notifyDataSetChanged()V

    .line 1115
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcn/nubia/music/activity/BaseMoreListActivity;->setMoreButtonClick(Z)V

    .line 1116
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->updateMorePopupItems()V

    .line 1119
    :cond_2
    iget v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mPageNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mPageNumber:I

    .line 1132
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onComplete count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1133
    iget-object v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mToneList:Lcn/nubia/music/ui/ScrollRefreshListView;

    invoke-virtual {v2}, Lcn/nubia/music/ui/ScrollRefreshListView;->onRefreshComplete()V

    .line 1134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onComplete time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v0, v2, v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 1136
    return-void

    .line 1121
    :cond_4
    iget-boolean v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mNeedListViewRefresh:Z

    if-nez v2, :cond_3

    .line 1122
    iget-object v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v2, v2, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1123
    iget-object v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    invoke-virtual {v2}, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->notifyDataSetChanged()V

    .line 1124
    sget-object v2, Lcn/nubia/music/activity/BaseMoreListActivity$State;->LOAD_OK:Lcn/nubia/music/activity/BaseMoreListActivity$State;

    iput-object v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mState:Lcn/nubia/music/activity/BaseMoreListActivity$State;

    .line 1125
    iput p2, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mTotalCount:I

    .line 1126
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->showNoData()V

    .line 1127
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->hideContent()V

    .line 1128
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->nodataOption()V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 1179
    invoke-super {p0, p1, p2}, Lcn/nubia/music/activity/BaseListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1180
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

    .line 1181
    const/16 v0, 0xe

    if-eq p2, v0, :cond_0

    const/16 v0, 0xa

    if-ne p2, v0, :cond_1

    .line 1182
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity;->mIsStartedDeleteActivity:Z

    .line 1184
    :cond_1
    return-void
.end method

.method protected updateMorePopupItems()V
    .locals 0

    .prologue
    .line 1200
    return-void
.end method
