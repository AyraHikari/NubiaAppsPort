.class public Lcn/nubia/music/activity/SelectMusicFolderActivity;
.super Lcn/nubia/music/activity/BaseSelectActivity;
.source "SelectMusicFolderActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/activity/SelectMusicFolderActivity$c;,
        Lcn/nubia/music/activity/SelectMusicFolderActivity$a;,
        Lcn/nubia/music/activity/SelectMusicFolderActivity$b;
    }
.end annotation


# static fields
.field private static final FOLDER_LIST:I = 0xb

.field private static final GET_FOLDER_LIST:I = 0xa

.field private static final REFESH_SELECTED_LIST:I = 0xc

.field public static final ROOT_DIR:Ljava/lang/String; = "/./storage/"


# instance fields
.field private mAdapter:Lcn/nubia/music/activity/SelectMusicFolderActivity$b;

.field private mAsyncHandler:Lcn/nubia/music/activity/SelectMusicFolderActivity$a;

.field private mCurrent:Lcn/nubia/music/app/model/CompositeDir;

.field private mFolderHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/music/app/scan/MediaInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRefreshFinished:Z

.field private mIsSelectAll:Z

.field private mListView:Landroid/widget/ListView;

.field private mMainHandler:Landroid/os/Handler;

.field private mQueryThread:Landroid/os/HandlerThread;

.field private mRoot:Lcn/nubia/music/app/model/CompositeDir;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSelectedPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedSongCnt:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseSelectActivity;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mSelectedPathList:Ljava/util/ArrayList;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mIsRefreshFinished:Z

    .line 63
    iput v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mSelectedSongCnt:I

    .line 64
    iput-boolean v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mIsSelectAll:Z

    .line 100
    iput-object v2, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolderHashMap:Ljava/util/HashMap;

    .line 101
    iput-object v2, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolders:Ljava/util/ArrayList;

    .line 289
    new-instance v0, Lcn/nubia/music/activity/SelectMusicFolderActivity$2;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/SelectMusicFolderActivity$2;-><init>(Lcn/nubia/music/activity/SelectMusicFolderActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 388
    new-instance v0, Lcn/nubia/music/activity/SelectMusicFolderActivity$3;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/SelectMusicFolderActivity$3;-><init>(Lcn/nubia/music/activity/SelectMusicFolderActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Lcn/nubia/music/app/model/CompositeDir;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mCurrent:Lcn/nubia/music/app/model/CompositeDir;

    return-object v0
.end method

.method static synthetic access$002(Lcn/nubia/music/activity/SelectMusicFolderActivity;Lcn/nubia/music/app/model/CompositeDir;)Lcn/nubia/music/app/model/CompositeDir;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mCurrent:Lcn/nubia/music/app/model/CompositeDir;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Lcn/nubia/music/app/model/CompositeDir;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mRoot:Lcn/nubia/music/app/model/CompositeDir;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcn/nubia/music/activity/SelectMusicFolderActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolders:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$102(Lcn/nubia/music/activity/SelectMusicFolderActivity;Lcn/nubia/music/app/model/CompositeDir;)Lcn/nubia/music/app/model/CompositeDir;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mRoot:Lcn/nubia/music/app/model/CompositeDir;

    return-object p1
.end method

.method static synthetic access$1100(Lcn/nubia/music/activity/SelectMusicFolderActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->getSortedAudioFolders(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/nubia/music/activity/SelectMusicFolderActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->updateSelectedAudioToDatabase()V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/music/activity/SelectMusicFolderActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->updateBlackWhiteTableUsePath()V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/music/activity/SelectMusicFolderActivity;)I
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->songsCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcn/nubia/music/activity/SelectMusicFolderActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->clear()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/music/activity/SelectMusicFolderActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->getFolderList()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mSelectedPathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/music/activity/SelectMusicFolderActivity;J)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->refreshTopSelectTitle(J)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$702(Lcn/nubia/music/activity/SelectMusicFolderActivity;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mIsRefreshFinished:Z

    return p1
.end method

.method static synthetic access$800(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Lcn/nubia/music/activity/SelectMusicFolderActivity$b;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mAdapter:Lcn/nubia/music/activity/SelectMusicFolderActivity$b;

    return-object v0
.end method

.method static synthetic access$802(Lcn/nubia/music/activity/SelectMusicFolderActivity;Lcn/nubia/music/activity/SelectMusicFolderActivity$b;)Lcn/nubia/music/activity/SelectMusicFolderActivity$b;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mAdapter:Lcn/nubia/music/activity/SelectMusicFolderActivity$b;

    return-object p1
.end method

.method private clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 502
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mSelectedPathList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mSelectedPathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 506
    :cond_0
    invoke-static {}, Lcn/nubia/music/app/scan/MusicScanFoundFolder;->clear()V

    .line 508
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolderHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolderHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 510
    iput-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolderHashMap:Ljava/util/HashMap;

    .line 513
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolders:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 514
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 515
    iput-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolders:Ljava/util/ArrayList;

    .line 517
    :cond_2
    return-void
.end method

.method private getFolderList()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mAsyncHandler:Lcn/nubia/music/activity/SelectMusicFolderActivity$a;

    invoke-virtual {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 153
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 154
    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mAsyncHandler:Lcn/nubia/music/activity/SelectMusicFolderActivity$a;

    invoke-virtual {v1, v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity$a;->sendMessage(Landroid/os/Message;)Z

    .line 155
    return-void
.end method

.method private getSortedAudioFolders(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x1

    .line 334
    if-nez p1, :cond_0

    .line 335
    const-string v0, "getSortedAudioFolders, audioFolders is null"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 338
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 339
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 340
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 341
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;

    .line 342
    iget-wide v6, v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderIsWhtList:J

    cmp-long v5, v10, v6

    if-nez v5, :cond_3

    .line 343
    iget-wide v6, v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderIsChecked:J

    cmp-long v5, v10, v6

    if-nez v5, :cond_2

    .line 344
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 346
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 348
    :cond_3
    const-wide/16 v6, 0x2

    iget-wide v8, v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderIsWhtList:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 349
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 353
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 354
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 355
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 356
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 358
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 359
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 360
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 361
    return-object p1
.end method

.method private initFoundMusicFolder()V
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Lcn/nubia/music/app/scan/MusicScanFoundFolder;->getFoundMusicHashmap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolderHashMap:Ljava/util/HashMap;

    .line 106
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolderHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFoundMusicFolder() hashmap.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolderHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolderHashMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolderHashMap:Ljava/util/HashMap;

    .line 114
    :cond_1
    invoke-static {}, Lcn/nubia/music/app/scan/MusicScanFoundFolder;->getFoundMusicFolder()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolders:Ljava/util/ArrayList;

    .line 116
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolders:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolders:Ljava/util/ArrayList;

    .line 120
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolders:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFoundMusicFolder() folders.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 123
    :cond_3
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 126
    new-instance v0, Lcn/nubia/music/app/model/CompositeDir;

    const-string v1, "/./storage/"

    invoke-direct {v0, v1}, Lcn/nubia/music/app/model/CompositeDir;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mRoot:Lcn/nubia/music/app/model/CompositeDir;

    .line 127
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mRoot:Lcn/nubia/music/app/model/CompositeDir;

    iput-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mCurrent:Lcn/nubia/music/app/model/CompositeDir;

    .line 128
    const v0, 0x7f10017c

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mListView:Landroid/widget/ListView;

    .line 129
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 130
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 131
    return-void
.end method

.method private refreshTopSelectTitle(J)V
    .locals 3

    .prologue
    .line 161
    const-string v0, "refreshTopSelectTitle"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0, p1, p2}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->setSelectTitle(J)V

    .line 165
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolders:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mIsSelectAll:Z

    .line 171
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mIsSelectAll:Z

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->setAllSelectIcon(Z)V

    .line 172
    return-void

    .line 168
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mIsSelectAll:Z

    goto :goto_0
.end method

.method private songsCount()I
    .locals 4

    .prologue
    .line 574
    const/4 v0, 0x0

    .line 575
    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mSelectedPathList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 576
    iget-object v3, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolderHashMap:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 584
    :cond_0
    return v1

    .line 579
    :cond_1
    iget-object v3, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolderHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 580
    iget-object v3, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolderHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 581
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 583
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private updateBlackWhiteTableUsePath()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 458
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mSelectedPathList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 459
    const-string v0, "updateBlackWhiteTableUsePath, mSelectedPathList is null"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 499
    :cond_0
    return-void

    .line 463
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolders:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mSelectedPathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move v4, v5

    .line 465
    :goto_1
    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_5

    .line 466
    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;

    .line 467
    iget-object v7, v1, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderPath:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 468
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 469
    const-string v7, "folder_name"

    iget-object v8, v1, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderName:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v7, "folder_description"

    iget-object v8, v1, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderDescription:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v7, "folder_is_whitelist"

    iget-wide v8, v1, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderIsWhtList:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 472
    const-string v7, "folder_path"

    iget-object v1, v1, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderPath:Ljava/lang/String;

    invoke-virtual {v2, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v1, "folder_is_selected"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 474
    invoke-virtual {p0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v7, Lcn/nubia/music/app/db/DatabaseUnit;->BLACKWHITE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v7, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBlackWhiteTableUsePath,select:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    move v0, v4

    .line 480
    :goto_2
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 481
    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v3

    :cond_2
    move v2, v0

    .line 484
    goto/16 :goto_0

    .line 465
    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 486
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBlackWhiteTableUsePath,unSelected Folders cnt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;

    .line 488
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateBlackWhiteTableUsePath, unSlected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "folder_path = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderPath:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 494
    const-string v3, "folder_is_selected"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 495
    invoke-virtual {p0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcn/nubia/music/app/db/DatabaseUnit;->BLACKWHITE_URI:Landroid/net/Uri;

    .line 496
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    .line 495
    invoke-virtual {v3, v4, v0, v2, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    move v0, v2

    goto/16 :goto_2
.end method

.method private updateSelectedAudioToDatabase()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 413
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mSelectedPathList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 414
    const-string v0, "updateSelectedAudioToDatabase, mSelectedPathList is null"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 455
    :goto_0
    return-void

    .line 419
    :cond_0
    const-string v0, "content://nubia.music.preset/audios"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "type = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-static {v0, v7, v1, v2, v7}, Lcn/nubia/music/utils/MusicUtils;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 421
    if-eqz v0, :cond_7

    .line 422
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    move v2, v0

    .line 425
    :goto_1
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mSelectedPathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 426
    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolderHashMap:Ljava/util/HashMap;

    if-nez v1, :cond_5

    .line 442
    :cond_2
    iget v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mSelectedSongCnt:I

    if-le v0, v2, :cond_3

    iget v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mSelectedSongCnt:I

    sub-int v3, v0, v2

    :cond_3
    iput v3, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mSelectedSongCnt:I

    .line 444
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->deleteUnExistTracks(Landroid/content/Context;)V

    .line 445
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mSelectedPathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 446
    const-string v0, "updateSelectedAudioToDatabase, delete local music db when select nothing"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/musicInfos"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "parent_path is not null "

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 451
    :cond_4
    const v0, 0x7f0b0014

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 452
    const v1, 0x7f0b000a

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-virtual {p0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mSelectedSongCnt:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 430
    :cond_5
    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolderHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolderHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 432
    iget v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mSelectedSongCnt:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mSelectedSongCnt:I

    .line 433
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v6, v1, [Landroid/content/ContentValues;

    move v4, v3

    .line 434
    :goto_3
    array-length v1, v6

    if-ge v4, v1, :cond_6

    .line 435
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/music/app/scan/MediaInfo;

    invoke-virtual {v1}, Lcn/nubia/music/app/scan/MediaInfo;->convertToContentValues()Landroid/content/ContentValues;

    move-result-object v1

    aput-object v1, v6, v4

    .line 434
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    .line 438
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/musicInfos"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto/16 :goto_2

    :cond_7
    move v2, v3

    goto/16 :goto_1
.end method


# virtual methods
.method public allSelectOption()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allSelectOption, select all:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mIsSelectAll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolders:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mSelectedPathList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 591
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allSelectOption, select all return: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 612
    :goto_0
    return-void

    .line 595
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mIsSelectAll:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mIsSelectAll:Z

    .line 597
    iget-boolean v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mIsSelectAll:Z

    if-nez v0, :cond_4

    .line 598
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;

    .line 599
    iput-wide v2, v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderIsChecked:J

    goto :goto_2

    .line 595
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 601
    :cond_3
    invoke-direct {p0, v2, v3}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->refreshTopSelectTitle(J)V

    .line 602
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mSelectedPathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 611
    :goto_3
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mAdapter:Lcn/nubia/music/activity/SelectMusicFolderActivity$b;

    invoke-virtual {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->notifyDataSetChanged()V

    goto :goto_0

    .line 604
    :cond_4
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mSelectedPathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 605
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;

    .line 606
    const-wide/16 v2, 0x1

    iput-wide v2, v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderIsChecked:J

    .line 607
    iget-object v2, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mSelectedPathList:Ljava/util/ArrayList;

    iget-object v0, v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderPath:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 609
    :cond_5
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->refreshTopSelectTitle(J)V

    goto :goto_3
.end method

.method public confirmOption()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 528
    const-string v0, "confirmOption, confirm select folder"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mSelectAllImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mCancelSelectImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mAdapter:Lcn/nubia/music/activity/SelectMusicFolderActivity$b;

    iput-boolean v3, v0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->a:Z

    .line 532
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mAdapter:Lcn/nubia/music/activity/SelectMusicFolderActivity$b;

    invoke-virtual {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->notifyDataSetChanged()V

    .line 533
    invoke-static {p0}, Lcn/nubia/music/ui/SaveMusicProgress;->initSaveProgress(Landroid/content/Context;)V

    .line 534
    invoke-static {p0}, Lcn/nubia/music/ui/SaveMusicProgress;->showScanProgress(Landroid/content/Context;)V

    .line 535
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mIsRefreshFinished:Z

    if-nez v0, :cond_0

    .line 537
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 538
    :catch_0
    move-exception v0

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 543
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mSelectedPathList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 544
    new-instance v0, Lcn/nubia/music/activity/SelectMusicFolderActivity$4;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/SelectMusicFolderActivity$4;-><init>(Lcn/nubia/music/activity/SelectMusicFolderActivity;)V

    new-array v1, v3, [Ljava/lang/Void;

    .line 562
    invoke-virtual {v0, v1}, Lcn/nubia/music/activity/SelectMusicFolderActivity$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 571
    :goto_1
    return-void

    .line 564
    :cond_1
    invoke-virtual {p0, v3}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->setResult(I)V

    .line 565
    invoke-direct {p0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->clear()V

    .line 566
    invoke-static {}, Lcn/nubia/music/ui/SaveMusicProgress;->dismissScanProgress()V

    .line 567
    invoke-static {}, Lcn/nubia/music/ui/SaveMusicProgress;->clear()V

    .line 568
    invoke-virtual {p0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->finish()V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mAdapter:Lcn/nubia/music/activity/SelectMusicFolderActivity$b;

    iget-boolean v0, v0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->a:Z

    if-eqz v0, :cond_0

    .line 522
    invoke-super {p0}, Lcn/nubia/music/activity/BaseSelectActivity;->onBackPressed()V

    .line 524
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcn/nubia/music/activity/BaseSelectActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 70
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "getFolderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mQueryThread:Landroid/os/HandlerThread;

    .line 79
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mQueryThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 80
    new-instance v0, Lcn/nubia/music/activity/SelectMusicFolderActivity$a;

    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mQueryThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/music/activity/SelectMusicFolderActivity$a;-><init>(Lcn/nubia/music/activity/SelectMusicFolderActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mAsyncHandler:Lcn/nubia/music/activity/SelectMusicFolderActivity$a;

    .line 82
    invoke-direct {p0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->initFoundMusicFolder()V

    .line 83
    invoke-direct {p0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->initView()V

    .line 84
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mQueryThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 91
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mAsyncHandler:Lcn/nubia/music/activity/SelectMusicFolderActivity$a;

    invoke-virtual {v0, v1}, Lcn/nubia/music/activity/SelectMusicFolderActivity$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 92
    iput-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mAsyncHandler:Lcn/nubia/music/activity/SelectMusicFolderActivity$a;

    .line 94
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 95
    iput-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity;->mMainHandler:Landroid/os/Handler;

    .line 97
    invoke-super {p0}, Lcn/nubia/music/activity/BaseSelectActivity;->onDestroy()V

    .line 98
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcn/nubia/music/activity/SelectMusicFolderActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/SelectMusicFolderActivity$1;-><init>(Lcn/nubia/music/activity/SelectMusicFolderActivity;)V

    invoke-static {v0}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    .line 148
    invoke-super {p0}, Lcn/nubia/music/activity/BaseSelectActivity;->onResume()V

    .line 149
    return-void
.end method
