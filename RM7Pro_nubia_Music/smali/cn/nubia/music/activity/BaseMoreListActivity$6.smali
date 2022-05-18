.class Lcn/nubia/music/activity/BaseMoreListActivity$6;
.super Ljava/lang/Object;
.source "BaseMoreListActivity.java"

# interfaces
.implements Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/BaseMoreListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/BaseMoreListActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/BaseMoreListActivity;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcn/nubia/commonui/actionbar/view/ActionMode;)V
    .locals 3

    .prologue
    .line 474
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v1, v1, Lcn/nubia/music/activity/BaseMoreListActivity;->mPlaylistId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 477
    :try_start_0
    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v1, v1, Lcn/nubia/music/activity/BaseMoreListActivity;->mPlaylistId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 478
    :catch_0
    move-exception v0

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public createOrRenameSuccess(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->exitActionMode()V

    .line 513
    return-void
.end method

.method public doUmengCallback(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 507
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-virtual {v1}, Lcn/nubia/music/activity/BaseMoreListActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-virtual {v2}, Lcn/nubia/music/activity/BaseMoreListActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcn/nubia/music/activity/BaseMoreListActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method public getAudioIdlist([J)[J
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-static {v0, p1}, Lcn/nubia/music/activity/BaseMoreListActivity;->access$200(Lcn/nubia/music/activity/BaseMoreListActivity;[J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    const/4 v0, 0x0

    .line 458
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-static {v0, p1}, Lcn/nubia/music/activity/BaseMoreListActivity;->access$400(Lcn/nubia/music/activity/BaseMoreListActivity;[J)[J

    move-result-object v0

    goto :goto_0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->getCheckedItemCount()I

    move-result v0

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->getCheckedItemIds()[J

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity;->mToneList:Lcn/nubia/music/ui/ScrollRefreshListView;

    return-object v0
.end method

.method public getMusicModel(J)Lcn/nubia/music/online/model/MusicModel;
    .locals 3

    .prologue
    .line 441
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 442
    const/4 v0, 0x0

    .line 445
    :goto_0
    return-object v0

    .line 444
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MusicModel;

    goto :goto_0
.end method

.method public onCreateActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 463
    const-string v0, "ActionMode onCreateActionMode"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->access$500(Lcn/nubia/music/activity/BaseMoreListActivity;)Lcn/nubia/music/ui/MiniMusicPlayBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->access$500(Lcn/nubia/music/activity/BaseMoreListActivity;)Lcn/nubia/music/ui/MiniMusicPlayBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/MiniMusicPlayBar;->setVisibility(I)V

    .line 467
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity;->mToneList:Lcn/nubia/music/ui/ScrollRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/ScrollRefreshListView;->setRefreshListener(Z)V

    .line 468
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 469
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 422
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/music/activity/BaseMoreListActivity$6$1;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/BaseMoreListActivity$6$1;-><init>(Lcn/nubia/music/activity/BaseMoreListActivity$6;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 432
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity;->mToneList:Lcn/nubia/music/ui/ScrollRefreshListView;

    invoke-virtual {v0, v4}, Lcn/nubia/music/ui/ScrollRefreshListView;->setRefreshListener(Z)V

    .line 433
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 434
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mCheckedPosition:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 435
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-static {v0, v4}, Lcn/nubia/music/activity/BaseMoreListActivity;->access$600(Lcn/nubia/music/activity/BaseMoreListActivity;Z)V

    .line 436
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x1

    return v0
.end method

.method public removeItem([JZ)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 390
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-static {v0, p1}, Lcn/nubia/music/activity/BaseMoreListActivity;->access$200(Lcn/nubia/music/activity/BaseMoreListActivity;[J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-static {v0, p1}, Lcn/nubia/music/activity/BaseMoreListActivity;->access$400(Lcn/nubia/music/activity/BaseMoreListActivity;[J)[J

    move-result-object v0

    .line 394
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 396
    iget-object v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    const v3, 0x7f0b0047

    invoke-virtual {v2, v3}, Lcn/nubia/music/activity/BaseMoreListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 397
    new-array v3, v6, [Ljava/lang/Object;

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 399
    const-string v3, "description"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v2, "items"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 401
    if-eqz p2, :cond_1

    .line 402
    const-string v0, "hascheckbox"

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 408
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 409
    iget-object v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    const-class v3, Lcn/nubia/music/activity/DeleteItemsActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 410
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 411
    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Lcn/nubia/music/activity/BaseMoreListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 412
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->exitActionMode()V

    goto :goto_0

    .line 404
    :cond_1
    const-string v0, "hascheckbox"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 405
    const-string v0, "playlistid"

    iget-object v2, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v2, v2, Lcn/nubia/music/activity/BaseMoreListActivity;->mPlaylistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public selectAllorNone(Landroid/widget/CheckedTextView;)V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->access$700(Lcn/nubia/music/activity/BaseMoreListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 488
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->access$800(Lcn/nubia/music/activity/BaseMoreListActivity;)V

    .line 493
    :goto_0
    return-void

    .line 490
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 491
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->access$900(Lcn/nubia/music/activity/BaseMoreListActivity;)V

    goto :goto_0
.end method

.method public setFavoriteButton(Landroid/view/MenuItem;[J)V
    .locals 6

    .prologue
    .line 365
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-static {v0, p2}, Lcn/nubia/music/activity/BaseMoreListActivity;->access$200(Lcn/nubia/music/activity/BaseMoreListActivity;[J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    array-length v0, p2

    new-array v1, v0, [J

    .line 371
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->access$300(Lcn/nubia/music/activity/BaseMoreListActivity;)[J

    move-result-object v2

    .line 372
    const/4 v0, 0x0

    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_2

    .line 373
    aget-wide v4, p2, v0

    long-to-int v3, v4

    aget-wide v4, v2, v3

    aput-wide v4, v1, v0

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 375
    :cond_2
    invoke-static {v1}, Lcn/nubia/music/utils/MusicUtils;->isListInFavoList([J)Z

    move-result v0

    .line 377
    if-eqz p1, :cond_0

    .line 378
    if-eqz v0, :cond_3

    .line 379
    const v0, 0x7f02006a

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 380
    const v0, 0x7f0b0041

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 382
    :cond_3
    const v0, 0x7f020073

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 383
    const v0, 0x7f0b000d

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public startActivityForresult(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/music/activity/BaseMoreListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 361
    return-void
.end method
