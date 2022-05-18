.class Lcn/nubia/music/activity/BaseDetailListActivity$10;
.super Ljava/lang/Object;
.source "BaseDetailListActivity.java"

# interfaces
.implements Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/BaseDetailListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/BaseDetailListActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/BaseDetailListActivity;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcn/nubia/commonui/actionbar/view/ActionMode;)V
    .locals 3

    .prologue
    .line 482
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 483
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    iget-object v1, v1, Lcn/nubia/music/activity/BaseDetailListActivity;->mPlaylistId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 485
    :try_start_0
    iget-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    iget-object v1, v1, Lcn/nubia/music/activity/BaseDetailListActivity;->mPlaylistId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 486
    :catch_0
    move-exception v0

    .line 487
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
    .line 520
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseDetailListActivity;->exitActionMode()V

    .line 521
    return-void
.end method

.method public doUmengCallback(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 515
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-virtual {v1}, Lcn/nubia/music/activity/BaseDetailListActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-virtual {v2}, Lcn/nubia/music/activity/BaseDetailListActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcn/nubia/music/activity/BaseDetailListActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method public getAudioIdlist([J)[J
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-static {v0, p1}, Lcn/nubia/music/activity/BaseDetailListActivity;->access$300(Lcn/nubia/music/activity/BaseDetailListActivity;[J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    const/4 v0, 0x0

    .line 470
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-static {v0, p1}, Lcn/nubia/music/activity/BaseDetailListActivity;->access$500(Lcn/nubia/music/activity/BaseDetailListActivity;[J)[J

    move-result-object v0

    goto :goto_0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->getCheckedItemCount()I

    move-result v0

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->getCheckedItemIds()[J

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity;->mToneList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getMusicModel(J)Lcn/nubia/music/online/model/MusicModel;
    .locals 3

    .prologue
    .line 453
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 454
    const/4 v0, 0x0

    .line 457
    :goto_0
    return-object v0

    .line 456
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MusicModel;

    goto :goto_0
.end method

.method public onCreateActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 475
    const-string v0, "ActionMode onCreateActionMode"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 476
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 477
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 444
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseDetailListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 445
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 446
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mCheckedPosition:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 447
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-static {v0, v1}, Lcn/nubia/music/activity/BaseDetailListActivity;->access$600(Lcn/nubia/music/activity/BaseDetailListActivity;Z)V

    .line 448
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x1

    return v0
.end method

.method public removeItem([JZ)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 412
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-static {v0, p1}, Lcn/nubia/music/activity/BaseDetailListActivity;->access$300(Lcn/nubia/music/activity/BaseDetailListActivity;[J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-static {v0, p1}, Lcn/nubia/music/activity/BaseDetailListActivity;->access$500(Lcn/nubia/music/activity/BaseDetailListActivity;[J)[J

    move-result-object v0

    .line 416
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 418
    iget-object v2, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    const v3, 0x7f0b0047

    invoke-virtual {v2, v3}, Lcn/nubia/music/activity/BaseDetailListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 419
    new-array v3, v6, [Ljava/lang/Object;

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 421
    const-string v3, "description"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v2, "items"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 423
    if-eqz p2, :cond_1

    .line 424
    const-string v0, "hascheckbox"

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 430
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 431
    iget-object v2, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    const-class v3, Lcn/nubia/music/activity/DeleteItemsActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 432
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 433
    iget-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Lcn/nubia/music/activity/BaseDetailListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 434
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseDetailListActivity;->exitActionMode()V

    goto :goto_0

    .line 426
    :cond_1
    const-string v0, "hascheckbox"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 427
    const-string v0, "playlistid"

    iget-object v2, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    iget-object v2, v2, Lcn/nubia/music/activity/BaseDetailListActivity;->mPlaylistId:Ljava/lang/String;

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
    .line 494
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/BaseDetailListActivity;->access$700(Lcn/nubia/music/activity/BaseDetailListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 496
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/BaseDetailListActivity;->access$800(Lcn/nubia/music/activity/BaseDetailListActivity;)V

    .line 501
    :goto_0
    return-void

    .line 498
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 499
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/BaseDetailListActivity;->access$900(Lcn/nubia/music/activity/BaseDetailListActivity;)V

    goto :goto_0
.end method

.method public setFavoriteButton(Landroid/view/MenuItem;[J)V
    .locals 6

    .prologue
    .line 387
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-static {v0, p2}, Lcn/nubia/music/activity/BaseDetailListActivity;->access$300(Lcn/nubia/music/activity/BaseDetailListActivity;[J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    array-length v0, p2

    new-array v1, v0, [J

    .line 393
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/BaseDetailListActivity;->access$400(Lcn/nubia/music/activity/BaseDetailListActivity;)[J

    move-result-object v2

    .line 394
    const/4 v0, 0x0

    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_2

    .line 395
    aget-wide v4, p2, v0

    long-to-int v3, v4

    aget-wide v4, v2, v3

    aput-wide v4, v1, v0

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 397
    :cond_2
    invoke-static {v1}, Lcn/nubia/music/utils/MusicUtils;->isListInFavoList([J)Z

    move-result v0

    .line 399
    if-eqz p1, :cond_0

    .line 400
    if-eqz v0, :cond_3

    .line 401
    const v0, 0x7f02006a

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 402
    const v0, 0x7f0b0041

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 404
    :cond_3
    const v0, 0x7f020073

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 405
    const v0, 0x7f0b000d

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public startActivityForresult(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$10;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/music/activity/BaseDetailListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 383
    return-void
.end method
