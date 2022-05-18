.class public abstract Lcn/nubia/music/fragment/BasePlayListFragment;
.super Landroid/support/v4/app/ListFragment;
.source "BasePlayListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;
    }
.end annotation


# instance fields
.field protected mActionModManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

.field protected mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

.field protected mContext:Landroid/content/Context;

.field protected mDelView:Landroid/widget/TextView;

.field protected mDialogContent:Landroid/view/View;

.field protected mEmptyView:Lcn/nubia/music/ui/MusicNonehintView;

.field protected mHandler:Landroid/os/Handler;

.field private mIsHasPlaybarForceGoneListener:Z

.field protected mIsLoading:Z

.field protected mTrackList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mHandler:Landroid/os/Handler;

    .line 55
    iput-boolean v1, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mIsHasPlaybarForceGoneListener:Z

    .line 57
    iput-boolean v1, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mIsLoading:Z

    .line 104
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/music/fragment/BasePlayListFragment;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mIsHasPlaybarForceGoneListener:Z

    return v0
.end method

.method private delSelectItem(Lcn/nubia/music/online/model/MusicModel;Landroid/widget/CheckBox;)V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-static {v0}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->access$200(Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 538
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 539
    return-void
.end method

.method private getMusicEntryFromList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/music/online/data/MusicEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 210
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-static {v0}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->access$000(Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 211
    invoke-virtual {v0}, Lcn/nubia/music/online/model/MediaModel;->getEntry()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/data/MusicEntry;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    :cond_0
    return-object v1
.end method

.method private hasSelectAll()Z
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-static {v0}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->access$200(Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-static {v1}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->access$000(Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;)Ljava/util/List;

    move-result-object v1

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

.method private selectAll()V
    .locals 3

    .prologue
    .line 574
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-static {v0}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->access$200(Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 575
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mCheckedPosition:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 576
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-static {v0}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->access$000(Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 577
    iget-object v2, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-static {v2}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->access$200(Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 579
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-static {v1}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->access$000(Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 580
    iget-object v1, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    iget-object v1, v1, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mCheckedPosition:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 579
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 582
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->notifyDataSetChanged()V

    .line 583
    invoke-direct {p0}, Lcn/nubia/music/fragment/BasePlayListFragment;->updateSelectedNum()V

    .line 584
    return-void
.end method

.method private selectItem(Lcn/nubia/music/online/model/MusicModel;Landroid/widget/CheckBox;)V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-static {v0}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->access$200(Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 543
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 544
    return-void
.end method

.method private selectNone()V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-static {v0}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->access$200(Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 588
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mCheckedPosition:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 589
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->notifyDataSetChanged()V

    .line 590
    invoke-direct {p0}, Lcn/nubia/music/fragment/BasePlayListFragment;->updateSelectedNum()V

    .line 591
    return-void
.end method

.method private selectOrNot(Lcn/nubia/music/online/model/MusicModel;Landroid/widget/CheckBox;I)V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-static {v0}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->access$200(Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mCheckedPosition:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 549
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/fragment/BasePlayListFragment;->delSelectItem(Lcn/nubia/music/online/model/MusicModel;Landroid/widget/CheckBox;)V

    .line 555
    :goto_0
    invoke-direct {p0}, Lcn/nubia/music/fragment/BasePlayListFragment;->hasSelectAll()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/music/fragment/BasePlayListFragment;->setAllSelectedIcon(Z)V

    .line 556
    invoke-direct {p0}, Lcn/nubia/music/fragment/BasePlayListFragment;->updateSelectedNum()V

    .line 557
    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mCheckedPosition:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 552
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/fragment/BasePlayListFragment;->selectItem(Lcn/nubia/music/online/model/MusicModel;Landroid/widget/CheckBox;)V

    goto :goto_0
.end method

.method private setActionModeState(Z)V
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-virtual {v0, p1}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->setActionModeState(Z)V

    .line 595
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->notifyDataSetChanged()V

    .line 596
    return-void
.end method

.method private setAllSelectedIcon(Z)V
    .locals 2

    .prologue
    .line 560
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BasePlayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 561
    instance-of v1, v0, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;

    if-eqz v1, :cond_0

    .line 562
    check-cast v0, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getActionBarContextView()Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    move-result-object v0

    .line 563
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getSelectCheckedTextView()Landroid/widget/CheckedTextView;

    move-result-object v0

    .line 564
    :goto_0
    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 568
    :cond_0
    return-void

    .line 563
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startActionMode()V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mActionModManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->startActionMode()V

    .line 604
    return-void
.end method

.method private updateSelectedNum()V
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mActionModManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->updateSelectedNum()V

    .line 600
    return-void
.end method


# virtual methods
.method public createOrRenameSuccess(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 145
    const-string v0, "activity result new playlist"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public doUmengCallback(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 621
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BasePlayListFragment;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/music/fragment/BasePlayListFragment;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcn/nubia/music/fragment/BasePlayListFragment;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    return-void
.end method

.method protected doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 629
    sget-boolean v0, Lcn/nubia/music/third/StatisticsEvent;->UMENG_OPEN:Z

    if-eqz v0, :cond_0

    .line 630
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 631
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    iget-object v1, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcn/nubia/music/third/StatisticsEvent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 634
    :cond_0
    return-void
.end method

.method public exitActionMode()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mActionModManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->exitActionMode()V

    .line 318
    return-void
.end method

.method public getAudioIdlist([J)[J
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 175
    array-length v0, p1

    new-array v3, v0, [J

    .line 177
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 178
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 179
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 180
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    aget-wide v6, p1, v1

    long-to-int v6, v6

    invoke-virtual {v0, v6}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MusicModel;

    iget-wide v6, v0, Lcn/nubia/music/online/model/MusicModel;->mMediaId:J

    aput-wide v6, v3, v1

    .line 181
    aget-wide v6, v3, v1

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid id 222  "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    aget-wide v8, p1, v1

    long-to-int v7, v8

    .line 183
    invoke-virtual {v0, v7}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MusicModel;

    iget-object v0, v0, Lcn/nubia/music/online/model/MusicModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, p1, v1

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 185
    aget-wide v6, p1, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 190
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 191
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [J

    move v1, v2

    .line 192
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 193
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v6, v1

    .line 192
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 196
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid id 333  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v8, v6, v2

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 198
    invoke-direct {p0}, Lcn/nubia/music/fragment/BasePlayListFragment;->getMusicEntryFromList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, v6}, Lcn/nubia/music/utils/MusicUtils;->bulkInsertSongInfo2(Ljava/util/ArrayList;[J)[J

    move-result-object v1

    .line 200
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 201
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-wide v6, v1, v2

    aput-wide v6, v3, v0

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 205
    :cond_3
    return-object v3
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->getCheckedItemCount()I

    move-result v0

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->getCheckedItemIds()[J

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mTrackList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getMusicModel(J)Lcn/nubia/music/online/model/MusicModel;
    .locals 3

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 165
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    long-to-int v2, p1

    invoke-virtual {v0, v2}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 166
    instance-of v2, v0, Lcn/nubia/music/online/model/MusicModel;

    if-eqz v2, :cond_0

    .line 167
    check-cast v0, Lcn/nubia/music/online/model/MusicModel;

    .line 170
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected abstract getUmengEventId()Ljava/lang/String;
.end method

.method protected abstract getUmengEventKey()Ljava/lang/String;
.end method

.method public abstract listItemClickOption(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 151
    packed-switch p1, :pswitch_data_0

    .line 159
    :goto_0
    return-void

    .line 153
    :pswitch_0
    const-string v0, "activity result new playlist"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 93
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BasePlayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 95
    const-class v1, Lcn/nubia/music/app/listener/IPlaybarForceGoneListener;

    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mIsHasPlaybarForceGoneListener:Z

    .line 99
    :cond_0
    return-void
.end method

.method public onCreateActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 225
    iget-boolean v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mIsHasPlaybarForceGoneListener:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcn/nubia/music/app/listener/IPlaybarForceGoneListener;

    .line 227
    invoke-interface {v0, v1}, Lcn/nubia/music/app/listener/IPlaybarForceGoneListener;->setEnable(Z)V

    .line 228
    invoke-interface {v0}, Lcn/nubia/music/app/listener/IPlaybarForceGoneListener;->onForceGone()V

    .line 230
    :cond_0
    return v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 110
    const v0, 0x7f03007b

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 111
    new-instance v0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-virtual {p0}, Lcn/nubia/music/fragment/BasePlayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;-><init>(Lcn/nubia/music/fragment/BasePlayListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    .line 112
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-virtual {p0, v0}, Lcn/nubia/music/fragment/BasePlayListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mTrackList:Landroid/widget/ListView;

    .line 116
    const v0, 0x7f10015c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/ui/MusicNonehintView;

    iput-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mEmptyView:Lcn/nubia/music/ui/MusicNonehintView;

    .line 117
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mEmptyView:Lcn/nubia/music/ui/MusicNonehintView;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mEmptyView:Lcn/nubia/music/ui/MusicNonehintView;

    invoke-virtual {v0, v3}, Lcn/nubia/music/ui/MusicNonehintView;->setEmptyViewClickable(Z)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mTrackList:Landroid/widget/ListView;

    iget-object v2, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mEmptyView:Lcn/nubia/music/ui/MusicNonehintView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 121
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 122
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcn/nubia/music/fragment/BasePlayListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 124
    new-instance v0, Lcn/nubia/music/app/menu/MusicListActionModManager;

    iget-object v2, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcn/nubia/music/app/menu/MusicListActionModManager;-><init>(Landroid/content/Context;Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;)V

    iput-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mActionModManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    .line 125
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mActionModManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0, v3}, Lcn/nubia/music/app/menu/MusicListActionModManager;->setDelete(Z)V

    .line 126
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 128
    return-object v1
.end method

.method public onDestroyActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)Z
    .locals 4

    .prologue
    .line 236
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/music/fragment/BasePlayListFragment$1;

    invoke-direct {v1, p0}, Lcn/nubia/music/fragment/BasePlayListFragment$1;-><init>(Lcn/nubia/music/fragment/BasePlayListFragment;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 252
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->clearCheckedItem()V

    .line 253
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mCheckedPosition:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/music/fragment/BasePlayListFragment;->setActionModeState(Z)V

    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
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
    const/4 v3, 0x1

    .line 496
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-virtual {v0, p3}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MusicModel;

    .line 497
    const v1, 0x7f10005f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 498
    iget-object v2, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mActionModManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v2}, Lcn/nubia/music/app/menu/MusicListActionModManager;->isActionMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 499
    invoke-direct {p0, v0, v1, p3}, Lcn/nubia/music/fragment/BasePlayListFragment;->selectOrNot(Lcn/nubia/music/online/model/MusicModel;Landroid/widget/CheckBox;I)V

    .line 506
    :goto_0
    return v3

    .line 501
    :cond_0
    iget-object v1, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-static {v1}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->access$200(Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 502
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mCheckedPosition:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 503
    invoke-direct {p0, v3}, Lcn/nubia/music/fragment/BasePlayListFragment;->setActionModeState(Z)V

    .line 504
    invoke-direct {p0}, Lcn/nubia/music/fragment/BasePlayListFragment;->startActionMode()V

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mActionModManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->isActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-virtual {v0, p3}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MusicModel;

    .line 487
    const v1, 0x7f10005f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 488
    invoke-direct {p0, v0, v1, p3}, Lcn/nubia/music/fragment/BasePlayListFragment;->selectOrNot(Lcn/nubia/music/online/model/MusicModel;Landroid/widget/CheckBox;I)V

    .line 492
    :goto_0
    return-void

    .line 491
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcn/nubia/music/fragment/BasePlayListFragment;->listItemClickOption(Landroid/widget/ListView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onPause()V

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/third/StatisticsEvent;->onPageEnd(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onPrepareActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/third/StatisticsEvent;->onPageStart(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method protected playSong(I)V
    .locals 3

    .prologue
    .line 612
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/music/fragment/BasePlayListFragment;->getMusicModel(J)Lcn/nubia/music/online/model/MusicModel;

    move-result-object v0

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base play list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcn/nubia/music/online/model/MusicModel;->mIsDownload:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcn/nubia/music/online/model/MusicModel;->mAudioType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 614
    if-eqz v0, :cond_0

    iget v0, v0, Lcn/nubia/music/online/model/MusicModel;->mAudioType:I

    if-nez v0, :cond_0

    .line 615
    invoke-virtual {p0, p1}, Lcn/nubia/music/fragment/BasePlayListFragment;->startPlay(I)V

    .line 617
    :cond_0
    return-void
.end method

.method public removeItem([JZ)V
    .locals 0

    .prologue
    .line 512
    return-void
.end method

.method public selectAllorNone(Landroid/widget/CheckedTextView;)V
    .locals 1

    .prologue
    .line 516
    invoke-direct {p0}, Lcn/nubia/music/fragment/BasePlayListFragment;->hasSelectAll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 518
    invoke-direct {p0}, Lcn/nubia/music/fragment/BasePlayListFragment;->selectNone()V

    .line 523
    :goto_0
    return-void

    .line 520
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 521
    invoke-direct {p0}, Lcn/nubia/music/fragment/BasePlayListFragment;->selectAll()V

    goto :goto_0
.end method

.method public setFavoriteButton(Landroid/view/MenuItem;[J)V
    .locals 2

    .prologue
    .line 262
    new-instance v0, Lcn/nubia/music/fragment/BasePlayListFragment$2;

    invoke-direct {v0, p0, p2, p1}, Lcn/nubia/music/fragment/BasePlayListFragment$2;-><init>(Lcn/nubia/music/fragment/BasePlayListFragment;[JLandroid/view/MenuItem;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 299
    invoke-virtual {v0, v1}, Lcn/nubia/music/fragment/BasePlayListFragment$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 302
    return-void
.end method

.method protected abstract setPlayIndicator(Landroid/view/View;I)V
.end method

.method protected showLoadingData()V
    .locals 2

    .prologue
    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mIsLoading:Z

    .line 322
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mEmptyView:Lcn/nubia/music/ui/MusicNonehintView;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicNonehintView;->showProgress()V

    .line 323
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mEmptyView:Lcn/nubia/music/ui/MusicNonehintView;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicNonehintView;->showEmptyView()V

    .line 324
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mEmptyView:Lcn/nubia/music/ui/MusicNonehintView;

    const v1, 0x7f0b0142

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/MusicNonehintView;->setEmptyViewText(I)V

    .line 325
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mEmptyView:Lcn/nubia/music/ui/MusicNonehintView;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicNonehintView;->hideNoSongsView()V

    .line 326
    return-void
.end method

.method protected showNoData()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mEmptyView:Lcn/nubia/music/ui/MusicNonehintView;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicNonehintView;->hideProgress()V

    .line 330
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mEmptyView:Lcn/nubia/music/ui/MusicNonehintView;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicNonehintView;->hideEmptyView()V

    .line 331
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment;->mEmptyView:Lcn/nubia/music/ui/MusicNonehintView;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicNonehintView;->showNoSongsView()V

    .line 332
    return-void
.end method

.method public startActivityForresult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 140
    invoke-virtual {p0, p1, p2}, Lcn/nubia/music/fragment/BasePlayListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 141
    return-void
.end method

.method protected abstract startPlay(I)V
.end method
