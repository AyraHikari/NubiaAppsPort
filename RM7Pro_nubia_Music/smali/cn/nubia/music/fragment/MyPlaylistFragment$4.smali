.class Lcn/nubia/music/fragment/MyPlaylistFragment$4;
.super Ljava/lang/Object;
.source "MyPlaylistFragment.java"

# interfaces
.implements Lcn/nubia/music/app/menu/ActionModeCallback$IActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/fragment/MyPlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/fragment/MyPlaylistFragment;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/MyPlaylistFragment;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 412
    const-string v2, "ActionMode onActionItemClicked"

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 413
    iget-object v2, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    iget-object v2, v2, Lcn/nubia/music/fragment/MyPlaylistFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    iget-object v2, v2, Lcn/nubia/music/fragment/MyPlaylistFragment;->mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    iget-object v3, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    iget-boolean v3, v3, Lcn/nubia/music/fragment/MyPlaylistFragment;->mActionMode:Z

    invoke-virtual {v2, v3}, Lcn/nubia/music/adapter/CustomRecycleAdapter;->getCheckedItemCount(Z)I

    move-result v2

    if-lez v2, :cond_0

    .line 414
    iget-object v2, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    iget-object v2, v2, Lcn/nubia/music/fragment/MyPlaylistFragment;->mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    iget-object v3, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    iget-boolean v3, v3, Lcn/nubia/music/fragment/MyPlaylistFragment;->mActionMode:Z

    invoke-virtual {v2, v3}, Lcn/nubia/music/adapter/CustomRecycleAdapter;->getCheckedItemIds(Z)[J

    move-result-object v2

    .line 415
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 443
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    invoke-virtual {v1}, Lcn/nubia/music/fragment/MyPlaylistFragment;->exitActionMode()V

    .line 444
    :goto_1
    return v0

    .line 417
    :pswitch_1
    iget-object v1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    invoke-static {v1, v2}, Lcn/nubia/music/fragment/MyPlaylistFragment;->access$400(Lcn/nubia/music/fragment/MyPlaylistFragment;[J)V

    .line 418
    iget-object v1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    iget-object v2, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    invoke-static {v2}, Lcn/nubia/music/fragment/MyPlaylistFragment;->access$500(Lcn/nubia/music/fragment/MyPlaylistFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    invoke-static {v3}, Lcn/nubia/music/fragment/MyPlaylistFragment;->access$600(Lcn/nubia/music/fragment/MyPlaylistFragment;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "delete_playlist"

    invoke-static {v1, v2, v3, v4}, Lcn/nubia/music/fragment/MyPlaylistFragment;->access$700(Lcn/nubia/music/fragment/MyPlaylistFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :pswitch_2
    iget-object v1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    invoke-static {v1, v2}, Lcn/nubia/music/fragment/MyPlaylistFragment;->access$800(Lcn/nubia/music/fragment/MyPlaylistFragment;[J)V

    .line 424
    iget-object v1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    iget-object v2, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    invoke-static {v2}, Lcn/nubia/music/fragment/MyPlaylistFragment;->access$500(Lcn/nubia/music/fragment/MyPlaylistFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    invoke-static {v3}, Lcn/nubia/music/fragment/MyPlaylistFragment;->access$600(Lcn/nubia/music/fragment/MyPlaylistFragment;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "add_to_playing"

    invoke-static {v1, v2, v3, v4}, Lcn/nubia/music/fragment/MyPlaylistFragment;->access$700(Lcn/nubia/music/fragment/MyPlaylistFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 428
    :pswitch_3
    iget-object v3, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    aget-wide v4, v2, v1

    invoke-static {v3, v4, v5}, Lcn/nubia/music/fragment/MyPlaylistFragment;->access$900(Lcn/nubia/music/fragment/MyPlaylistFragment;J)V

    .line 429
    iget-object v1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    iget-object v2, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    invoke-static {v2}, Lcn/nubia/music/fragment/MyPlaylistFragment;->access$500(Lcn/nubia/music/fragment/MyPlaylistFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    invoke-static {v3}, Lcn/nubia/music/fragment/MyPlaylistFragment;->access$600(Lcn/nubia/music/fragment/MyPlaylistFragment;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "rename_playlist"

    invoke-static {v1, v2, v3, v4}, Lcn/nubia/music/fragment/MyPlaylistFragment;->access$700(Lcn/nubia/music/fragment/MyPlaylistFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :pswitch_4
    iget-object v1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    invoke-static {v1, v2}, Lcn/nubia/music/fragment/MyPlaylistFragment;->access$1000(Lcn/nubia/music/fragment/MyPlaylistFragment;[J)V

    .line 435
    iget-object v1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    iget-object v2, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    invoke-static {v2}, Lcn/nubia/music/fragment/MyPlaylistFragment;->access$500(Lcn/nubia/music/fragment/MyPlaylistFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    invoke-static {v3}, Lcn/nubia/music/fragment/MyPlaylistFragment;->access$600(Lcn/nubia/music/fragment/MyPlaylistFragment;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "add_to_playlist"

    invoke-static {v1, v2, v3, v4}, Lcn/nubia/music/fragment/MyPlaylistFragment;->access$700(Lcn/nubia/music/fragment/MyPlaylistFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 440
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->exitActionMode()V

    move v0, v1

    .line 441
    goto :goto_1

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z
    .locals 8

    .prologue
    const v7, 0x7f0b0042

    const/4 v6, 0x1

    const v5, 0x7f0b000c

    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 376
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->access$100(Lcn/nubia/music/fragment/MyPlaylistFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcn/nubia/music/app/listener/IPlaybarForceGoneListener;

    .line 378
    invoke-interface {v0, v6}, Lcn/nubia/music/app/listener/IPlaybarForceGoneListener;->setEnable(Z)V

    .line 379
    invoke-interface {v0}, Lcn/nubia/music/app/listener/IPlaybarForceGoneListener;->onForceGone()V

    .line 381
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->setActionbarMenuLayout()V

    .line 382
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 383
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 384
    const v1, 0x7f030016

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 385
    iget-object v2, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    const v0, 0x7f100046

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcn/nubia/music/fragment/MyPlaylistFragment;->mSelectText:Landroid/widget/TextView;

    .line 386
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mSelectText:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 387
    invoke-virtual {p1, v1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 389
    const/16 v0, 0x19

    invoke-interface {p2, v3, v0, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 390
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020067

    .line 391
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 392
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 395
    const/16 v0, 0x1d

    invoke-interface {p2, v3, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 396
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020064

    .line 397
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 398
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 401
    const/16 v0, 0x1e

    invoke-interface {p2, v3, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0b008a

    .line 402
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020061

    .line 403
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 404
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 406
    return v6
.end method

.method public onDestroyActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)V
    .locals 4

    .prologue
    .line 352
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->access$200(Lcn/nubia/music/fragment/MyPlaylistFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/nubia/music/fragment/MyPlaylistFragment$4$1;

    invoke-direct {v1, p0}, Lcn/nubia/music/fragment/MyPlaylistFragment$4$1;-><init>(Lcn/nubia/music/fragment/MyPlaylistFragment$4;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 368
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    iget-object v0, v0, Lcn/nubia/music/adapter/CustomRecycleAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 369
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/music/fragment/MyPlaylistFragment;->access$300(Lcn/nubia/music/fragment/MyPlaylistFragment;Z)V

    .line 370
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    .line 371
    return-void
.end method

.method public onPrepareActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 342
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->access$100(Lcn/nubia/music/fragment/MyPlaylistFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$4;->a:Lcn/nubia/music/fragment/MyPlaylistFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcn/nubia/music/app/listener/IPlaybarForceGoneListener;

    .line 344
    invoke-interface {v0, v1}, Lcn/nubia/music/app/listener/IPlaybarForceGoneListener;->setEnable(Z)V

    .line 345
    invoke-interface {v0}, Lcn/nubia/music/app/listener/IPlaybarForceGoneListener;->onForceGone()V

    .line 347
    :cond_0
    return v1
.end method
