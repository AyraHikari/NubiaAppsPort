.class public Lcn/nubia/music/app/menu/MusicListActionModManager;
.super Ljava/lang/Object;
.source "MusicListActionModManager.java"

# interfaces
.implements Lcn/nubia/music/app/menu/MusicMenu;
.implements Lcn/nubia/music/dialog/PlaylistActionBaseDialog$DialogActionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;
    }
.end annotation


# instance fields
.field private mActionMenuView:Landroid/view/ViewGroup;

.field private mActionMode:Z

.field private mActionModeCallback:Lcn/nubia/music/app/menu/ActionModeCallback;

.field public final mActionModeListener:Lcn/nubia/music/app/menu/ActionModeCallback$IActionModeListener;

.field private mCallback:Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

.field private mChooseFormat:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDelete:Z

.field private mIsFav:Z

.field private mIsLocalDetail:Z

.field private mLocalPopMenuMap:[I

.field private mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

.field private mMoreListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

.field private mMusicId:J

.field private mMusicPath:Ljava/lang/String;

.field private mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopup;

.field private mResetActionMenuFlag:Z

.field private mSelectText:Landroid/widget/TextView;

.field private setRingListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mActionMode:Z

    .line 37
    iput-boolean v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mDelete:Z

    .line 38
    iput-boolean v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mIsFav:Z

    .line 39
    iput-boolean v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mIsLocalDetail:Z

    .line 44
    iput-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mActionMenuView:Landroid/view/ViewGroup;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mResetActionMenuFlag:Z

    .line 105
    new-instance v0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/app/menu/MusicListActionModManager$1;-><init>(Lcn/nubia/music/app/menu/MusicListActionModManager;)V

    iput-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mActionModeListener:Lcn/nubia/music/app/menu/ActionModeCallback$IActionModeListener;

    .line 298
    iput-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mMusicPath:Ljava/lang/String;

    .line 299
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mMusicId:J

    .line 300
    new-instance v0, Lcn/nubia/music/app/menu/MusicListActionModManager$2;

    invoke-direct {v0, p0}, Lcn/nubia/music/app/menu/MusicListActionModManager$2;-><init>(Lcn/nubia/music/app/menu/MusicListActionModManager;)V

    iput-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->setRingListener:Landroid/content/DialogInterface$OnClickListener;

    .line 394
    new-instance v0, Lcn/nubia/music/app/menu/MusicListActionModManager$3;

    invoke-direct {v0, p0}, Lcn/nubia/music/app/menu/MusicListActionModManager$3;-><init>(Lcn/nubia/music/app/menu/MusicListActionModManager;)V

    iput-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mMoreListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    .line 48
    iput-object p1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mCallback:Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    .line 50
    const v0, 0x7f0b006e

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mChooseFormat:Ljava/lang/String;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/app/menu/MusicListActionModManager;Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/app/menu/MusicListActionModManager;->createLocalChoiceModeMenu(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/music/app/menu/MusicListActionModManager;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->setActionbarMenuLayout()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/music/app/menu/MusicListActionModManager;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->setRingtoneForCard(I)V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/music/app/menu/MusicListActionModManager;)[I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mLocalPopMenuMap:[I

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/music/app/menu/MusicListActionModManager;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->doLocalMorePopup(I)V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/music/app/menu/MusicListActionModManager;Landroid/widget/CheckedTextView;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->selectAllorNone(Landroid/widget/CheckedTextView;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/music/app/menu/MusicListActionModManager;)Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mCallback:Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/music/app/menu/MusicListActionModManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/music/app/menu/MusicListActionModManager;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->showMessage(I)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/music/app/menu/MusicListActionModManager;Lcn/nubia/commonui/actionbar/view/ActionMode;)I
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->getPlaylistId(Lcn/nubia/commonui/actionbar/view/ActionMode;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/music/app/menu/MusicListActionModManager;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->delete(I)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/music/app/menu/MusicListActionModManager;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->setRingtone()V

    return-void
.end method

.method static synthetic access$802(Lcn/nubia/music/app/menu/MusicListActionModManager;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mActionMode:Z

    return p1
.end method

.method static synthetic access$902(Lcn/nubia/music/app/menu/MusicListActionModManager;Lcn/nubia/commonui/actionbar/view/ActionMode;)Lcn/nubia/commonui/actionbar/view/ActionMode;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    return-object p1
.end method

.method private addMenuItems(Landroid/view/Menu;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 441
    iget-boolean v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mIsLocalDetail:Z

    if-eqz v0, :cond_0

    .line 442
    invoke-direct {p0, p1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->showActionbarAddFavoriteItem(Landroid/view/Menu;)V

    .line 443
    invoke-direct {p0, p1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->showActionbarAddPlaylistItem(Landroid/view/Menu;)V

    .line 444
    invoke-direct {p0, p1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->showActionbarAddPlayingItem(Landroid/view/Menu;)V

    .line 461
    :goto_0
    return-void

    .line 447
    :cond_0
    const/16 v0, 0xa

    const v1, 0x7f0b0044

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020067

    .line 448
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 449
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 451
    const/16 v0, 0x10

    const v1, 0x7f0b000d

    invoke-interface {p1, v2, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020073

    .line 452
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 453
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 456
    const/4 v0, 0x3

    const v1, 0x7f0b000c

    invoke-interface {p1, v2, v4, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020064

    .line 457
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 458
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method private createLocalChoiceModeMenu(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 76
    const-string v0, "ActionMode onCreateActionMode"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 77
    iget-boolean v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mDelete:Z

    if-nez v0, :cond_0

    .line 78
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mLocalPopMenuMap:[I

    .line 87
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mActionMode:Z

    .line 89
    invoke-direct {p0, p2}, Lcn/nubia/music/app/menu/MusicListActionModManager;->addMenuItems(Landroid/view/Menu;)V

    .line 91
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 93
    const v1, 0x7f030016

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 94
    const v0, 0x7f100046

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mSelectText:Landroid/widget/TextView;

    .line 95
    invoke-virtual {p1, v1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 96
    iput-object p1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    .line 97
    return-void

    .line 82
    :cond_0
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mLocalPopMenuMap:[I

    goto :goto_0

    .line 78
    :array_0
    .array-data 4
        0xe
        0x2
    .end array-data

    .line 82
    :array_1
    .array-data 4
        0xa
        0x2
    .end array-data
.end method

.method private delete(I)V
    .locals 6

    .prologue
    .line 548
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mCallback:Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    if-nez v0, :cond_1

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mCallback:Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    const-string v1, "delete_music"

    invoke-interface {v0, v1}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->doUmengCallback(Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mCallback:Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    invoke-interface {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->getCheckedItemIds()[J

    move-result-object v0

    .line 554
    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    .line 558
    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mCallback:Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    invoke-interface {v1, v0}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->getAudioIdlist([J)[J

    move-result-object v0

    .line 559
    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    .line 563
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 565
    iget-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0047

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 566
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 568
    const-string v3, "description"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v2, "items"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 570
    const-string v0, "isFav"

    iget-boolean v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mIsFav:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 571
    const-string v0, "playlistid"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 573
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 574
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    const-class v3, Lcn/nubia/music/activity/DeleteItemsActivity;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 575
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 576
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 578
    invoke-virtual {p0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->exitActionMode()V

    goto :goto_0
.end method

.method private disableActionbarMenu(Landroid/view/Menu;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 714
    if-nez p1, :cond_1

    .line 723
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 717
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 718
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 719
    invoke-interface {v2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 720
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 717
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private doLocalMorePopup(I)V
    .locals 4

    .prologue
    .line 405
    sparse-switch p1, :sswitch_data_0

    .line 430
    const-string v0, "doMorePopup,local,default"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 434
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mActionMode:Z

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {p0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->exitActionMode()V

    .line 437
    :cond_0
    :goto_1
    return-void

    .line 408
    :sswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->delete(I)V

    goto :goto_0

    .line 411
    :sswitch_1
    invoke-direct {p0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->setRingtone()V

    goto :goto_0

    .line 414
    :sswitch_2
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mCallback:Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    const-string v1, "add_to_playlist"

    invoke-interface {v0, v1}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->doUmengCallback(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mCallback:Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    invoke-interface {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->getCheckedItemIds()[J

    move-result-object v0

    .line 416
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_2

    .line 417
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->exitActionMode()V

    goto :goto_1

    .line 422
    :cond_2
    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mCallback:Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    invoke-interface {v1, v0}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->getAudioIdlist([J)[J

    move-result-object v0

    .line 423
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 424
    iget-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    const-class v3, Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 425
    const-string v2, "audioslist"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 426
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 427
    invoke-virtual {p0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->exitActionMode()V

    goto :goto_0

    .line 405
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0xa -> :sswitch_0
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method private enableActionbarMenu(Landroid/view/Menu;)V
    .locals 3

    .prologue
    .line 702
    if-nez p1, :cond_1

    .line 711
    :cond_0
    return-void

    .line 705
    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 706
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 707
    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 708
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 705
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getMusicPath(J)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 276
    .line 277
    const-string v1, "content://nubia.music.preset/audios"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "data"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0, v0}, Lcn/nubia/music/utils/MusicUtils;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 280
    if-eqz v1, :cond_0

    .line 281
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 282
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 285
    :cond_0
    return-object v0
.end method

.method private getPlaylistId(Lcn/nubia/commonui/actionbar/view/ActionMode;)I
    .locals 2

    .prologue
    .line 268
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 270
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 272
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processItemStateChanged(Lcn/nubia/commonui/actionbar/view/ActionMode;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 345
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mSelectText:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mChooseFormat:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mCallback:Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    invoke-interface {v3}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->getCheckedItemCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    if-nez v0, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mCallback:Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    invoke-interface {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 351
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->disableActionbarMenu(Landroid/view/Menu;)V

    goto :goto_0

    .line 354
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->enableActionbarMenu(Landroid/view/Menu;)V

    .line 355
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mCallback:Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    invoke-interface {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->getCheckedItemIds()[J

    move-result-object v0

    .line 356
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 357
    const/16 v2, 0x13

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 358
    iget-object v3, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mCallback:Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    invoke-interface {v3}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->getCheckedItemCount()I

    move-result v3

    if-le v3, v4, :cond_4

    .line 359
    if-eqz v2, :cond_3

    .line 360
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 362
    :cond_3
    invoke-direct {p0, v1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->showActionbarMultiChooseItem(Landroid/view/Menu;)V

    .line 371
    :goto_1
    invoke-direct {p0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->setActionbarMenuLayout()V

    .line 373
    const/16 v2, 0x10

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 374
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    iget-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mCallback:Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    if-eqz v2, :cond_0

    .line 375
    iget-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mCallback:Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    invoke-interface {v2, v1, v0}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->setFavoriteButton(Landroid/view/MenuItem;[J)V

    goto :goto_0

    .line 364
    :cond_4
    if-eqz v2, :cond_5

    .line 365
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 367
    :cond_5
    iput-boolean v4, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mResetActionMenuFlag:Z

    .line 368
    invoke-direct {p0, v1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->showActionbarSingleChooseItem(Landroid/view/Menu;)V

    goto :goto_1
.end method

.method private selectAllorNone(Landroid/widget/CheckedTextView;)V
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mCallback:Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    invoke-interface {v0, p1}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->selectAllorNone(Landroid/widget/CheckedTextView;)V

    .line 676
    return-void
.end method

.method private setActionbarMenuLayout()V
    .locals 13

    .prologue
    const/4 v12, -0x2

    const/4 v3, 0x0

    .line 620
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 621
    const-string v0, "!(mContext instanceof Activity)"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mActionMenuView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mResetActionMenuFlag:Z

    if-eqz v0, :cond_6

    .line 625
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 626
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 627
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 632
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v5, v3

    .line 634
    :goto_1
    if-ge v5, v6, :cond_6

    .line 635
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 636
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 637
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.android.internal.widget.ActionBarContainer"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 638
    check-cast v1, Landroid/view/ViewGroup;

    .line 639
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    move v4, v3

    .line 640
    :goto_2
    if-ge v4, v7, :cond_5

    .line 641
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 642
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 643
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.widget.ActionMenuView"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_4

    .line 644
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v8

    if-nez v8, :cond_4

    .line 645
    iput-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mActionMenuView:Landroid/view/ViewGroup;

    .line 646
    iput-boolean v3, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mResetActionMenuFlag:Z

    .line 648
    iget-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mActionMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    move v2, v3

    .line 649
    :goto_3
    if-ge v2, v8, :cond_4

    .line 650
    iget-object v9, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mActionMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 651
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 652
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.android.internal.view.menu.ActionMenuItemView"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_3

    .line 654
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 649
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 640
    :cond_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    .line 634
    :cond_5
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    .line 662
    :cond_6
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mActionMenuView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 663
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 665
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 666
    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mActionMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method private setRingtone()V
    .locals 5

    .prologue
    const/4 v0, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 582
    iget-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mCallback:Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    if-nez v2, :cond_2

    .line 583
    :cond_0
    const-string v0, "delete(),null==mContext || null==mCallback"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 616
    :cond_1
    :goto_0
    return-void

    .line 586
    :cond_2
    iget-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mCallback:Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    const-string v3, "set_ringtone"

    invoke-interface {v2, v3}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->doUmengCallback(Ljava/lang/String;)V

    .line 587
    iget-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mCallback:Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    invoke-interface {v2}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->getCheckedItemIds()[J

    move-result-object v2

    .line 588
    if-eqz v2, :cond_1

    array-length v3, v2

    if-eqz v3, :cond_1

    .line 592
    iget-object v3, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mCallback:Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    invoke-interface {v3, v2}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->getAudioIdlist([J)[J

    move-result-object v2

    .line 593
    if-eqz v2, :cond_1

    array-length v3, v2

    if-eqz v3, :cond_1

    .line 597
    aget-wide v2, v2, v4

    iput-wide v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mMusicId:J

    .line 598
    iget-wide v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mMusicId:J

    invoke-direct {p0, v2, v3}, Lcn/nubia/music/app/menu/MusicListActionModManager;->getMusicPath(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mMusicPath:Ljava/lang/String;

    .line 599
    iget-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mMusicPath:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 600
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00b0

    invoke-static {v0, v1}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    .line 601
    invoke-virtual {p0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->exitActionMode()V

    goto :goto_0

    .line 605
    :cond_3
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->isDoubleSim()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 606
    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0029

    .line 607
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    iget-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0b002a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 609
    iget-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0b00e0

    .line 610
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->setRingListener:Landroid/content/DialogInterface$OnClickListener;

    .line 609
    invoke-static {v2, v0, v1, v3, v4}, Lcn/nubia/music/utils/MusicUtils;->createDialogForRingtone(Landroid/content/Context;[Ljava/lang/String;ZLjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog;

    .line 615
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->exitActionMode()V

    goto :goto_0

    .line 612
    :cond_4
    iget-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/music/utils/MusicUtils;->getCard2State(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_2
    invoke-direct {p0, v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->setRingtoneForCard(I)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private setRingtoneForCard(I)V
    .locals 4

    .prologue
    .line 290
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mMusicPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/music/utils/DrmUtils;->isDRMFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mMusicPath:Ljava/lang/String;

    .line 291
    invoke-static {v0, v1}, Lcn/nubia/music/utils/DrmUtils;->isHasVerifyRights(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0065

    invoke-static {v0, v1}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mMusicId:J

    invoke-static {v0, v2, v3, p1}, Lcn/nubia/music/utils/MusicUtils;->setCallRingtone(Landroid/content/Context;JI)V

    goto :goto_0
.end method

.method private setSelectedClickEvent(Lcn/nubia/commonui/actionbar/app/AppCompatActivity;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 688
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getActionBarContextView()Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    move-result-object v2

    .line 689
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getSelectZoneView()Landroid/view/View;

    move-result-object v1

    .line 690
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getSelectCheckedTextView()Landroid/widget/CheckedTextView;

    move-result-object v0

    .line 691
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 692
    new-instance v2, Lcn/nubia/music/app/menu/MusicListActionModManager$4;

    invoke-direct {v2, p0, v0}, Lcn/nubia/music/app/menu/MusicListActionModManager$4;-><init>(Lcn/nubia/music/app/menu/MusicListActionModManager;Landroid/widget/CheckedTextView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 699
    :cond_1
    return-void

    :cond_2
    move-object v1, v0

    .line 689
    goto :goto_0
.end method

.method private showActionbarAddFavoriteItem(Landroid/view/Menu;)V
    .locals 3

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 513
    if-eqz p1, :cond_0

    .line 514
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 515
    if-nez v0, :cond_0

    .line 516
    const v0, 0x7f0b0041

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006a

    .line 517
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    .line 518
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 523
    :cond_0
    return-void
.end method

.method private showActionbarAddPlayingItem(Landroid/view/Menu;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 539
    if-eqz p1, :cond_0

    .line 540
    const/16 v0, 0x1a

    const v1, 0x7f0b008a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020061

    .line 541
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    .line 542
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 545
    :cond_0
    return-void
.end method

.method private showActionbarAddPlaylistItem(Landroid/view/Menu;)V
    .locals 4

    .prologue
    const v3, 0x7f0b000c

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 526
    if-eqz p1, :cond_0

    .line 527
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 528
    if-nez v0, :cond_0

    .line 529
    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 530
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020064

    .line 531
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    .line 532
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 536
    :cond_0
    return-void
.end method

.method private showActionbarMultiChooseItem(Landroid/view/Menu;)V
    .locals 6

    .prologue
    const/16 v5, 0xe

    const/16 v4, 0xa

    const/4 v3, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 464
    if-nez p1, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mIsLocalDetail:Z

    if-eqz v0, :cond_0

    .line 469
    const/16 v0, 0x19

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 470
    iget-boolean v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mDelete:Z

    if-nez v0, :cond_2

    .line 471
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 472
    iput-boolean v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mResetActionMenuFlag:Z

    .line 473
    const v0, 0x7f0b00da

    invoke-interface {p1, v1, v5, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020067

    .line 474
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 475
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 480
    :cond_2
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 481
    iput-boolean v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mResetActionMenuFlag:Z

    .line 482
    const v0, 0x7f0b0044

    invoke-interface {p1, v1, v4, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020067

    .line 483
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 484
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method private showActionbarSingleChooseItem(Landroid/view/Menu;)V
    .locals 5

    .prologue
    const/16 v4, 0x19

    const/16 v3, 0xe

    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 494
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mIsLocalDetail:Z

    if-eqz v0, :cond_1

    .line 495
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 496
    invoke-interface {p1, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 501
    :cond_0
    :goto_0
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 502
    if-nez v0, :cond_1

    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mResetActionMenuFlag:Z

    .line 504
    const v0, 0x7f0b007b

    invoke-interface {p1, v1, v4, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006d

    .line 505
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    .line 506
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 510
    :cond_1
    return-void

    .line 497
    :cond_2
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 498
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0
.end method

.method private showMessage(I)V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;II)V

    .line 342
    return-void
.end method


# virtual methods
.method public exitActionMode()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/view/ActionMode;->finish()V

    .line 103
    :cond_0
    return-void
.end method

.method public getActionMode()Lcn/nubia/commonui/actionbar/view/ActionMode;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    return-object v0
.end method

.method public isActionMode()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mActionMode:Z

    return v0
.end method

.method public onPlaylistActionSuccess(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mCallback:Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    invoke-interface {v0, p1}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->createOrRenameSuccess(Landroid/content/Intent;)V

    .line 264
    return-void
.end method

.method public setDelete(Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mDelete:Z

    .line 55
    return-void
.end method

.method public setIsFav(Z)V
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mIsFav:Z

    .line 59
    return-void
.end method

.method public setIsLocalDetail(Z)V
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mIsLocalDetail:Z

    .line 64
    return-void
.end method

.method public showActionbarMorePopup()V
    .locals 3

    .prologue
    .line 381
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 382
    new-instance v0, Lcn/nubia/commonui/widget/NubiaMorePopup;

    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopup;

    .line 384
    iget-boolean v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mIsLocalDetail:Z

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopup;

    const v1, 0x7f090018

    iget-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mMoreListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setItems(ILcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;)V

    .line 388
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setAnchorView(Landroid/view/View;)V

    .line 390
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->show()V

    .line 392
    :cond_1
    return-void
.end method

.method public startActionMode()V
    .locals 2

    .prologue
    .line 679
    new-instance v0, Lcn/nubia/music/app/menu/ActionModeCallback;

    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mActionModeListener:Lcn/nubia/music/app/menu/ActionModeCallback$IActionModeListener;

    invoke-direct {v0, v1}, Lcn/nubia/music/app/menu/ActionModeCallback;-><init>(Lcn/nubia/music/app/menu/ActionModeCallback$IActionModeListener;)V

    iput-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mActionModeCallback:Lcn/nubia/music/app/menu/ActionModeCallback;

    .line 680
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    check-cast v0, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;

    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mActionModeCallback:Lcn/nubia/music/app/menu/ActionModeCallback;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->startSupportActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)Lcn/nubia/commonui/actionbar/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    .line 682
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mContext:Landroid/content/Context;

    check-cast v0, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;

    invoke-direct {p0, v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->setSelectedClickEvent(Lcn/nubia/commonui/actionbar/app/AppCompatActivity;)V

    .line 683
    invoke-virtual {p0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->updateSelectedNum()V

    .line 685
    :cond_0
    return-void
.end method

.method public updateSelectedNum()V
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager;->mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-direct {p0, v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->processItemStateChanged(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 672
    return-void
.end method
