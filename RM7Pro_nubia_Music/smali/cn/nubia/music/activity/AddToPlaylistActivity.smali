.class public Lcn/nubia/music/activity/AddToPlaylistActivity;
.super Lcn/nubia/music/activity/BaseSelectActivity;
.source "AddToPlaylistActivity.java"

# interfaces
.implements Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$View;
.implements Lcn/nubia/music/app/menu/MusicMenu;
.implements Lcn/nubia/music/dialog/PlaylistActionBaseDialog$DialogActionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/activity/AddToPlaylistActivity$a;
    }
.end annotation


# instance fields
.field private mAdapter:Lcn/nubia/music/activity/AddToPlaylistActivity$a;

.field private mAudioList:[J

.field private mChooseCount:I

.field private mChoosedPlaylists:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcn/nubia/music/online/model/PlaylistModel;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsChooseAll:Z

.field private mListView:Landroid/widget/ListView;

.field private mPresenter:Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$Presenter;

.field private mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

.field private mSongsItemClick:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseSelectActivity;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mChoosedPlaylists:Ljava/util/HashSet;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mHandler:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcn/nubia/music/activity/AddToPlaylistActivity$2;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/AddToPlaylistActivity$2;-><init>(Lcn/nubia/music/activity/AddToPlaylistActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mSongsItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/activity/AddToPlaylistActivity;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcn/nubia/music/activity/AddToPlaylistActivity;->doQuery()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/music/activity/AddToPlaylistActivity;)Lcn/nubia/music/activity/AddToPlaylistActivity$a;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mAdapter:Lcn/nubia/music/activity/AddToPlaylistActivity$a;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/music/activity/AddToPlaylistActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcn/nubia/music/activity/AddToPlaylistActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/music/activity/AddToPlaylistActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcn/nubia/music/activity/AddToPlaylistActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/music/activity/AddToPlaylistActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/music/activity/AddToPlaylistActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/music/activity/AddToPlaylistActivity;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mChoosedPlaylists:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/music/activity/AddToPlaylistActivity;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mChooseCount:I

    return v0
.end method

.method static synthetic access$708(Lcn/nubia/music/activity/AddToPlaylistActivity;)I
    .locals 2

    .prologue
    .line 35
    iget v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mChooseCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mChooseCount:I

    return v0
.end method

.method static synthetic access$710(Lcn/nubia/music/activity/AddToPlaylistActivity;)I
    .locals 2

    .prologue
    .line 35
    iget v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mChooseCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mChooseCount:I

    return v0
.end method

.method static synthetic access$802(Lcn/nubia/music/activity/AddToPlaylistActivity;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mIsChooseAll:Z

    return p1
.end method

.method private clearData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 320
    iput v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mChooseCount:I

    .line 321
    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AddToPlaylistActivity;->setAllSelectIcon(Z)V

    .line 322
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mChoosedPlaylists:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 323
    return-void
.end method

.method private createProgressBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 310
    new-instance v0, Lcn/nubia/commonui/app/ProgressDialog;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 311
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/ProgressDialog;->setProgressStyle(I)V

    .line 312
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setTitle(I)V

    .line 313
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    const v1, 0x7f0b000e

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 315
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/ProgressDialog;->setCancelable(Z)V

    .line 316
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->show()V

    .line 317
    return-void
.end method

.method private doQuery()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mPresenter:Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$Presenter;

    invoke-interface {v0}, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$Presenter;->loadPlaylists()V

    .line 88
    return-void
.end method

.method private doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 350
    sget-boolean v0, Lcn/nubia/music/third/StatisticsEvent;->UMENG_OPEN:Z

    if-eqz v0, :cond_0

    .line 351
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 352
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-static {p0, p1, v0}, Lcn/nubia/music/third/StatisticsEvent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 355
    :cond_0
    return-void
.end method

.method private getUmengEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    const-class v0, Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUmengEventKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    const-class v0, Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 80
    const v0, 0x7f10017c

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AddToPlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mListView:Landroid/widget/ListView;

    .line 81
    new-instance v0, Lcn/nubia/music/activity/AddToPlaylistActivity$a;

    invoke-direct {v0, p0, p0}, Lcn/nubia/music/activity/AddToPlaylistActivity$a;-><init>(Lcn/nubia/music/activity/AddToPlaylistActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mAdapter:Lcn/nubia/music/activity/AddToPlaylistActivity$a;

    .line 82
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mAdapter:Lcn/nubia/music/activity/AddToPlaylistActivity$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mSongsItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    return-void
.end method

.method private showMessage(I)V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcn/nubia/music/activity/AddToPlaylistActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;II)V

    .line 47
    return-void
.end method


# virtual methods
.method public allSelectOption()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 327
    iget-boolean v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mIsChooseAll:Z

    if-eqz v0, :cond_2

    .line 328
    invoke-direct {p0}, Lcn/nubia/music/activity/AddToPlaylistActivity;->clearData()V

    .line 336
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mIsChooseAll:Z

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mIsChooseAll:Z

    .line 337
    iget v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mChooseCount:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/music/activity/AddToPlaylistActivity;->setSelectTitle(J)V

    .line 338
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mAdapter:Lcn/nubia/music/activity/AddToPlaylistActivity$a;

    invoke-virtual {v0}, Lcn/nubia/music/activity/AddToPlaylistActivity$a;->notifyDataSetChanged()V

    .line 339
    return-void

    .line 330
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mAdapter:Lcn/nubia/music/activity/AddToPlaylistActivity$a;

    invoke-static {v0}, Lcn/nubia/music/activity/AddToPlaylistActivity$a;->a(Lcn/nubia/music/activity/AddToPlaylistActivity$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mChooseCount:I

    .line 331
    invoke-virtual {p0, v2}, Lcn/nubia/music/activity/AddToPlaylistActivity;->setAllSelectIcon(Z)V

    move v0, v1

    .line 332
    :goto_0
    iget v3, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mChooseCount:I

    if-ge v0, v3, :cond_0

    .line 333
    iget-object v3, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mChoosedPlaylists:Ljava/util/HashSet;

    iget-object v4, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mAdapter:Lcn/nubia/music/activity/AddToPlaylistActivity$a;

    invoke-static {v4}, Lcn/nubia/music/activity/AddToPlaylistActivity$a;->a(Lcn/nubia/music/activity/AddToPlaylistActivity$a;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public confirmOption()V
    .locals 6

    .prologue
    .line 288
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mChoosedPlaylists:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    .line 289
    if-lez v0, :cond_3

    .line 290
    new-array v2, v0, [J

    .line 291
    const/4 v0, 0x0

    .line 292
    iget-object v1, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mChoosedPlaylists:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/PlaylistModel;

    .line 293
    iget-wide v4, v0, Lcn/nubia/music/online/model/PlaylistModel;->mMediaId:J

    aput-wide v4, v2, v1

    .line 294
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 295
    goto :goto_0

    .line 296
    :cond_0
    const-string v0, "mAddClick"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mAudioList:[J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mAudioList:[J

    array-length v0, v0

    if-nez v0, :cond_2

    .line 307
    :cond_1
    :goto_1
    return-void

    .line 301
    :cond_2
    invoke-direct {p0}, Lcn/nubia/music/activity/AddToPlaylistActivity;->createProgressBar()V

    .line 302
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mPresenter:Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$Presenter;

    iget-object v1, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mAudioList:[J

    invoke-interface {v0, v2, v1}, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$Presenter;->addAudioIdsToPlaylists([J[J)V

    goto :goto_1

    .line 304
    :cond_3
    const v0, 0x7f0b0106

    invoke-direct {p0, v0}, Lcn/nubia/music/activity/AddToPlaylistActivity;->showMessage(I)V

    goto :goto_1
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcn/nubia/music/activity/AddToPlaylistActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/music/activity/AddToPlaylistActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 65
    packed-switch p1, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/music/activity/AddToPlaylistActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/AddToPlaylistActivity$1;-><init>(Lcn/nubia/music/activity/AddToPlaylistActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcn/nubia/music/activity/BaseSelectActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcn/nubia/music/activity/AddToPlaylistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 54
    const-string v1, "audioslist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const-string v1, "audioslist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mAudioList:[J

    .line 58
    :cond_0
    invoke-direct {p0}, Lcn/nubia/music/activity/AddToPlaylistActivity;->initView()V

    .line 59
    new-instance v0, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter;-><init>(Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$View;)V

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AddToPlaylistActivity;->setPresenter(Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$Presenter;)V

    .line 60
    invoke-direct {p0}, Lcn/nubia/music/activity/AddToPlaylistActivity;->doQuery()V

    .line 61
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    .line 281
    :cond_0
    invoke-super {p0}, Lcn/nubia/music/activity/BaseSelectActivity;->onDestroy()V

    .line 282
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 283
    return-void
.end method

.method public onPlaylistActionSuccess(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/music/activity/AddToPlaylistActivity$3;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/AddToPlaylistActivity$3;-><init>(Lcn/nubia/music/activity/AddToPlaylistActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Lcn/nubia/music/activity/BaseSelectActivity;->onStop()V

    .line 273
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mPresenter:Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$Presenter;

    invoke-interface {v0}, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$Presenter;->stop()V

    .line 274
    return-void
.end method

.method public setPresenter(Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$Presenter;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mPresenter:Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$Presenter;

    .line 142
    return-void
.end method

.method public bridge synthetic setPresenter(Lcn/nubia/music/base/BasePresenter;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$Presenter;

    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/AddToPlaylistActivity;->setPresenter(Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$Presenter;)V

    return-void
.end method

.method public showPlaylistAddedSuccess()V
    .locals 1

    .prologue
    .line 169
    const v0, 0x7f0b0008

    invoke-direct {p0, v0}, Lcn/nubia/music/activity/AddToPlaylistActivity;->showMessage(I)V

    .line 170
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AddToPlaylistActivity;->setResult(I)V

    .line 171
    invoke-virtual {p0}, Lcn/nubia/music/activity/AddToPlaylistActivity;->finish()V

    .line 172
    return-void
.end method

.method public showPlaylistSuccess(Ljava/util/List;)V
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
    .line 146
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mAdapter:Lcn/nubia/music/activity/AddToPlaylistActivity$a;

    invoke-static {v0}, Lcn/nubia/music/activity/AddToPlaylistActivity$a;->a(Lcn/nubia/music/activity/AddToPlaylistActivity$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    invoke-direct {p0}, Lcn/nubia/music/activity/AddToPlaylistActivity;->clearData()V

    .line 148
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/music/activity/AddToPlaylistActivity;->setSelectTitle(J)V

    .line 150
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 151
    iget-object v2, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mAdapter:Lcn/nubia/music/activity/AddToPlaylistActivity$a;

    invoke-static {v2}, Lcn/nubia/music/activity/AddToPlaylistActivity$a;->a(Lcn/nubia/music/activity/AddToPlaylistActivity$a;)Ljava/util/List;

    move-result-object v2

    check-cast v0, Lcn/nubia/music/online/model/PlaylistModel;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mAdapter:Lcn/nubia/music/activity/AddToPlaylistActivity$a;

    invoke-static {v0}, Lcn/nubia/music/activity/AddToPlaylistActivity$a;->a(Lcn/nubia/music/activity/AddToPlaylistActivity$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mAdapter:Lcn/nubia/music/activity/AddToPlaylistActivity$a;

    invoke-virtual {v0}, Lcn/nubia/music/activity/AddToPlaylistActivity$a;->notifyDataSetChanged()V

    .line 156
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mSelectAllImg:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 160
    :goto_1
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity;->mSelectAllImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1
.end method

.method public showSongListSuccess(Ljava/util/List;)V
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
    .line 165
    return-void
.end method
