.class public Lcn/nubia/music/fragment/PlayHistoryFragment;
.super Lcn/nubia/music/fragment/BasePlayListFragment;
.source "PlayHistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/fragment/PlayHistoryFragment$a;
    }
.end annotation


# instance fields
.field private mClearDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mDataSetObserver:Landroid/database/ContentObserver;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRepository:Lcn/nubia/music/repository/PlaylistRepository;

.field private mSubscriptions:Lcn/nubia/music/repository/Subscriptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcn/nubia/music/fragment/BasePlayListFragment;-><init>()V

    .line 226
    new-instance v0, Lcn/nubia/music/fragment/PlayHistoryFragment$4;

    invoke-direct {v0, p0}, Lcn/nubia/music/fragment/PlayHistoryFragment$4;-><init>(Lcn/nubia/music/fragment/PlayHistoryFragment;)V

    iput-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/fragment/PlayHistoryFragment;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcn/nubia/music/fragment/PlayHistoryFragment;->loadData()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/music/fragment/PlayHistoryFragment;[J)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcn/nubia/music/fragment/PlayHistoryFragment;->deleteItem([J)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/music/fragment/PlayHistoryFragment;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mClearDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-object v0
.end method

.method private deleteItem([J)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 155
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->getData()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    array-length v0, p1

    iget-object v1, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-virtual {v1}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 161
    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mRepository:Lcn/nubia/music/repository/PlaylistRepository;

    invoke-virtual {v0, v6}, Lcn/nubia/music/repository/PlaylistRepository;->deleteAllSongsFromHistory(Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/Subscriptions;->add(Lcn/nubia/music/repository/Subscription;)V

    goto :goto_0

    .line 167
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 168
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_5

    .line 169
    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    aget-wide v4, p1, v1

    long-to-int v3, v4

    invoke-virtual {v0, v3}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_3

    instance-of v3, v0, Lcn/nubia/music/online/model/MusicModel;

    if-nez v3, :cond_4

    .line 168
    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 173
    :cond_4
    check-cast v0, Lcn/nubia/music/online/model/MusicModel;

    iget-wide v4, v0, Lcn/nubia/music/online/model/MusicModel;->mMediaId:J

    .line 174
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 176
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mRepository:Lcn/nubia/music/repository/PlaylistRepository;

    invoke-virtual {v0, v2, v6}, Lcn/nubia/music/repository/PlaylistRepository;->deleteSongsFromHistory(Ljava/util/List;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/Subscriptions;->add(Lcn/nubia/music/repository/Subscription;)V

    goto :goto_0
.end method

.method private loadData()V
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcn/nubia/music/fragment/PlayHistoryFragment;->showLoadingData()V

    .line 88
    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mRepository:Lcn/nubia/music/repository/PlaylistRepository;

    new-instance v1, Lcn/nubia/music/fragment/PlayHistoryFragment$1;

    invoke-direct {v1, p0}, Lcn/nubia/music/fragment/PlayHistoryFragment$1;-><init>(Lcn/nubia/music/fragment/PlayHistoryFragment;)V

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/PlaylistRepository;->getRecentPlayingList(Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/Subscriptions;->add(Lcn/nubia/music/repository/Subscription;)V

    .line 104
    return-void
.end method


# virtual methods
.method public clearHistory()V
    .locals 4

    .prologue
    .line 185
    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/music/fragment/PlayHistoryFragment;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/music/fragment/PlayHistoryFragment;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clear_playing_history"

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/music/fragment/PlayHistoryFragment;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 192
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 193
    const v1, 0x7f03008c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mDialogContent:Landroid/view/View;

    .line 195
    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mDialogContent:Landroid/view/View;

    const v1, 0x7f100097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mDelView:Landroid/widget/TextView;

    .line 196
    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mDelView:Landroid/widget/TextView;

    const v1, 0x7f0b002c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 197
    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mDelView:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/music/fragment/PlayHistoryFragment$2;

    invoke-direct {v1, p0}, Lcn/nubia/music/fragment/PlayHistoryFragment$2;-><init>(Lcn/nubia/music/fragment/PlayHistoryFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->BeanMusicDialogBuilder(Landroid/content/Context;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mDialogContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 216
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0027

    new-instance v2, Lcn/nubia/music/fragment/PlayHistoryFragment$3;

    invoke-direct {v2, p0}, Lcn/nubia/music/fragment/PlayHistoryFragment$3;-><init>(Lcn/nubia/music/fragment/PlayHistoryFragment;)V

    .line 217
    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mClearDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 223
    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mClearDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public doUmengCallback(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcn/nubia/music/fragment/PlayHistoryFragment;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/music/fragment/PlayHistoryFragment;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcn/nubia/music/fragment/PlayHistoryFragment;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method protected getUmengEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    const-class v0, Lcn/nubia/music/fragment/PlayHistoryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUmengEventKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    const-class v0, Lcn/nubia/music/fragment/PlayHistoryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public listItemClickOption(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .prologue
    .line 145
    invoke-virtual {p0, p3}, Lcn/nubia/music/fragment/PlayHistoryFragment;->playSong(I)V

    .line 146
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/music/fragment/BasePlayListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 66
    new-instance v1, Lcn/nubia/music/fragment/PlayHistoryFragment$a;

    iget-object v2, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcn/nubia/music/fragment/PlayHistoryFragment$a;-><init>(Lcn/nubia/music/fragment/PlayHistoryFragment;Landroid/os/Handler;)V

    iput-object v1, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mDataSetObserver:Landroid/database/ContentObserver;

    .line 67
    invoke-virtual {p0}, Lcn/nubia/music/fragment/PlayHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://nubia.music.preset/playhistory"

    .line 68
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mDataSetObserver:Landroid/database/ContentObserver;

    .line 67
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 69
    invoke-static {}, Lcn/nubia/music/repository/PlaylistRepository;->getInstance()Lcn/nubia/music/repository/PlaylistRepository;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mRepository:Lcn/nubia/music/repository/PlaylistRepository;

    .line 70
    new-instance v1, Lcn/nubia/music/repository/Subscriptions;

    invoke-direct {v1}, Lcn/nubia/music/repository/Subscriptions;-><init>()V

    iput-object v1, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    .line 72
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    const-string v2, "cn.nubia.music.preset.metachanged"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcn/nubia/music/fragment/PlayHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcn/nubia/music/fragment/PlayHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "cn.nubia.music.preset.metachanged"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 76
    invoke-direct {p0}, Lcn/nubia/music/fragment/PlayHistoryFragment;->loadData()V

    .line 77
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Lcn/nubia/music/fragment/BasePlayListFragment;->onDestroy()V

    .line 130
    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mDataSetObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mDataSetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 137
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mClearDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mClearDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 140
    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcn/nubia/music/fragment/BasePlayListFragment;->onStop()V

    .line 83
    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v0}, Lcn/nubia/music/repository/Subscriptions;->clear()V

    .line 84
    return-void
.end method

.method public removeItem([JZ)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcn/nubia/music/fragment/PlayHistoryFragment;->deleteItem([J)V

    .line 152
    return-void
.end method

.method protected setPlayIndicator(Landroid/view/View;I)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 43
    sget-boolean v0, Lcn/nubia/music/app/MusicPlayer;->isBinded:Z

    if-eqz v0, :cond_3

    .line 44
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getAudioId()J

    move-result-wide v2

    .line 45
    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-virtual {v0, p2}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcn/nubia/music/online/model/MusicModel;

    if-nez v1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    check-cast v0, Lcn/nubia/music/online/model/MusicModel;

    iget-wide v0, v0, Lcn/nubia/music/online/model/MusicModel;->mMediaId:J

    .line 51
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected startPlay(I)V
    .locals 2

    .prologue
    .line 241
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-virtual {v0, p1}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcn/nubia/music/online/model/MusicModel;

    if-nez v1, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    check-cast v0, Lcn/nubia/music/online/model/MusicModel;

    iget-wide v0, v0, Lcn/nubia/music/online/model/MusicModel;->mMediaId:J

    .line 247
    invoke-static {v0, v1}, Lcn/nubia/music/app/MusicPlayer;->addLocalToNowingPlaying(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    goto :goto_0
.end method
