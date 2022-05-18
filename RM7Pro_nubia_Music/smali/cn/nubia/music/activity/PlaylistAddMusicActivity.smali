.class public Lcn/nubia/music/activity/PlaylistAddMusicActivity;
.super Lcn/nubia/music/activity/BaseSelectActivity;
.source "PlaylistAddMusicActivity.java"

# interfaces
.implements Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;,
        Lcn/nubia/music/activity/PlaylistAddMusicActivity$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "addplay"


# instance fields
.field private bFirstScan:Z

.field private mAdapter:Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;

.field private mChooseCount:I

.field private mChooseSongInfos:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcn/nubia/music/online/model/MusicModel;",
            ">;"
        }
    .end annotation
.end field

.field private mContentObserver:Lcn/nubia/music/activity/PlaylistAddMusicActivity$a;

.field private mDialog:Lcn/nubia/commonui/app/Dialog;

.field private mHandler:Landroid/os/Handler;

.field private mIsChooseAll:Z

.field private mListView:Landroid/widget/ListView;

.field private mPlaylistId:J

.field private mPresenter:Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$Presenter;

.field private mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

.field private mScanManager:Lcn/nubia/music/app/scan/MusicScanManager;

.field private mSongsItemClick:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseSelectActivity;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mChooseSongInfos:Ljava/util/HashSet;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->bFirstScan:Z

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mHandler:Landroid/os/Handler;

    .line 168
    new-instance v0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$3;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity$3;-><init>(Lcn/nubia/music/activity/PlaylistAddMusicActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mSongsItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/activity/PlaylistAddMusicActivity;)Lcn/nubia/commonui/app/Dialog;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mDialog:Lcn/nubia/commonui/app/Dialog;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/music/activity/PlaylistAddMusicActivity;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->bFirstScan:Z

    return p1
.end method

.method static synthetic access$202(Lcn/nubia/music/activity/PlaylistAddMusicActivity;Lcn/nubia/music/app/scan/MusicScanManager;)Lcn/nubia/music/app/scan/MusicScanManager;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mScanManager:Lcn/nubia/music/app/scan/MusicScanManager;

    return-object p1
.end method

.method static synthetic access$400(Lcn/nubia/music/activity/PlaylistAddMusicActivity;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->doQuery()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/music/activity/PlaylistAddMusicActivity;)Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mAdapter:Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/music/activity/PlaylistAddMusicActivity;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mChooseSongInfos:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/music/activity/PlaylistAddMusicActivity;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mChooseCount:I

    return v0
.end method

.method static synthetic access$708(Lcn/nubia/music/activity/PlaylistAddMusicActivity;)I
    .locals 2

    .prologue
    .line 38
    iget v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mChooseCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mChooseCount:I

    return v0
.end method

.method static synthetic access$710(Lcn/nubia/music/activity/PlaylistAddMusicActivity;)I
    .locals 2

    .prologue
    .line 38
    iget v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mChooseCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mChooseCount:I

    return v0
.end method

.method static synthetic access$802(Lcn/nubia/music/activity/PlaylistAddMusicActivity;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mIsChooseAll:Z

    return p1
.end method

.method private clearData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 192
    iput v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mChooseCount:I

    .line 193
    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->setAllSelectIcon(Z)V

    .line 194
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mChooseSongInfos:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 195
    return-void
.end method

.method private configEmptyView()V
    .locals 2

    .prologue
    .line 328
    const v0, 0x7f10015c

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 329
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 330
    iget-object v1, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 331
    return-void
.end method

.method private createProgressBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 198
    new-instance v0, Lcn/nubia/commonui/app/ProgressDialog;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 199
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/ProgressDialog;->setProgressStyle(I)V

    .line 200
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setTitle(I)V

    .line 201
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    const v1, 0x7f0b000e

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 203
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/ProgressDialog;->setCancelable(Z)V

    .line 204
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->show()V

    .line 205
    return-void
.end method

.method private doQuery()V
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mPresenter:Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$Presenter;

    iget-wide v2, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mPlaylistId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$Presenter;->loadSongListNotInPlaylist(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 158
    const v0, 0x7f10017c

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mListView:Landroid/widget/ListView;

    .line 159
    new-instance v0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;

    invoke-direct {v0, p0, p0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;-><init>(Lcn/nubia/music/activity/PlaylistAddMusicActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mAdapter:Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;

    .line 160
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mAdapter:Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mSongsItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 162
    return-void
.end method

.method private showScanDialog()V
    .locals 3

    .prologue
    .line 56
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03007a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 57
    const v1, 0x7f1000c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcn/nubia/music/activity/PlaylistAddMusicActivity$1;

    invoke-direct {v2, p0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity$1;-><init>(Lcn/nubia/music/activity/PlaylistAddMusicActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v1, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 69
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0027

    new-instance v2, Lcn/nubia/music/activity/PlaylistAddMusicActivity$2;

    invoke-direct {v2, p0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity$2;-><init>(Lcn/nubia/music/activity/PlaylistAddMusicActivity;)V

    .line 70
    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mDialog:Lcn/nubia/commonui/app/Dialog;

    .line 78
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mDialog:Lcn/nubia/commonui/app/Dialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/Dialog;->show()V

    .line 79
    return-void
.end method


# virtual methods
.method public allSelectOption()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 313
    iget-boolean v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mIsChooseAll:Z

    if-eqz v0, :cond_2

    .line 314
    invoke-direct {p0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->clearData()V

    .line 322
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mIsChooseAll:Z

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mIsChooseAll:Z

    .line 323
    iget v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mChooseCount:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->setSelectTitle(J)V

    .line 324
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mAdapter:Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;

    invoke-virtual {v0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;->notifyDataSetChanged()V

    .line 325
    return-void

    .line 316
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mAdapter:Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;

    invoke-static {v0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;->a(Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mChooseCount:I

    .line 317
    invoke-virtual {p0, v2}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->setAllSelectIcon(Z)V

    move v0, v1

    .line 318
    :goto_0
    iget v3, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mChooseCount:I

    if-ge v0, v3, :cond_0

    .line 319
    iget-object v3, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mChooseSongInfos:Ljava/util/HashSet;

    iget-object v4, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mAdapter:Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;

    invoke-static {v4}, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;->a(Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public confirmOption()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 294
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mChooseSongInfos:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    .line 295
    if-lez v0, :cond_1

    .line 296
    new-array v3, v0, [J

    .line 298
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mChooseSongInfos:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MusicModel;

    .line 299
    iget-wide v6, v0, Lcn/nubia/music/online/model/MusicModel;->mMediaId:J

    aput-wide v6, v3, v1

    .line 300
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 301
    goto :goto_0

    .line 302
    :cond_0
    const-string v0, "PlaylistAdd"

    const-string v1, "mAddClick"

    invoke-static {v0, v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-direct {p0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->createProgressBar()V

    .line 304
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mPresenter:Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$Presenter;

    const/4 v1, 0x1

    new-array v1, v1, [J

    iget-wide v4, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mPlaylistId:J

    aput-wide v4, v1, v2

    invoke-interface {v0, v1, v3}, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$Presenter;->addAudioIdsToPlaylists([J[J)V

    .line 308
    :goto_1
    return-void

    .line 306
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0104

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;II)V

    goto :goto_1
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcn/nubia/music/activity/BaseSelectActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 85
    const-string v1, "playlist_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mPlaylistId:J

    .line 86
    new-instance v0, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter;-><init>(Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$View;)V

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->setPresenter(Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$Presenter;)V

    .line 87
    invoke-direct {p0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->initView()V

    .line 88
    invoke-direct {p0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->doQuery()V

    .line 89
    new-instance v0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$a;

    iget-object v1, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/music/activity/PlaylistAddMusicActivity$a;-><init>(Lcn/nubia/music/activity/PlaylistAddMusicActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mContentObserver:Lcn/nubia/music/activity/PlaylistAddMusicActivity$a;

    .line 90
    invoke-virtual {p0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/audios"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mContentObserver:Lcn/nubia/music/activity/PlaylistAddMusicActivity$a;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 91
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    .line 281
    :cond_0
    invoke-super {p0}, Lcn/nubia/music/activity/BaseSelectActivity;->onDestroy()V

    .line 282
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mScanManager:Lcn/nubia/music/app/scan/MusicScanManager;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mScanManager:Lcn/nubia/music/app/scan/MusicScanManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/scan/MusicScanManager;->clearMusicScan()V

    .line 285
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mContentObserver:Lcn/nubia/music/activity/PlaylistAddMusicActivity$a;

    if-eqz v0, :cond_2

    .line 286
    invoke-virtual {p0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mContentObserver:Lcn/nubia/music/activity/PlaylistAddMusicActivity$a;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 288
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 289
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Lcn/nubia/music/activity/BaseSelectActivity;->onStop()V

    .line 273
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mPresenter:Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$Presenter;

    invoke-interface {v0}, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$Presenter;->stop()V

    .line 274
    return-void
.end method

.method public setPresenter(Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$Presenter;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mPresenter:Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$Presenter;

    .line 101
    return-void
.end method

.method public bridge synthetic setPresenter(Lcn/nubia/music/base/BasePresenter;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$Presenter;

    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->setPresenter(Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$Presenter;)V

    return-void
.end method

.method public showPlaylistAddedSuccess()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->setResult(I)V

    .line 134
    invoke-virtual {p0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->finish()V

    .line 135
    return-void
.end method

.method public showPlaylistSuccess(Ljava/util/List;)V
    .locals 0
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
    .line 107
    return-void
.end method

.method public showSongListSuccess(Ljava/util/List;)V
    .locals 3
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
    .line 111
    invoke-direct {p0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->clearData()V

    .line 112
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mAdapter:Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;

    invoke-static {v0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;->a(Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->setSelectTitle(J)V

    .line 115
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 116
    iget-object v2, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mAdapter:Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;

    invoke-static {v2}, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;->a(Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;)Ljava/util/List;

    move-result-object v2

    check-cast v0, Lcn/nubia/music/online/model/MusicModel;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mAdapter:Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;

    invoke-static {v0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;->a(Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mAdapter:Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;

    invoke-virtual {v0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;->notifyDataSetChanged()V

    .line 121
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mSelectAllImg:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 128
    :goto_1
    invoke-direct {p0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->configEmptyView()V

    .line 129
    return-void

    .line 123
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->bFirstScan:Z

    if-eqz v0, :cond_2

    .line 124
    invoke-direct {p0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->showScanDialog()V

    .line 126
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->mSelectAllImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1
.end method
