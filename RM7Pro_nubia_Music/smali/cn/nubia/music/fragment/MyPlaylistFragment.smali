.class public Lcn/nubia/music/fragment/MyPlaylistFragment;
.super Lcn/nubia/music/fragment/BaseMyPlaylistFragment;
.source "MyPlaylistFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcn/nubia/music/dialog/PlaylistActionBaseDialog$DialogActionCallback;
.implements Lcn/nubia/music/fragment/presenter/MyPlaylistContract$View;


# static fields
.field private static final ADD_TO_PLAYING:I = 0x1e

.field private static final ADD_TO_PLAYLIST:I = 0x1d

.field private static final CREATE_PLAYLIST:I = 0x1c

.field private static final DELETE_PLAYLIST:I = 0x19

.field private static final EDIT_PLAYLIST:I = 0x1a

.field private static final RENAME_PLAYLIST:I = 0x1b


# instance fields
.field final mActionModeListener:Lcn/nubia/music/app/menu/ActionModeCallback$IActionModeListener;

.field private mChooseFormat:Ljava/lang/String;

.field private mContentListener:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mIsHasPlaybarForceGoneListener:Z

.field private mPresenter:Lcn/nubia/music/fragment/presenter/MyPlaylistContract$Presenter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mIsHasPlaybarForceGoneListener:Z

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mHandler:Landroid/os/Handler;

    .line 101
    new-instance v0, Lcn/nubia/music/fragment/MyPlaylistFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/nubia/music/fragment/MyPlaylistFragment$1;-><init>(Lcn/nubia/music/fragment/MyPlaylistFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mContentListener:Landroid/database/ContentObserver;

    .line 339
    new-instance v0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;

    invoke-direct {v0, p0}, Lcn/nubia/music/fragment/MyPlaylistFragment$4;-><init>(Lcn/nubia/music/fragment/MyPlaylistFragment;)V

    iput-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mActionModeListener:Lcn/nubia/music/app/menu/ActionModeCallback$IActionModeListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/fragment/MyPlaylistFragment;[J)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcn/nubia/music/fragment/MyPlaylistFragment;->deletePlayLists([J)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/music/fragment/MyPlaylistFragment;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mIsHasPlaybarForceGoneListener:Z

    return v0
.end method

.method static synthetic access$1000(Lcn/nubia/music/fragment/MyPlaylistFragment;[J)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcn/nubia/music/fragment/MyPlaylistFragment;->addPlayList([J)V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/music/fragment/MyPlaylistFragment;)Z
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->hasSelectAll()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcn/nubia/music/fragment/MyPlaylistFragment;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->selectNone()V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/music/fragment/MyPlaylistFragment;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->selectAll()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/music/fragment/MyPlaylistFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/music/fragment/MyPlaylistFragment;Z)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcn/nubia/music/fragment/MyPlaylistFragment;->setActionModeState(Z)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/music/fragment/MyPlaylistFragment;[J)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcn/nubia/music/fragment/MyPlaylistFragment;->createDeletePlaylistDialog([J)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/music/fragment/MyPlaylistFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/music/fragment/MyPlaylistFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->getUmengEventKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/music/fragment/MyPlaylistFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/music/fragment/MyPlaylistFragment;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/music/fragment/MyPlaylistFragment;[J)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcn/nubia/music/fragment/MyPlaylistFragment;->addPlayListsToNowPlaying([J)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/music/fragment/MyPlaylistFragment;J)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/fragment/MyPlaylistFragment;->renamePlayList(J)V

    return-void
.end method

.method private addPlayList([J)V
    .locals 1

    .prologue
    .line 318
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->exitActionMode()V

    .line 323
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mPresenter:Lcn/nubia/music/fragment/presenter/MyPlaylistContract$Presenter;

    invoke-interface {v0, p1}, Lcn/nubia/music/fragment/presenter/MyPlaylistContract$Presenter;->addPlayListToAnother([J)V

    goto :goto_0
.end method

.method private addPlayListsToNowPlaying([J)V
    .locals 1

    .prologue
    .line 259
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mPresenter:Lcn/nubia/music/fragment/presenter/MyPlaylistContract$Presenter;

    invoke-interface {v0, p1}, Lcn/nubia/music/fragment/presenter/MyPlaylistContract$Presenter;->addPlayListsToNowPlaying([J)V

    goto :goto_0
.end method

.method private createDeletePlaylistDialog([J)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 266
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 271
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 272
    const v1, 0x7f03002a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 273
    const v0, 0x7f10008c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 274
    const v2, 0x7f0b0045

    invoke-virtual {p0, v2}, Lcn/nubia/music/fragment/MyPlaylistFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 275
    new-array v3, v5, [Ljava/lang/Object;

    const v4, 0x7f0b0120

    new-array v5, v5, [Ljava/lang/Object;

    array-length v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcn/nubia/music/utils/ResHelper;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 276
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v2, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/music/utils/MusicUtils;->BeanMusicDialogBuilder(Landroid/content/Context;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    .line 278
    invoke-virtual {v2, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0027

    new-instance v3, Lcn/nubia/music/fragment/MyPlaylistFragment$2;

    invoke-direct {v3, p0}, Lcn/nubia/music/fragment/MyPlaylistFragment$2;-><init>(Lcn/nubia/music/fragment/MyPlaylistFragment;)V

    .line 279
    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    .line 284
    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    .line 285
    new-instance v2, Lcn/nubia/music/fragment/MyPlaylistFragment$3;

    invoke-direct {v2, p0, p1, v1}, Lcn/nubia/music/fragment/MyPlaylistFragment$3;-><init>(Lcn/nubia/music/fragment/MyPlaylistFragment;[JLcn/nubia/commonui/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private delSelectItem(Lcn/nubia/music/online/model/MediaModel;Landroid/widget/CheckBox;)V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    iget-object v0, v0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 450
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 451
    return-void
.end method

.method private deletePlayLists([J)V
    .locals 4

    .prologue
    .line 302
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 303
    aget-wide v2, p1, v0

    .line 304
    iget-object v1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcn/nubia/music/utils/MusicUtils;->removePlaylist(Landroid/content/Context;J)V

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->loadData()V

    .line 307
    return-void
.end method

.method private disableActionbarMenu(Landroid/view/Menu;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 583
    if-nez p1, :cond_1

    .line 592
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 586
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 587
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 588
    invoke-interface {v2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 589
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 586
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 637
    sget-boolean v0, Lcn/nubia/music/third/StatisticsEvent;->UMENG_OPEN:Z

    if-eqz v0, :cond_0

    .line 638
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 639
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    iget-object v1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcn/nubia/music/third/StatisticsEvent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 642
    :cond_0
    return-void
.end method

.method private enableActionbarMenu(Landroid/view/Menu;)V
    .locals 3

    .prologue
    .line 571
    if-nez p1, :cond_1

    .line 580
    :cond_0
    return-void

    .line 574
    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 575
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 576
    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 577
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 574
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getUmengEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 629
    const-class v0, Lcn/nubia/music/fragment/MyPlaylistFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUmengEventKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 633
    const-class v0, Lcn/nubia/music/fragment/MyPlaylistFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasSelectAll()Z
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    iget-object v0, v0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    iget-object v1, v1, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance()Lcn/nubia/music/fragment/MyPlaylistFragment;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    new-instance v1, Lcn/nubia/music/fragment/MyPlaylistFragment;

    invoke-direct {v1}, Lcn/nubia/music/fragment/MyPlaylistFragment;-><init>()V

    .line 68
    invoke-virtual {v1, v0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    return-object v1
.end method

.method private openPlaylist(JIJ)V
    .locals 3

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcn/nubia/music/activity/PlayListDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    const-string v1, "playlistid"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v1, "playlisttype"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    const-string v1, "playlistnetid"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 150
    const/16 v1, 0x1a

    invoke-virtual {p0, v0, v1}, Lcn/nubia/music/fragment/MyPlaylistFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 151
    return-void
.end method

.method private renamePlayList(J)V
    .locals 3

    .prologue
    .line 311
    new-instance v0, Lcn/nubia/music/dialog/RenamePlaylistDialog;

    iget-object v1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcn/nubia/music/dialog/RenamePlaylistDialog;-><init>(Landroid/content/Context;J)V

    .line 312
    invoke-virtual {v0, p0}, Lcn/nubia/music/dialog/RenamePlaylistDialog;->setCallback(Lcn/nubia/music/dialog/PlaylistActionBaseDialog$DialogActionCallback;)V

    .line 313
    invoke-virtual {v0}, Lcn/nubia/music/dialog/RenamePlaylistDialog;->show()V

    .line 314
    return-void
.end method

.method private selectAll()V
    .locals 5

    .prologue
    .line 473
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    iget-object v0, v0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 474
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    iget-object v2, v0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mData:Ljava/util/List;

    .line 475
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 476
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 477
    iget v3, v0, Lcn/nubia/music/online/model/MediaModel;->mType:I

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    iget v3, v0, Lcn/nubia/music/online/model/MediaModel;->mType:I

    const/16 v4, 0xb

    if-eq v3, v4, :cond_0

    iget v3, v0, Lcn/nubia/music/online/model/MediaModel;->mType:I

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    .line 479
    iget-object v3, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    iget-object v3, v3, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 475
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 482
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/adapter/CustomRecycleAdapter;->notifyDataSetChanged()V

    .line 483
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-direct {p0, v0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->updateSelectedNum(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 484
    return-void
.end method

.method private selectItem(Lcn/nubia/music/online/model/MediaModel;Landroid/widget/CheckBox;)V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    iget-object v0, v0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 455
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 456
    return-void
.end method

.method private selectNone()V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    iget-object v0, v0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 488
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/adapter/CustomRecycleAdapter;->notifyDataSetChanged()V

    .line 489
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-direct {p0, v0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->updateSelectedNum(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 490
    return-void
.end method

.method private selectOrNot(Lcn/nubia/music/online/model/MediaModel;Landroid/widget/CheckBox;)V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    iget-object v0, v0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/fragment/MyPlaylistFragment;->delSelectItem(Lcn/nubia/music/online/model/MediaModel;Landroid/widget/CheckBox;)V

    .line 464
    :goto_0
    invoke-direct {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->hasSelectAll()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->setAllSelectedIcon(Z)V

    .line 465
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-direct {p0, v0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->updateSelectedNum(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 466
    return-void

    .line 462
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/fragment/MyPlaylistFragment;->selectItem(Lcn/nubia/music/online/model/MediaModel;Landroid/widget/CheckBox;)V

    goto :goto_0
.end method

.method private setActionModeState(Z)V
    .locals 1

    .prologue
    .line 493
    iput-boolean p1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mActionMode:Z

    .line 494
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/adapter/CustomRecycleAdapter;->notifyDataSetChanged()V

    .line 495
    return-void
.end method

.method private setAllSelectedIcon(Z)V
    .locals 2

    .prologue
    .line 538
    invoke-virtual {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 539
    instance-of v1, v0, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;

    if-eqz v1, :cond_0

    .line 540
    check-cast v0, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getActionBarContextView()Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    move-result-object v0

    .line 541
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getSelectCheckedTextView()Landroid/widget/CheckedTextView;

    move-result-object v0

    .line 542
    :goto_0
    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 546
    :cond_0
    return-void

    .line 541
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSelectedClickEvent(Lcn/nubia/commonui/actionbar/app/AppCompatActivity;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 549
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getActionBarContextView()Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    move-result-object v2

    .line 550
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getSelectZoneView()Landroid/view/View;

    move-result-object v1

    .line 551
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getSelectCheckedTextView()Landroid/widget/CheckedTextView;

    move-result-object v0

    .line 552
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 553
    new-instance v2, Lcn/nubia/music/fragment/MyPlaylistFragment$5;

    invoke-direct {v2, p0, v0}, Lcn/nubia/music/fragment/MyPlaylistFragment$5;-><init>(Lcn/nubia/music/fragment/MyPlaylistFragment;Landroid/widget/CheckedTextView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    :cond_1
    return-void

    :cond_2
    move-object v1, v0

    .line 550
    goto :goto_0
.end method

.method private startActionMode()V
    .locals 2

    .prologue
    .line 525
    new-instance v0, Lcn/nubia/music/app/menu/ActionModeCallback;

    iget-object v1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mActionModeListener:Lcn/nubia/music/app/menu/ActionModeCallback$IActionModeListener;

    invoke-direct {v0, v1}, Lcn/nubia/music/app/menu/ActionModeCallback;-><init>(Lcn/nubia/music/app/menu/ActionModeCallback$IActionModeListener;)V

    iput-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mActionModeCallback:Lcn/nubia/music/app/menu/ActionModeCallback;

    .line 529
    invoke-virtual {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;

    .line 531
    iget-object v1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mActionModeCallback:Lcn/nubia/music/app/menu/ActionModeCallback;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->startSupportActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)Lcn/nubia/commonui/actionbar/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    .line 532
    invoke-direct {p0, v0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->setSelectedClickEvent(Lcn/nubia/commonui/actionbar/app/AppCompatActivity;)V

    .line 533
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-direct {p0, v0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->updateSelectedNum(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 535
    :cond_0
    return-void
.end method

.method private updateSelectedNum(Lcn/nubia/commonui/actionbar/view/ActionMode;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x1b

    const/4 v5, 0x1

    .line 498
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mSelectText:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mChooseFormat:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    iget-boolean v4, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mActionMode:Z

    invoke-virtual {v3, v4}, Lcn/nubia/music/adapter/CustomRecycleAdapter;->getCheckedItemCount(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    iget-boolean v1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mActionMode:Z

    invoke-virtual {v0, v1}, Lcn/nubia/music/adapter/CustomRecycleAdapter;->getCheckedItemCount(Z)I

    move-result v0

    .line 501
    if-nez v0, :cond_0

    .line 502
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->disableActionbarMenu(Landroid/view/Menu;)V

    .line 522
    :goto_0
    return-void

    .line 505
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/music/fragment/MyPlaylistFragment;->enableActionbarMenu(Landroid/view/Menu;)V

    .line 506
    if-le v0, v5, :cond_2

    .line 507
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 508
    iput-boolean v5, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mResetActionMenuFlag:Z

    .line 509
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/Menu;->removeItem(I)V

    .line 521
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->setActionbarMenuLayout()V

    goto :goto_0

    .line 512
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_1

    .line 513
    iput-boolean v5, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mResetActionMenuFlag:Z

    .line 514
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0b00db

    .line 515
    invoke-interface {v0, v7, v6, v7, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020070

    .line 516
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x5

    .line 517
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method


# virtual methods
.method protected actionModeItemClick(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 596
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    invoke-virtual {v0, p2}, Lcn/nubia/music/adapter/CustomRecycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 597
    const v1, 0x7f10005f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 598
    if-nez v0, :cond_0

    .line 606
    :goto_0
    return-void

    .line 601
    :cond_0
    iget v2, v0, Lcn/nubia/music/online/model/MediaModel;->mType:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    iget v2, v0, Lcn/nubia/music/online/model/MediaModel;->mType:I

    const/16 v3, 0xb

    if-eq v2, v3, :cond_1

    iget v2, v0, Lcn/nubia/music/online/model/MediaModel;->mType:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    .line 602
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 605
    :cond_2
    invoke-direct {p0, v0, v1}, Lcn/nubia/music/fragment/MyPlaylistFragment;->selectOrNot(Lcn/nubia/music/online/model/MediaModel;Landroid/widget/CheckBox;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 253
    const/4 v0, 0x0

    .line 255
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected headItemClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 231
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->exitActionMode()V

    .line 232
    return-void

    .line 213
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcn/nubia/music/activity/RecentPlayingHistoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 216
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcn/nubia/music/activity/MyFavoriteDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    invoke-virtual {p0, v0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 222
    :sswitch_2
    new-instance v0, Lcn/nubia/music/dialog/CreatePlaylistDialog;

    invoke-virtual {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/music/dialog/CreatePlaylistDialog;-><init>(Landroid/content/Context;)V

    .line 223
    invoke-virtual {v0, p0}, Lcn/nubia/music/dialog/CreatePlaylistDialog;->setCallback(Lcn/nubia/music/dialog/PlaylistActionBaseDialog$DialogActionCallback;)V

    .line 224
    invoke-virtual {v0}, Lcn/nubia/music/dialog/CreatePlaylistDialog;->show()V

    .line 225
    invoke-direct {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "new_playlist"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/music/fragment/MyPlaylistFragment;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :sswitch_data_0
    .sparse-switch
        0x7f100055 -> :sswitch_2
        0x7f1000e1 -> :sswitch_0
        0x7f1000e2 -> :sswitch_1
    .end sparse-switch
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->isActive()Z

    move-result v0

    return v0
.end method

.method protected itemClick(I)V
    .locals 6

    .prologue
    .line 156
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    invoke-virtual {v0, p1}, Lcn/nubia/music/adapter/CustomRecycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 157
    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 161
    :cond_0
    iget v1, v0, Lcn/nubia/music/online/model/MediaModel;->mType:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 165
    :pswitch_1
    iget-wide v1, v0, Lcn/nubia/music/online/model/MediaModel;->mMediaId:J

    move-object v3, v0

    check-cast v3, Lcn/nubia/music/online/model/PlaylistModel;

    iget v3, v3, Lcn/nubia/music/online/model/PlaylistModel;->mPlayListType:I

    check-cast v0, Lcn/nubia/music/online/model/PlaylistModel;

    iget-wide v4, v0, Lcn/nubia/music/online/model/PlaylistModel;->mNetId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/music/fragment/MyPlaylistFragment;->openPlaylist(JIJ)V

    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected itemLongClick(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 610
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    invoke-virtual {v0, p2}, Lcn/nubia/music/adapter/CustomRecycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 611
    const v1, 0x7f10005f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 612
    if-nez v0, :cond_0

    .line 626
    :goto_0
    return-void

    .line 615
    :cond_0
    iget v2, v0, Lcn/nubia/music/online/model/MediaModel;->mType:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    iget v2, v0, Lcn/nubia/music/online/model/MediaModel;->mType:I

    const/16 v3, 0xb

    if-eq v2, v3, :cond_1

    iget v2, v0, Lcn/nubia/music/online/model/MediaModel;->mType:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    .line 616
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 619
    :cond_2
    iget-boolean v2, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mActionMode:Z

    if-eqz v2, :cond_3

    .line 620
    invoke-direct {p0, v0, v1}, Lcn/nubia/music/fragment/MyPlaylistFragment;->selectOrNot(Lcn/nubia/music/online/model/MediaModel;Landroid/widget/CheckBox;)V

    goto :goto_0

    .line 622
    :cond_3
    iget-object v1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    iget-object v1, v1, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 623
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->setActionModeState(Z)V

    .line 624
    invoke-direct {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->startActionMode()V

    goto :goto_0
.end method

.method protected loadData()V
    .locals 1

    .prologue
    .line 175
    const-string v0, "loadData() +++"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mPresenter:Lcn/nubia/music/fragment/presenter/MyPlaylistContract$Presenter;

    invoke-interface {v0}, Lcn/nubia/music/fragment/presenter/MyPlaylistContract$Presenter;->loadPlaylist()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 115
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 120
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 121
    if-eq p2, v2, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 125
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 127
    :pswitch_0
    if-ne p2, v2, :cond_0

    .line 129
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 132
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcn/nubia/music/activity/PlayListDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    const-string v2, "playlistid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v0, "playlisttype"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v1}, Lcn/nubia/music/fragment/MyPlaylistFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->onAttach(Landroid/app/Activity;)V

    .line 75
    invoke-virtual {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 77
    const-class v1, Lcn/nubia/music/app/listener/IPlaybarForceGoneListener;

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mIsHasPlaybarForceGoneListener:Z

    .line 81
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 201
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 85
    invoke-super {p0, p1}, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v0, 0x7f0b006e

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mChooseFormat:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/iamges"

    .line 89
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mContentListener:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 90
    invoke-virtual {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/playlist_infos"

    .line 92
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mContentListener:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 94
    invoke-virtual {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/playlistDatas"

    .line 96
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mContentListener:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 98
    new-instance v0, Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter;

    invoke-direct {v0, p0}, Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter;-><init>(Lcn/nubia/music/fragment/presenter/MyPlaylistContract$View;)V

    invoke-virtual {p0, v0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->setPresenter(Lcn/nubia/music/fragment/presenter/MyPlaylistContract$Presenter;)V

    .line 99
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mContentListener:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 194
    invoke-super {p0}, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->onDestroy()V

    .line 195
    return-void
.end method

.method public onPlaylistActionSuccess(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 236
    if-eqz p1, :cond_0

    .line 238
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 241
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcn/nubia/music/activity/PlayListDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    const-string v2, "playlistid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string v0, "playlisttype"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    invoke-virtual {p0, v1}, Lcn/nubia/music/fragment/MyPlaylistFragment;->startActivity(Landroid/content/Intent;)V

    .line 248
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 205
    invoke-super {p0}, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->onStop()V

    .line 206
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mPresenter:Lcn/nubia/music/fragment/presenter/MyPlaylistContract$Presenter;

    invoke-interface {v0}, Lcn/nubia/music/fragment/presenter/MyPlaylistContract$Presenter;->stop()V

    .line 207
    return-void
.end method

.method public bridge synthetic setPresenter(Lcn/nubia/music/base/BasePresenter;)V
    .locals 0

    .prologue
    .line 51
    check-cast p1, Lcn/nubia/music/fragment/presenter/MyPlaylistContract$Presenter;

    invoke-virtual {p0, p1}, Lcn/nubia/music/fragment/MyPlaylistFragment;->setPresenter(Lcn/nubia/music/fragment/presenter/MyPlaylistContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcn/nubia/music/fragment/presenter/MyPlaylistContract$Presenter;)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mPresenter:Lcn/nubia/music/fragment/presenter/MyPlaylistContract$Presenter;

    .line 652
    return-void
.end method

.method public showPlaylistAddedSuccess([J)V
    .locals 3

    .prologue
    .line 327
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 328
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0005

    invoke-virtual {p0, v1}, Lcn/nubia/music/fragment/MyPlaylistFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->exitActionMode()V

    .line 337
    :goto_0
    return-void

    .line 332
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 333
    iget-object v1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 334
    const-string v1, "audioslist"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 335
    iget-object v1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 336
    invoke-virtual {p0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->exitActionMode()V

    goto :goto_0
.end method

.method public showPlaylistSuccess(Ljava/util/List;)V
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
    .line 185
    const-string v0, ""

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    invoke-virtual {v0, p1}, Lcn/nubia/music/adapter/CustomRecycleAdapter;->setData(Ljava/util/List;)V

    .line 189
    :cond_0
    return-void
.end method
