.class Lcn/nubia/music/fragment/BaseLetterListFragment$2;
.super Ljava/lang/Object;
.source "BaseLetterListFragment.java"

# interfaces
.implements Lcn/nubia/music/app/menu/ActionModeCallback$IActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/fragment/BaseLetterListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/fragment/BaseLetterListFragment;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/BaseLetterListFragment;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 289
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-static {v1}, Lcn/nubia/music/fragment/BaseLetterListFragment;->access$600(Lcn/nubia/music/fragment/BaseLetterListFragment;)[J

    move-result-object v1

    .line 291
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 292
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->exitActionMode()V

    .line 293
    const/4 v0, 0x0

    .line 357
    :goto_0
    return v0

    .line 295
    :cond_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 344
    :sswitch_0
    iget-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-virtual {v2, v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->doUmeng(I)V

    .line 345
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 346
    iget-object v3, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    iget-object v3, v3, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    const-class v4, Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 347
    const-string v3, "audioslist"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 348
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    iget-object v1, v1, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 349
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-virtual {v1}, Lcn/nubia/music/fragment/BaseLetterListFragment;->exitActionMode()V

    goto :goto_0

    .line 297
    :sswitch_1
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-static {v1}, Lcn/nubia/music/fragment/BaseLetterListFragment;->access$700(Lcn/nubia/music/fragment/BaseLetterListFragment;)V

    goto :goto_0

    .line 300
    :sswitch_2
    iget-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcn/nubia/music/fragment/BaseLetterListFragment;->doUmeng(I)V

    .line 301
    invoke-static {v1}, Lcn/nubia/music/utils/MusicUtils;->isListInFavoList([J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 302
    invoke-static {v1}, Lcn/nubia/music/utils/MusicUtils;->removeListFromFavoList([J)V

    .line 303
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    iget-object v1, v1, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0067

    invoke-static {v1, v2}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    .line 311
    :goto_1
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-virtual {v1}, Lcn/nubia/music/fragment/BaseLetterListFragment;->exitActionMode()V

    goto :goto_0

    .line 307
    :cond_2
    invoke-static {v1}, Lcn/nubia/music/utils/MusicUtils;->addToPlayFavorite([J)V

    .line 308
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    iget-object v1, v1, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0068

    invoke-static {v1, v2}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    goto :goto_1

    .line 317
    :sswitch_3
    new-instance v1, Lcn/nubia/music/dialog/CreatePlaylistDialog;

    iget-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    iget-object v2, v2, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcn/nubia/music/dialog/CreatePlaylistDialog;-><init>(Landroid/content/Context;)V

    .line 318
    iget-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-virtual {v1, v2}, Lcn/nubia/music/dialog/CreatePlaylistDialog;->setCallback(Lcn/nubia/music/dialog/PlaylistActionBaseDialog$DialogActionCallback;)V

    .line 319
    invoke-virtual {v1}, Lcn/nubia/music/dialog/CreatePlaylistDialog;->show()V

    goto :goto_0

    .line 322
    :sswitch_4
    invoke-interface {p2}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "playlist"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 323
    invoke-static {v2, v3, v1}, Lcn/nubia/music/utils/MusicUtils;->isInPlayList(J[J)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 324
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    iget-object v1, v1, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0007

    invoke-static {v1, v2}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    .line 329
    :goto_2
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-virtual {v1}, Lcn/nubia/music/fragment/BaseLetterListFragment;->exitActionMode()V

    goto/16 :goto_0

    .line 326
    :cond_3
    invoke-static {v1, v2, v3}, Lcn/nubia/music/utils/MusicUtils;->addToPlaylist([JJ)V

    .line 327
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    iget-object v1, v1, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0008

    invoke-static {v1, v2}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    goto :goto_2

    .line 332
    :sswitch_5
    iget-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    iget-object v2, v2, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcn/nubia/music/utils/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    .line 333
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-virtual {v1}, Lcn/nubia/music/fragment/BaseLetterListFragment;->exitActionMode()V

    goto/16 :goto_0

    .line 336
    :sswitch_6
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-static {v1}, Lcn/nubia/music/fragment/BaseLetterListFragment;->access$800(Lcn/nubia/music/fragment/BaseLetterListFragment;)V

    goto/16 :goto_0

    .line 339
    :sswitch_7
    iget-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    const/16 v3, 0x1a

    invoke-virtual {v2, v3}, Lcn/nubia/music/fragment/BaseLetterListFragment;->doUmeng(I)V

    .line 340
    iget-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    iget-object v2, v2, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcn/nubia/music/utils/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    .line 341
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-virtual {v1}, Lcn/nubia/music/fragment/BaseLetterListFragment;->exitActionMode()V

    goto/16 :goto_0

    .line 352
    :sswitch_8
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-virtual {v1}, Lcn/nubia/music/fragment/BaseLetterListFragment;->showActionbarMorePopup()V

    goto/16 :goto_0

    .line 295
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_6
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0xa -> :sswitch_1
        0xc -> :sswitch_5
        0x10 -> :sswitch_2
        0x19 -> :sswitch_8
        0x1a -> :sswitch_7
    .end sparse-switch
.end method

.method public onCreateActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 267
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->access$500(Lcn/nubia/music/fragment/BaseLetterListFragment;)V

    .line 268
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-virtual {v0, p2}, Lcn/nubia/music/fragment/BaseLetterListFragment;->showActionbarItems(Landroid/view/Menu;)V

    .line 269
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 270
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 272
    const v1, 0x7f030016

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 273
    iget-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    const v0, 0x7f100046

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcn/nubia/music/fragment/BaseLetterListFragment;->mSelectText:Landroid/widget/TextView;

    .line 274
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mSelectText:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 275
    invoke-virtual {p1, v1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 279
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->access$200(Lcn/nubia/music/fragment/BaseLetterListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcn/nubia/music/app/listener/IPlaybarForceGoneListener;

    .line 281
    invoke-interface {v0, v4}, Lcn/nubia/music/app/listener/IPlaybarForceGoneListener;->setEnable(Z)V

    .line 282
    invoke-interface {v0}, Lcn/nubia/music/app/listener/IPlaybarForceGoneListener;->onForceGone()V

    .line 284
    :cond_0
    return v4
.end method

.method public onDestroyActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)V
    .locals 4

    .prologue
    const/4 v2, 0x7

    .line 256
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->access$300(Lcn/nubia/music/fragment/BaseLetterListFragment;)Lcn/nubia/music/fragment/BaseLetterListFragment$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/music/fragment/BaseLetterListFragment$b;->removeMessages(I)V

    .line 257
    const-string v0, "base letter onDestroyActionMode"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->access$300(Lcn/nubia/music/fragment/BaseLetterListFragment;)Lcn/nubia/music/fragment/BaseLetterListFragment$b;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-static {v1}, Lcn/nubia/music/fragment/BaseLetterListFragment;->access$300(Lcn/nubia/music/fragment/BaseLetterListFragment;)Lcn/nubia/music/fragment/BaseLetterListFragment$b;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lcn/nubia/music/fragment/BaseLetterListFragment$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/music/fragment/BaseLetterListFragment$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 260
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMdeiaModeSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 261
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/music/fragment/BaseLetterListFragment;->access$400(Lcn/nubia/music/fragment/BaseLetterListFragment;Z)V

    .line 262
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    .line 263
    return-void
.end method

.method public onPrepareActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 246
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->access$200(Lcn/nubia/music/fragment/BaseLetterListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcn/nubia/music/app/listener/IPlaybarForceGoneListener;

    .line 248
    invoke-interface {v0, v1}, Lcn/nubia/music/app/listener/IPlaybarForceGoneListener;->setEnable(Z)V

    .line 249
    invoke-interface {v0}, Lcn/nubia/music/app/listener/IPlaybarForceGoneListener;->onForceGone()V

    .line 251
    :cond_0
    return v1
.end method
