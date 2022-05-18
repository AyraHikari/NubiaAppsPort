.class public Lcn/nubia/music/fragment/NowPlayingListFragment;
.super Lcn/nubia/music/fragment/BasePlayListFragment;
.source "NowPlayingListFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private mClearDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mNowPlayingListener:Landroid/content/BroadcastReceiver;

.field private mRepository:Lcn/nubia/music/repository/PlaylistRepository;

.field private mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

.field private mToken:Lcn/nubia/music/app/MusicPlayer$ServiceToken;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcn/nubia/music/fragment/BasePlayListFragment;-><init>()V

    .line 78
    new-instance v0, Lcn/nubia/music/fragment/NowPlayingListFragment$2;

    invoke-direct {v0, p0}, Lcn/nubia/music/fragment/NowPlayingListFragment$2;-><init>(Lcn/nubia/music/fragment/NowPlayingListFragment;)V

    iput-object v0, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/fragment/NowPlayingListFragment;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mClearDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public doUmengCallback(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcn/nubia/music/fragment/NowPlayingListFragment;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/music/fragment/NowPlayingListFragment;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcn/nubia/music/fragment/NowPlayingListFragment;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method protected getUmengEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    const-class v0, Lcn/nubia/music/fragment/NowPlayingListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUmengEventKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    const-class v0, Lcn/nubia/music/fragment/NowPlayingListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public listItemClickOption(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .prologue
    .line 134
    invoke-virtual {p0, p3}, Lcn/nubia/music/fragment/NowPlayingListFragment;->playSong(I)V

    .line 135
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 40
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/music/fragment/BasePlayListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lcn/nubia/music/fragment/NowPlayingListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p0}, Lcn/nubia/music/app/MusicPlayer;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcn/nubia/music/app/MusicPlayer$ServiceToken;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mToken:Lcn/nubia/music/app/MusicPlayer$ServiceToken;

    .line 42
    invoke-static {}, Lcn/nubia/music/repository/PlaylistRepository;->getInstance()Lcn/nubia/music/repository/PlaylistRepository;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mRepository:Lcn/nubia/music/repository/PlaylistRepository;

    .line 43
    new-instance v1, Lcn/nubia/music/repository/Subscriptions;

    invoke-direct {v1}, Lcn/nubia/music/repository/Subscriptions;-><init>()V

    iput-object v1, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    .line 44
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Lcn/nubia/music/fragment/BasePlayListFragment;->onDestroy()V

    .line 113
    iget-object v0, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mToken:Lcn/nubia/music/app/MusicPlayer$ServiceToken;

    invoke-static {v0}, Lcn/nubia/music/app/MusicPlayer;->unbindFromService(Lcn/nubia/music/app/MusicPlayer$ServiceToken;)V

    .line 114
    iget-object v0, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    iget-object v0, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mClearDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mClearDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 119
    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 92
    const-string v0, "nowplaying onServiceConnected"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcn/nubia/music/fragment/NowPlayingListFragment;->queueChanged()V

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    const-string v1, "cn.nubia.music.preset.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "cn.nubia.music.preset.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getQueuePosition()I

    move-result v1

    .line 99
    invoke-virtual {p0, v1}, Lcn/nubia/music/fragment/NowPlayingListFragment;->setSelection(I)V

    .line 100
    iget-object v1, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "cn.nubia.music.preset.metachanged"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 103
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcn/nubia/music/fragment/BasePlayListFragment;->onStop()V

    .line 75
    iget-object v0, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v0}, Lcn/nubia/music/repository/Subscriptions;->clear()V

    .line 76
    return-void
.end method

.method public queueChanged()V
    .locals 2

    .prologue
    .line 48
    iget-boolean v0, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mIsLoading:Z

    if-eqz v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/music/fragment/NowPlayingListFragment;->showLoadingData()V

    .line 52
    iget-object v0, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mRepository:Lcn/nubia/music/repository/PlaylistRepository;

    new-instance v1, Lcn/nubia/music/fragment/NowPlayingListFragment$1;

    invoke-direct {v1, p0}, Lcn/nubia/music/fragment/NowPlayingListFragment$1;-><init>(Lcn/nubia/music/fragment/NowPlayingListFragment;)V

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/PlaylistRepository;->getNowPlayingList(Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/Subscriptions;->add(Lcn/nubia/music/repository/Subscription;)V

    goto :goto_0
.end method

.method public removeAllTracks()V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mTrackList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcn/nubia/music/fragment/NowPlayingListFragment;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/music/fragment/NowPlayingListFragment;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clear_playing_list"

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/music/fragment/NowPlayingListFragment;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 152
    if-lez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 155
    const v1, 0x7f03008c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mDialogContent:Landroid/view/View;

    .line 157
    iget-object v0, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mDialogContent:Landroid/view/View;

    const v1, 0x7f100097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mDelView:Landroid/widget/TextView;

    .line 158
    iget-object v0, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mDelView:Landroid/widget/TextView;

    const v1, 0x7f0b002d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 159
    iget-object v0, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mDelView:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/music/fragment/NowPlayingListFragment$3;

    invoke-direct {v1, p0}, Lcn/nubia/music/fragment/NowPlayingListFragment$3;-><init>(Lcn/nubia/music/fragment/NowPlayingListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->BeanMusicDialogBuilder(Landroid/content/Context;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mDialogContent:Landroid/view/View;

    .line 168
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0027

    new-instance v2, Lcn/nubia/music/fragment/NowPlayingListFragment$4;

    invoke-direct {v2, p0}, Lcn/nubia/music/fragment/NowPlayingListFragment$4;-><init>(Lcn/nubia/music/fragment/NowPlayingListFragment;)V

    .line 169
    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mClearDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 175
    iget-object v0, p0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mClearDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 179
    :cond_0
    return-void
.end method

.method public removeItem([JZ)V
    .locals 0

    .prologue
    .line 144
    invoke-static {p1}, Lcn/nubia/music/app/MusicPlayer;->removeListTracks([J)I

    .line 145
    return-void
.end method

.method protected setPlayIndicator(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getQueuePosition()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected startPlay(I)V
    .locals 0

    .prologue
    .line 139
    invoke-static {p1}, Lcn/nubia/music/app/MusicPlayer;->setQueuePosition(I)V

    .line 140
    return-void
.end method
