.class public abstract Lcn/nubia/music/fragment/BaseLetterListFragment;
.super Lcn/nubia/music/fragment/LazyLoadFragment;
.source "BaseLetterListFragment.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;
.implements Lcn/nubia/music/app/menu/MusicMenu;
.implements Lcn/nubia/music/dialog/PlaylistActionBaseDialog$DialogActionCallback;
.implements Lcn/nubia/music/fragment/presenter/BaseLetterListContract$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/fragment/BaseLetterListFragment$a;,
        Lcn/nubia/music/fragment/BaseLetterListFragment$c;,
        Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;,
        Lcn/nubia/music/fragment/BaseLetterListFragment$b;,
        Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;,
        Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;
    }
.end annotation


# static fields
.field private static final FORCE_VISIBLE_MINIBAR:I = 0x7

.field public static final SORT_BY_LETTER:Ljava/lang/String; = "sort_by_letter"

.field public static final SORT_BY_TIME:Ljava/lang/String; = "sort_by_time"

.field public static final SORT_TYPE:Ljava/lang/String; = "sort_type"


# instance fields
.field private DIMEN_180:I

.field private DIMEN_36:I

.field private hasInitView:Z

.field private mActionMenuView:Landroid/view/ViewGroup;

.field private mActionModeCallback:Lcn/nubia/music/app/menu/ActionModeCallback;

.field private mActionModeListener:Lcn/nubia/music/app/menu/ActionModeCallback$IActionModeListener;

.field protected mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

.field private mCharacterView:Landroid/view/View;

.field private mChooseFormat:Ljava/lang/String;

.field private mContentListener:Lcn/nubia/music/fragment/BaseLetterListFragment$c;

.field protected mContext:Landroid/content/Context;

.field private final mEmptyListener:Lcn/nubia/music/ui/EmptyViewLayout$RefreshClickListener;

.field protected mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

.field public mFragmentType:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

.field private mHandler:Lcn/nubia/music/fragment/BaseLetterListFragment$b;

.field private mIsActionMode:Z

.field private mIsHasPlaybarForceGoneListener:Z

.field private mLetterlist:Lcn/nubia/commonui/widget/NubiaCharacterListView;

.field private mListView:Lcn/nubia/music/ui/ScrollRefreshListView;

.field protected mMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

.field private mMusicPath:Ljava/lang/String;

.field private mMusicTitle:Landroid/view/View;

.field protected mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopup;

.field private mPresenter:Lcn/nubia/music/fragment/presenter/BaseLetterListContract$Presenter;

.field protected mResetActionMenuFlag:Z

.field private mRingtongDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mScanManager:Lcn/nubia/music/app/scan/MusicScanManager;

.field protected mSelectText:Landroid/widget/TextView;

.field private mShufflePlayLayout:Landroid/widget/LinearLayout;

.field private mSortOptionLayout:Landroid/widget/LinearLayout;

.field private mSortType:Ljava/lang/String;

.field private mSortedOptionText:Landroid/widget/TextView;

.field protected mSortedType:Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;

.field private musicId:J

.field private setRingListener:Landroid/content/DialogInterface$OnClickListener;

.field private shuffPlayListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Lcn/nubia/music/fragment/LazyLoadFragment;-><init>()V

    .line 74
    sget-object v0, Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;->SORTED_LETTER:Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mSortedType:Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

    .line 84
    iput-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    .line 87
    iput-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->shuffPlayListener:Landroid/view/View$OnClickListener;

    .line 89
    iput-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mMusicPath:Ljava/lang/String;

    .line 90
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->musicId:J

    .line 91
    iput-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mScanManager:Lcn/nubia/music/app/scan/MusicScanManager;

    .line 93
    iput-boolean v3, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mIsHasPlaybarForceGoneListener:Z

    .line 94
    iput-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mActionMenuView:Landroid/view/ViewGroup;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mResetActionMenuFlag:Z

    .line 102
    iput-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mRingtongDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 107
    iput-boolean v3, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->hasInitView:Z

    .line 134
    new-instance v0, Lcn/nubia/music/fragment/BaseLetterListFragment$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/fragment/BaseLetterListFragment$1;-><init>(Lcn/nubia/music/fragment/BaseLetterListFragment;)V

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 243
    new-instance v0, Lcn/nubia/music/fragment/BaseLetterListFragment$2;

    invoke-direct {v0, p0}, Lcn/nubia/music/fragment/BaseLetterListFragment$2;-><init>(Lcn/nubia/music/fragment/BaseLetterListFragment;)V

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mActionModeListener:Lcn/nubia/music/app/menu/ActionModeCallback$IActionModeListener;

    .line 374
    new-instance v0, Lcn/nubia/music/fragment/BaseLetterListFragment$3;

    invoke-direct {v0, p0}, Lcn/nubia/music/fragment/BaseLetterListFragment$3;-><init>(Lcn/nubia/music/fragment/BaseLetterListFragment;)V

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->setRingListener:Landroid/content/DialogInterface$OnClickListener;

    .line 780
    new-instance v0, Lcn/nubia/music/fragment/BaseLetterListFragment$6;

    invoke-direct {v0, p0}, Lcn/nubia/music/fragment/BaseLetterListFragment$6;-><init>(Lcn/nubia/music/fragment/BaseLetterListFragment;)V

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mEmptyListener:Lcn/nubia/music/ui/EmptyViewLayout$RefreshClickListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/fragment/BaseLetterListFragment;)Lcn/nubia/music/ui/ScrollRefreshListView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mListView:Lcn/nubia/music/ui/ScrollRefreshListView;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/music/fragment/BaseLetterListFragment;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->showMinibar()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/music/fragment/BaseLetterListFragment;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->switchSortType()V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/music/fragment/BaseLetterListFragment;)Z
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->hasSelectAll()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcn/nubia/music/fragment/BaseLetterListFragment;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->selectNone()V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/music/fragment/BaseLetterListFragment;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->selectAll()V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/music/fragment/BaseLetterListFragment;)Lcn/nubia/music/app/scan/MusicScanManager;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mScanManager:Lcn/nubia/music/app/scan/MusicScanManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcn/nubia/music/fragment/BaseLetterListFragment;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->DIMEN_180:I

    return v0
.end method

.method static synthetic access$1700(Lcn/nubia/music/fragment/BaseLetterListFragment;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->DIMEN_36:I

    return v0
.end method

.method static synthetic access$1800(Lcn/nubia/music/fragment/BaseLetterListFragment;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->hasInitView:Z

    return v0
.end method

.method static synthetic access$1900(Lcn/nubia/music/fragment/BaseLetterListFragment;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->loadData()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/music/fragment/BaseLetterListFragment;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mIsHasPlaybarForceGoneListener:Z

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/music/fragment/BaseLetterListFragment;)Lcn/nubia/music/fragment/BaseLetterListFragment$b;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mHandler:Lcn/nubia/music/fragment/BaseLetterListFragment$b;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/music/fragment/BaseLetterListFragment;Z)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcn/nubia/music/fragment/BaseLetterListFragment;->setActionModeState(Z)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/music/fragment/BaseLetterListFragment;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->setActionbarMenuLayout()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/music/fragment/BaseLetterListFragment;)[J
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getSongListIds()[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/music/fragment/BaseLetterListFragment;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->delete()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/music/fragment/BaseLetterListFragment;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->setRingtone()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/music/fragment/BaseLetterListFragment;I)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcn/nubia/music/fragment/BaseLetterListFragment;->setRingtoneForCard(I)V

    return-void
.end method

.method private checkSDCard()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 894
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 901
    :cond_0
    :goto_0
    return v0

    .line 897
    :cond_1
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getSecondaryStorageMgr()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 898
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getSecondaryStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 901
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private delSelectItem(Lcn/nubia/music/online/model/MediaModel;Landroid/widget/CheckBox;)V
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMdeiaModeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 624
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 625
    return-void
.end method

.method private delete()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 1297
    invoke-virtual {p0, v6}, Lcn/nubia/music/fragment/BaseLetterListFragment;->doUmeng(I)V

    .line 1298
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getSongListIds()[J

    move-result-object v0

    .line 1299
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 1312
    :cond_0
    :goto_0
    return-void

    .line 1302
    :cond_1
    const-string v1, "deleteTest"

    const-string v2, "execute   delete---------"

    invoke-static {v1, v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1304
    const v2, 0x7f0b0047

    invoke-virtual {p0, v2}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1305
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1306
    const-string v3, "description"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    const-string v2, "items"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1308
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1309
    iget-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcn/nubia/music/activity/DeleteItemsActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1310
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1311
    invoke-virtual {p0, v0, v6}, Lcn/nubia/music/fragment/BaseLetterListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private disableActionbarMenu(Landroid/view/Menu;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 229
    if-nez p1, :cond_1

    .line 238
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 232
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 233
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 234
    invoke-interface {v2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 235
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 232
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private enableActionbarMenu(Landroid/view/Menu;)V
    .locals 3

    .prologue
    .line 217
    if-nez p1, :cond_1

    .line 226
    :cond_0
    return-void

    .line 220
    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 221
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 222
    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 223
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 220
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getAllSelectedSongIds()[J
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->getCheckedItemIds()[J

    move-result-object v0

    .line 408
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 409
    :cond_0
    const/4 v0, 0x0

    .line 411
    :cond_1
    return-object v0
.end method

.method private getMusicPath(J)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 384
    .line 385
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

    .line 388
    if-eqz v1, :cond_0

    .line 389
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 390
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 393
    :cond_0
    return-object v0
.end method

.method private getSongListIds()[J
    .locals 4

    .prologue
    .line 194
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getAllSelectedSongIds()[J

    move-result-object v0

    .line 195
    const/4 v1, 0x0

    .line 196
    sget-object v2, Lcn/nubia/music/fragment/BaseLetterListFragment$7;->a:[I

    iget-object v3, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mFragmentType:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    invoke-virtual {v3}, Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move-object v0, v1

    .line 207
    :goto_0
    :pswitch_0
    return-object v0

    .line 198
    :pswitch_1
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/nubia/music/utils/MusicUtils;->getSongListForAlbums(Landroid/content/Context;[J)[J

    move-result-object v0

    goto :goto_0

    .line 201
    :pswitch_2
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/nubia/music/utils/MusicUtils;->getSongListForArtists(Landroid/content/Context;[J)[J

    move-result-object v0

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private getUmengDeleteValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1347
    sget-object v0, Lcn/nubia/music/fragment/BaseLetterListFragment$7;->a:[I

    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mFragmentType:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    invoke-virtual {v1}, Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1355
    const-string v0, "delete_music"

    :goto_0
    return-object v0

    .line 1349
    :pswitch_0
    const-string v0, "delete_music"

    goto :goto_0

    .line 1351
    :pswitch_1
    const-string v0, "delete_artist"

    goto :goto_0

    .line 1353
    :pswitch_2
    const-string v0, "delete_album"

    goto :goto_0

    .line 1347
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private gridItemCheckedStateChanged(Lcn/nubia/commonui/actionbar/view/ActionMode;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 415
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mSelectText:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mChooseFormat:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    invoke-virtual {v4}, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->getCheckedItemCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 417
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->disableActionbarMenu(Landroid/view/Menu;)V

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getSongListIds()[J

    move-result-object v0

    .line 421
    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    .line 425
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/music/fragment/BaseLetterListFragment;->enableActionbarMenu(Landroid/view/Menu;)V

    .line 426
    array-length v1, v0

    if-le v1, v5, :cond_2

    .line 427
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/music/fragment/BaseLetterListFragment;->showActionbarMultiChooseItem(Landroid/view/Menu;)V

    .line 431
    :goto_1
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->setActionbarMenuLayout()V

    .line 433
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 434
    if-eqz v1, :cond_0

    .line 435
    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->isListInFavoList([J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 436
    const v0, 0x7f02006a

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 437
    const v0, 0x7f0b0041

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 429
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/music/fragment/BaseLetterListFragment;->showActionbarSingleChooseItem(Landroid/view/Menu;)V

    goto :goto_1

    .line 439
    :cond_3
    const v0, 0x7f020073

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 440
    const v0, 0x7f0b000d

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private hasSelectAll()Z
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMdeiaModeSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v1, v1, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMediaModelList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initView(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 527
    const v0, 0x7f100077

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 528
    if-nez v0, :cond_0

    .line 590
    :goto_0
    return-void

    .line 533
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 535
    const v0, 0x7f10006e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mShufflePlayLayout:Landroid/widget/LinearLayout;

    .line 536
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->shuffPlayListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mShufflePlayLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->shuffPlayListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    :cond_1
    const v0, 0x7f10006f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 541
    const v0, 0x7f100070

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mSortOptionLayout:Landroid/widget/LinearLayout;

    .line 542
    const-string v0, "sort_type"

    const-string v1, "sort_by_letter"

    invoke-static {v3, v0, v1}, Lcn/nubia/music/utils/SharedPrefersHelper;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mSortType:Ljava/lang/String;

    .line 543
    const v0, 0x7f100071

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mSortedOptionText:Landroid/widget/TextView;

    .line 545
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mSortType:Ljava/lang/String;

    const-string v1, "sort_by_letter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 547
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mSortedOptionText:Landroid/widget/TextView;

    const v1, 0x7f0b0127

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    :goto_1
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mSortedOptionText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 555
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mSortOptionLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/nubia/music/fragment/BaseLetterListFragment$4;

    invoke-direct {v1, p0}, Lcn/nubia/music/fragment/BaseLetterListFragment$4;-><init>(Lcn/nubia/music/fragment/BaseLetterListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    const v0, 0x7f10006d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mMusicTitle:Landroid/view/View;

    .line 564
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mMusicTitle:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 566
    const v0, 0x7f0b006e

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mChooseFormat:Ljava/lang/String;

    .line 567
    const v0, 0x7f100074

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mCharacterView:Landroid/view/View;

    .line 568
    const v0, 0x7f100075

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/widget/NubiaCharacterListView;

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mLetterlist:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    .line 569
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mLetterlist:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0026

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setCustomAlphabetColor(I)V

    .line 570
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mLetterlist:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setOnTouchingLetterChangedListener(Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;)V

    .line 572
    const v0, 0x7f100073

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/ui/ScrollRefreshListView;

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mListView:Lcn/nubia/music/ui/ScrollRefreshListView;

    .line 573
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mListView:Lcn/nubia/music/ui/ScrollRefreshListView;

    invoke-virtual {v0, v3}, Lcn/nubia/music/ui/ScrollRefreshListView;->setFastScrollEnabled(Z)V

    .line 574
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mListView:Lcn/nubia/music/ui/ScrollRefreshListView;

    invoke-virtual {v0, v3}, Lcn/nubia/music/ui/ScrollRefreshListView;->setFastScrollAlwaysVisible(Z)V

    .line 575
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mListView:Lcn/nubia/music/ui/ScrollRefreshListView;

    invoke-virtual {v0, v3}, Lcn/nubia/music/ui/ScrollRefreshListView;->setVerticalScrollBarEnabled(Z)V

    .line 577
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->hasLongPressOption()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 578
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mListView:Lcn/nubia/music/ui/ScrollRefreshListView;

    invoke-virtual {v0, p0}, Lcn/nubia/music/ui/ScrollRefreshListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 580
    :cond_2
    new-instance v0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;-><init>(Lcn/nubia/music/fragment/BaseLetterListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    .line 581
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mListView:Lcn/nubia/music/ui/ScrollRefreshListView;

    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/ScrollRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 582
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mListView:Lcn/nubia/music/ui/ScrollRefreshListView;

    invoke-virtual {v0, p0}, Lcn/nubia/music/ui/ScrollRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 583
    const v0, 0x7f100076

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/ui/EmptyViewLayout;

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

    .line 584
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

    const v1, 0x7f0200c7

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/EmptyViewLayout;->setEmptyImage(Landroid/graphics/drawable/Drawable;)V

    .line 585
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mEmptyListener:Lcn/nubia/music/ui/EmptyViewLayout$RefreshClickListener;

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/EmptyViewLayout;->setRefreshListener(Lcn/nubia/music/ui/EmptyViewLayout$RefreshClickListener;)V

    .line 586
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mListView:Lcn/nubia/music/ui/ScrollRefreshListView;

    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/ScrollRefreshListView;->setEmptyView(Landroid/view/View;)V

    .line 587
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mListView:Lcn/nubia/music/ui/ScrollRefreshListView;

    invoke-virtual {v0, p0}, Lcn/nubia/music/ui/ScrollRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 589
    iput-boolean v4, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->hasInitView:Z

    goto/16 :goto_0

    .line 549
    :cond_3
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mSortedOptionText:Landroid/widget/TextView;

    const v1, 0x7f0b0126

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method private loadData()V
    .locals 2

    .prologue
    .line 913
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->clearData()V

    .line 914
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mPresenter:Lcn/nubia/music/fragment/presenter/BaseLetterListContract$Presenter;

    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getSortOrder()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/nubia/music/fragment/presenter/BaseLetterListContract$Presenter;->loadLocalData(Ljava/lang/String;)V

    .line 915
    return-void
.end method

.method private selectAll()V
    .locals 3

    .prologue
    .line 648
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMdeiaModeSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 649
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMediaModelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 650
    iget-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v2, v2, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMdeiaModeSet:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 652
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->notifyDataSetChanged()V

    .line 653
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-direct {p0, v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->updateSelectedNum(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 654
    return-void
.end method

.method private selectItem(Lcn/nubia/music/online/model/MediaModel;Landroid/widget/CheckBox;)V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMdeiaModeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 629
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 630
    return-void
.end method

.method private selectNone()V
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMdeiaModeSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 658
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->notifyDataSetChanged()V

    .line 659
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-direct {p0, v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->updateSelectedNum(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 660
    return-void
.end method

.method private selectOrNot(Lcn/nubia/music/online/model/MediaModel;Landroid/widget/CheckBox;)V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMdeiaModeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/fragment/BaseLetterListFragment;->delSelectItem(Lcn/nubia/music/online/model/MediaModel;Landroid/widget/CheckBox;)V

    .line 639
    :goto_0
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->hasSelectAll()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->setAllSelectedIcon(Z)V

    .line 640
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-direct {p0, v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->updateSelectedNum(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 641
    return-void

    .line 636
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/fragment/BaseLetterListFragment;->selectItem(Lcn/nubia/music/online/model/MediaModel;Landroid/widget/CheckBox;)V

    goto :goto_0
.end method

.method private setActionModeState(Z)V
    .locals 1

    .prologue
    .line 663
    iput-boolean p1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mIsActionMode:Z

    .line 664
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    invoke-virtual {v0, p1}, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->setActionModeState(Z)V

    .line 665
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->notifyDataSetChanged()V

    .line 666
    return-void
.end method

.method private setActionbarMenuLayout()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v3, 0x0

    .line 1238
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mActionMenuView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mResetActionMenuFlag:Z

    if-eqz v0, :cond_4

    .line 1239
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1240
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1241
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1246
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v5, v3

    .line 1248
    :goto_0
    if-ge v5, v6, :cond_4

    .line 1249
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1250
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1251
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.android.internal.widget.ActionBarContainer"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 1252
    check-cast v1, Landroid/view/ViewGroup;

    .line 1253
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    move v4, v3

    .line 1254
    :goto_1
    if-ge v4, v7, :cond_3

    .line 1255
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1256
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 1257
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.widget.ActionMenuView"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_2

    .line 1258
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    .line 1259
    iput-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mActionMenuView:Landroid/view/ViewGroup;

    .line 1260
    iput-boolean v3, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mResetActionMenuFlag:Z

    .line 1262
    iget-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mActionMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    move v2, v3

    .line 1263
    :goto_2
    if-ge v2, v8, :cond_2

    .line 1264
    iget-object v9, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mActionMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1265
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 1266
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.android.internal.view.menu.ActionMenuItemView"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_1

    .line 1268
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1263
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1254
    :cond_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 1248
    :cond_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    .line 1276
    :cond_4
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mActionMenuView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 1277
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1279
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1280
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mActionMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1283
    :cond_5
    return-void
.end method

.method private setAllSelectedIcon(Z)V
    .locals 2

    .prologue
    .line 688
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 689
    instance-of v1, v0, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;

    if-eqz v1, :cond_0

    .line 690
    check-cast v0, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getActionBarContextView()Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    move-result-object v0

    .line 691
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getSelectCheckedTextView()Landroid/widget/CheckedTextView;

    move-result-object v0

    .line 692
    :goto_0
    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 696
    :cond_0
    return-void

    .line 691
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setRingtone()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 1315
    invoke-virtual {p0, v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->doUmeng(I)V

    .line 1316
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getSongListIds()[J

    move-result-object v2

    .line 1317
    if-eqz v2, :cond_0

    array-length v3, v2

    if-nez v3, :cond_1

    .line 1340
    :cond_0
    :goto_0
    return-void

    .line 1320
    :cond_1
    aget-wide v2, v2, v4

    iput-wide v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->musicId:J

    .line 1321
    iget-wide v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->musicId:J

    invoke-direct {p0, v2, v3}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getMusicPath(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mMusicPath:Ljava/lang/String;

    .line 1322
    iget-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mMusicPath:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 1323
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00b0

    invoke-static {v0, v1}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    .line 1324
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->exitActionMode()V

    goto :goto_0

    .line 1327
    :cond_2
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->isDoubleSim()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1328
    new-array v0, v0, [Ljava/lang/String;

    const v2, 0x7f0b0029

    .line 1329
    invoke-virtual {p0, v2}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    const v2, 0x7f0b002a

    invoke-virtual {p0, v2}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1331
    iget-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00e0

    .line 1332
    invoke-virtual {p0, v3}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->setRingListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1331
    invoke-static {v2, v0, v1, v3, v4}, Lcn/nubia/music/utils/MusicUtils;->createDialogForRingtone(Landroid/content/Context;[Ljava/lang/String;ZLjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mRingtongDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 1337
    :goto_1
    iget-boolean v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mIsActionMode:Z

    if-eqz v0, :cond_0

    .line 1338
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->exitActionMode()V

    goto :goto_0

    .line 1334
    :cond_3
    iget-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/music/utils/MusicUtils;->getCard2State(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_2
    invoke-direct {p0, v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->setRingtoneForCard(I)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private setRingtoneForCard(I)V
    .locals 4

    .prologue
    .line 398
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mMusicPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/music/utils/DrmUtils;->isDRMFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mMusicPath:Ljava/lang/String;

    .line 399
    invoke-static {v0, v1}, Lcn/nubia/music/utils/DrmUtils;->isHasVerifyRights(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0065

    invoke-static {v0, v1}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->musicId:J

    invoke-static {v0, v2, v3, p1}, Lcn/nubia/music/utils/MusicUtils;->setCallRingtone(Landroid/content/Context;JI)V

    goto :goto_0
.end method

.method private setSelectedClickEvent(Lcn/nubia/commonui/actionbar/app/AppCompatActivity;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 699
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getActionBarContextView()Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    move-result-object v2

    .line 700
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getSelectZoneView()Landroid/view/View;

    move-result-object v1

    .line 701
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getSelectCheckedTextView()Landroid/widget/CheckedTextView;

    move-result-object v0

    .line 702
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 703
    new-instance v2, Lcn/nubia/music/fragment/BaseLetterListFragment$5;

    invoke-direct {v2, p0, v0}, Lcn/nubia/music/fragment/BaseLetterListFragment$5;-><init>(Lcn/nubia/music/fragment/BaseLetterListFragment;Landroid/widget/CheckedTextView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    :cond_1
    return-void

    :cond_2
    move-object v1, v0

    .line 700
    goto :goto_0
.end method

.method private setSortedType(Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mSortedType:Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

    invoke-virtual {v0, p1}, Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    iput-object p1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mSortedType:Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

    .line 147
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->loadData()V

    goto :goto_0
.end method

.method private showEmptyData()V
    .locals 1

    .prologue
    .line 1199
    const-string v0, "showEmptyData "

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1200
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/EmptyViewLayout;->showEmpty()V

    .line 1203
    :cond_0
    return-void
.end method

.method private showLoadingData()V
    .locals 1

    .prologue
    .line 1192
    const-string v0, "showLoadingData "

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1193
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/EmptyViewLayout;->showLoading()V

    .line 1196
    :cond_0
    return-void
.end method

.method private showMinibar()V
    .locals 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mIsHasPlaybarForceGoneListener:Z

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 183
    const-string v0, "base letter onDestroyActionMode run 2"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    const-string v0, "base letter onDestroyActionMode run"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcn/nubia/music/app/listener/IPlaybarForceGoneListener;

    .line 188
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcn/nubia/music/app/listener/IPlaybarForceGoneListener;->setEnable(Z)V

    .line 189
    invoke-interface {v0}, Lcn/nubia/music/app/listener/IPlaybarForceGoneListener;->onForceVisible()V

    goto :goto_0
.end method

.method private startActionMode()V
    .locals 2

    .prologue
    .line 673
    new-instance v0, Lcn/nubia/music/app/menu/ActionModeCallback;

    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mActionModeListener:Lcn/nubia/music/app/menu/ActionModeCallback$IActionModeListener;

    invoke-direct {v0, v1}, Lcn/nubia/music/app/menu/ActionModeCallback;-><init>(Lcn/nubia/music/app/menu/ActionModeCallback$IActionModeListener;)V

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mActionModeCallback:Lcn/nubia/music/app/menu/ActionModeCallback;

    .line 677
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 679
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;

    .line 680
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mActionModeCallback:Lcn/nubia/music/app/menu/ActionModeCallback;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->startSupportActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)Lcn/nubia/commonui/actionbar/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    .line 681
    invoke-direct {p0, v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->setSelectedClickEvent(Lcn/nubia/commonui/actionbar/app/AppCompatActivity;)V

    .line 683
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-direct {p0, v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->updateSelectedNum(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 685
    :cond_0
    return-void
.end method

.method private switchSortType()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 593
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mSortType:Ljava/lang/String;

    const-string v1, "sort_by_time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    const-string v0, "sort_by_letter"

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mSortType:Ljava/lang/String;

    .line 596
    sget-object v0, Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;->SORTED_LETTER:Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

    invoke-direct {p0, v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->setSortedType(Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;)V

    .line 597
    const-string v0, "sort_type"

    const-string v1, "sort_by_letter"

    invoke-static {v2, v0, v1}, Lcn/nubia/music/utils/SharedPrefersHelper;->putString(ILjava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mSortedOptionText:Landroid/widget/TextView;

    const v1, 0x7f0b0127

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    :goto_0
    return-void

    .line 602
    :cond_0
    const-string v0, "sort_by_time"

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mSortType:Ljava/lang/String;

    .line 603
    sget-object v0, Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;->SORTED_TIME:Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

    invoke-direct {p0, v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->setSortedType(Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;)V

    .line 604
    const-string v0, "sort_type"

    const-string v1, "sort_by_time"

    invoke-static {v2, v0, v1}, Lcn/nubia/music/utils/SharedPrefersHelper;->putString(ILjava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mSortedOptionText:Landroid/widget/TextView;

    const v1, 0x7f0b0126

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    .locals 3

    .prologue
    .line 747
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    :goto_0
    return-void

    .line 748
    :catch_0
    move-exception v0

    .line 749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateSelectedNum(Lcn/nubia/commonui/actionbar/view/ActionMode;)V
    .locals 0

    .prologue
    .line 669
    invoke-direct {p0, p1}, Lcn/nubia/music/fragment/BaseLetterListFragment;->gridItemCheckedStateChanged(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 670
    return-void
.end method


# virtual methods
.method protected clearData()V
    .locals 1

    .prologue
    .line 792
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->showLoadingData()V

    .line 793
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMediaModelList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMediaModelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 796
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->notifyDataSetChanged()V

    .line 797
    return-void
.end method

.method protected doMorePopup(I)V
    .locals 0

    .prologue
    .line 1286
    sparse-switch p1, :sswitch_data_0

    .line 1294
    :goto_0
    return-void

    .line 1288
    :sswitch_0
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->delete()V

    goto :goto_0

    .line 1291
    :sswitch_1
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->setRingtone()V

    goto :goto_0

    .line 1286
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method protected doUmeng(I)V
    .locals 3

    .prologue
    .line 1360
    sparse-switch p1, :sswitch_data_0

    .line 1381
    :goto_0
    return-void

    .line 1362
    :sswitch_0
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getUmengDeleteValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/music/fragment/BaseLetterListFragment;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1365
    :sswitch_1
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fav_music"

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/music/fragment/BaseLetterListFragment;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1369
    :sswitch_2
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "add_to_playlist"

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/music/fragment/BaseLetterListFragment;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1373
    :sswitch_3
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "add_to_playing"

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/music/fragment/BaseLetterListFragment;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1377
    :sswitch_4
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "set_ringtone"

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/music/fragment/BaseLetterListFragment;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1360
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_4
        0xa -> :sswitch_0
        0x10 -> :sswitch_1
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method protected doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1386
    sget-boolean v0, Lcn/nubia/music/third/StatisticsEvent;->UMENG_OPEN:Z

    if-eqz v0, :cond_0

    .line 1387
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1388
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcn/nubia/music/third/StatisticsEvent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1391
    :cond_0
    return-void
.end method

.method public exitActionMode()V
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mIsActionMode:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMdeiaModeSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->setActionModeState(Z)V

    .line 127
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/view/ActionMode;->finish()V

    .line 131
    :cond_0
    return-void
.end method

.method protected abstract getFragmentType()Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;
.end method

.method protected getSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    const-string v0, ""

    return-object v0
.end method

.method protected abstract getUmengEventId()Ljava/lang/String;
.end method

.method protected abstract getUmengEventKey()Ljava/lang/String;
.end method

.method protected hasLongPressOption()Z
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x1

    return v0
.end method

.method protected initStorageState()V
    .locals 1

    .prologue
    .line 906
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->checkSDCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 907
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->displayDatabaseError(Landroid/app/Activity;)V

    .line 909
    :cond_0
    return-void
.end method

.method protected isActionMode()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mIsActionMode:Z

    return v0
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 1395
    invoke-super {p0}, Lcn/nubia/music/fragment/LazyLoadFragment;->isActive()Z

    move-result v0

    return v0
.end method

.method protected loadDataVisibleFirst(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1170
    invoke-direct {p0, p1}, Lcn/nubia/music/fragment/BaseLetterListFragment;->initView(Landroid/view/View;)V

    .line 1171
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setVolumeControlStream(I)V

    .line 1172
    new-instance v0, Lcn/nubia/music/app/scan/MusicScanManager;

    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/music/app/scan/MusicScanManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mScanManager:Lcn/nubia/music/app/scan/MusicScanManager;

    .line 1173
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1174
    const-string v1, "cn.nubia.music.preset.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1175
    const-string v1, "cn.nubia.music.preset.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1176
    const-string v1, "cn.nubia.music.preset.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1177
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mTrackListListener:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1179
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mCharacterView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1180
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->loadData()V

    .line 1181
    return-void
.end method

.method protected noData()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1228
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->notifyDataSetChanged()V

    .line 1229
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->setContentViewVisibility(Z)V

    .line 1230
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mCharacterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1231
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mMusicTitle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1232
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->showEmptyData()V

    .line 1233
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mListView:Lcn/nubia/music/ui/ScrollRefreshListView;

    invoke-virtual {v0}, Lcn/nubia/music/ui/ScrollRefreshListView;->onRefreshComplete()V

    .line 1234
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 448
    sparse-switch p1, :sswitch_data_0

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 450
    :sswitch_0
    if-ne p2, v0, :cond_0

    .line 451
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 452
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    invoke-virtual {v1}, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->getCheckedItemCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 453
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getSongListIds()[J

    move-result-object v1

    .line 454
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcn/nubia/music/utils/MusicUtils;->addToPlaylist([JJ)V

    .line 455
    iget-boolean v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mIsActionMode:Z

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->exitActionMode()V

    goto :goto_0

    .line 462
    :sswitch_1
    if-ne p2, v0, :cond_0

    .line 463
    iget-boolean v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mIsActionMode:Z

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->exitActionMode()V

    goto :goto_0

    .line 448
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 475
    invoke-super {p0, p1}, Lcn/nubia/music/fragment/LazyLoadFragment;->onAttach(Landroid/app/Activity;)V

    .line 476
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    .line 477
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 478
    const-class v1, Lcn/nubia/music/app/listener/IPlaybarForceGoneListener;

    .line 479
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mIsHasPlaybarForceGoneListener:Z

    .line 482
    :cond_0
    return-void
.end method

.method protected onComplete()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1207
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->setContentViewVisibility(Z)V

    .line 1208
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mFragmentType:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    sget-object v1, Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;->TYPE_MUSIC:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    if-ne v0, v1, :cond_1

    .line 1209
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mMusicTitle:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1213
    :goto_0
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mSortedType:Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

    sget-object v1, Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;->SORTED_LETTER:Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

    invoke-virtual {v0, v1}, Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mFragmentType:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    sget-object v1, Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;->TYPE_ALBUM:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    if-eq v0, v1, :cond_2

    .line 1214
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mListView:Lcn/nubia/music/ui/ScrollRefreshListView;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcn/nubia/music/ui/ScrollRefreshListView;->setPadding(IIII)V

    .line 1215
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mCharacterView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1220
    :goto_1
    iget-boolean v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mIsActionMode:Z

    if-eqz v0, :cond_0

    .line 1221
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->exitActionMode()V

    .line 1223
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->notifyDataSetChanged()V

    .line 1224
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mListView:Lcn/nubia/music/ui/ScrollRefreshListView;

    invoke-virtual {v0}, Lcn/nubia/music/ui/ScrollRefreshListView;->onRefreshComplete()V

    .line 1225
    return-void

    .line 1211
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mMusicTitle:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1217
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mListView:Lcn/nubia/music/ui/ScrollRefreshListView;

    const/16 v1, 0x30

    invoke-virtual {v0, v2, v2, v1, v2}, Lcn/nubia/music/ui/ScrollRefreshListView;->setPadding(IIII)V

    .line 1218
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mCharacterView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 486
    invoke-super {p0, p1}, Lcn/nubia/music/fragment/LazyLoadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 487
    const-string v0, ""

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    .line 489
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getFragmentType()Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mFragmentType:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    .line 490
    new-instance v0, Lcn/nubia/music/fragment/BaseLetterListFragment$b;

    invoke-direct {v0, p0}, Lcn/nubia/music/fragment/BaseLetterListFragment$b;-><init>(Lcn/nubia/music/fragment/BaseLetterListFragment;)V

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mHandler:Lcn/nubia/music/fragment/BaseLetterListFragment$b;

    .line 491
    const v0, 0x7f0d00e2

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->DIMEN_180:I

    .line 492
    const v0, 0x7f0d00ee

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->DIMEN_36:I

    .line 493
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 755
    invoke-super {p0}, Lcn/nubia/music/fragment/LazyLoadFragment;->onDestroy()V

    .line 756
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mPresenter:Lcn/nubia/music/fragment/presenter/BaseLetterListContract$Presenter;

    invoke-interface {v0}, Lcn/nubia/music/fragment/presenter/BaseLetterListContract$Presenter;->stop()V

    .line 757
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContentListener:Lcn/nubia/music/fragment/BaseLetterListFragment$c;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContentListener:Lcn/nubia/music/fragment/BaseLetterListFragment$c;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 760
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mHandler:Lcn/nubia/music/fragment/BaseLetterListFragment$b;

    if-eqz v0, :cond_1

    .line 761
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mHandler:Lcn/nubia/music/fragment/BaseLetterListFragment$b;

    invoke-virtual {v0, v2}, Lcn/nubia/music/fragment/BaseLetterListFragment$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 762
    iput-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mHandler:Lcn/nubia/music/fragment/BaseLetterListFragment$b;

    .line 766
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    :goto_0
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mScanManager:Lcn/nubia/music/app/scan/MusicScanManager;

    if-eqz v0, :cond_2

    .line 771
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mScanManager:Lcn/nubia/music/app/scan/MusicScanManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/scan/MusicScanManager;->clearMusicScan()V

    .line 772
    iput-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mScanManager:Lcn/nubia/music/app/scan/MusicScanManager;

    .line 775
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mRingtongDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 776
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mRingtongDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 778
    :cond_3
    return-void

    .line 767
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 722
    iget-boolean v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mIsActionMode:Z

    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 724
    const v1, 0x7f10005f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 725
    invoke-direct {p0, v0, v1}, Lcn/nubia/music/fragment/BaseLetterListFragment;->selectOrNot(Lcn/nubia/music/online/model/MediaModel;Landroid/widget/CheckBox;)V

    .line 729
    :goto_0
    return-void

    .line 728
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcn/nubia/music/fragment/BaseLetterListFragment;->onListItemClick(Landroid/view/View;I)V

    goto :goto_0
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

    .line 733
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 734
    const v1, 0x7f10005f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 735
    iget-boolean v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mIsActionMode:Z

    if-eqz v2, :cond_0

    .line 736
    invoke-direct {p0, v0, v1}, Lcn/nubia/music/fragment/BaseLetterListFragment;->selectOrNot(Lcn/nubia/music/online/model/MediaModel;Landroid/widget/CheckBox;)V

    .line 742
    :goto_0
    return v3

    .line 738
    :cond_0
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v1, v1, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMdeiaModeSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 739
    invoke-direct {p0, v3}, Lcn/nubia/music/fragment/BaseLetterListFragment;->setActionModeState(Z)V

    .line 740
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->startActionMode()V

    goto :goto_0
.end method

.method protected abstract onListItemClick(Landroid/view/View;I)V
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 618
    invoke-super {p0}, Lcn/nubia/music/fragment/LazyLoadFragment;->onPause()V

    .line 619
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/third/StatisticsEvent;->onPageEnd(Ljava/lang/String;)V

    .line 620
    return-void
.end method

.method public onPlaylistActionSuccess(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 364
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    invoke-virtual {v1}, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->getCheckedItemCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 366
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getSongListIds()[J

    move-result-object v1

    .line 367
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcn/nubia/music/utils/MusicUtils;->addToPlaylist([JJ)V

    .line 368
    iget-boolean v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mIsActionMode:Z

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->exitActionMode()V

    .line 372
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 612
    invoke-super {p0}, Lcn/nubia/music/fragment/LazyLoadFragment;->onResume()V

    .line 613
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/third/StatisticsEvent;->onPageStart(Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    .prologue
    .line 851
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 853
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    invoke-virtual {v1, p2}, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->getSectionForPosition(I)I

    move-result v1

    .line 854
    if-gez v1, :cond_1

    .line 887
    :cond_0
    :goto_0
    return-void

    .line 857
    :cond_1
    if-eqz v0, :cond_0

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 858
    iget-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mLetterlist:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setCurrentLetter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 891
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 497
    invoke-super {p0}, Lcn/nubia/music/fragment/LazyLoadFragment;->onStop()V

    .line 498
    return-void
.end method

.method public onTouchingLetterChanged(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 825
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    if-eqz v0, :cond_2

    .line 826
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v3

    .line 827
    if-eqz v3, :cond_1

    .line 828
    array-length v4, v3

    move v2, v1

    .line 829
    :goto_0
    if-ge v2, v4, :cond_2

    .line 830
    aget-object v0, v3, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchingLetterChanged() sections["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v0, v3, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 833
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    invoke-virtual {v0, v2}, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->getPositionForSection(I)I

    move-result v0

    .line 834
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mListView:Lcn/nubia/music/ui/ScrollRefreshListView;

    invoke-virtual {v1, v0}, Lcn/nubia/music/ui/ScrollRefreshListView;->setSelection(I)V

    .line 835
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mListView:Lcn/nubia/music/ui/ScrollRefreshListView;

    invoke-virtual {v0}, Lcn/nubia/music/ui/ScrollRefreshListView;->postInvalidate()V

    .line 836
    const/4 v0, 0x1

    .line 843
    :goto_1
    return v0

    .line 829
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 840
    goto :goto_1

    :cond_2
    move v0, v1

    .line 843
    goto :goto_1
.end method

.method protected registContentObserver(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 501
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContentListener:Lcn/nubia/music/fragment/BaseLetterListFragment$c;

    if-nez v0, :cond_0

    .line 502
    new-instance v0, Lcn/nubia/music/fragment/BaseLetterListFragment$c;

    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mHandler:Lcn/nubia/music/fragment/BaseLetterListFragment$b;

    invoke-direct {v0, p0, v1}, Lcn/nubia/music/fragment/BaseLetterListFragment$c;-><init>(Lcn/nubia/music/fragment/BaseLetterListFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContentListener:Lcn/nubia/music/fragment/BaseLetterListFragment$c;

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContentListener:Lcn/nubia/music/fragment/BaseLetterListFragment$c;

    .line 505
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 507
    return-void
.end method

.method protected setContentViewVisibility(Z)V
    .locals 2

    .prologue
    const v1, 0x7f100072

    .line 1184
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1189
    :goto_0
    return-void

    .line 1187
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic setPresenter(Lcn/nubia/music/base/BasePresenter;)V
    .locals 0

    .prologue
    .line 60
    check-cast p1, Lcn/nubia/music/fragment/presenter/BaseLetterListContract$Presenter;

    invoke-virtual {p0, p1}, Lcn/nubia/music/fragment/BaseLetterListFragment;->setPresenter(Lcn/nubia/music/fragment/presenter/BaseLetterListContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcn/nubia/music/fragment/presenter/BaseLetterListContract$Presenter;)V
    .locals 0

    .prologue
    .line 920
    iput-object p1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mPresenter:Lcn/nubia/music/fragment/presenter/BaseLetterListContract$Presenter;

    .line 921
    return-void
.end method

.method public setShuffPlayListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->shuffPlayListener:Landroid/view/View$OnClickListener;

    .line 511
    return-void
.end method

.method protected setupView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 521
    const v0, 0x7f03001e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContentView:Landroid/view/View;

    .line 523
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method protected abstract showActionbarItems(Landroid/view/Menu;)V
.end method

.method protected showActionbarMorePopup()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method protected abstract showActionbarMultiChooseItem(Landroid/view/Menu;)V
.end method

.method protected abstract showActionbarSingleChooseItem(Landroid/view/Menu;)V
.end method

.method public showLocalDataSuccess(Ljava/util/List;)V
    .locals 3
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
    .line 801
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->initStorageState()V

    .line 802
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->noData()V

    .line 821
    :goto_0
    return-void

    .line 806
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/EmptyViewLayout;->setVisibility(I)V

    .line 808
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMediaModelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 809
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMediaModelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 812
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMediaModelList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 814
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mCursorIndexer:Lcn/nubia/music/fragment/MyAlphabetIndexer;

    if-eqz v0, :cond_2

    .line 815
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mCursorIndexer:Lcn/nubia/music/fragment/MyAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcn/nubia/music/fragment/MyAlphabetIndexer;->changeCursor(Ljava/util/List;)V

    .line 820
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->onComplete()V

    goto :goto_0

    .line 817
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    new-instance v1, Lcn/nubia/music/fragment/MyAlphabetIndexer;

    iget-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mFragmentType:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    invoke-direct {v1, v2, p1}, Lcn/nubia/music/fragment/MyAlphabetIndexer;-><init>(Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;Ljava/util/List;)V

    iput-object v1, v0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mCursorIndexer:Lcn/nubia/music/fragment/MyAlphabetIndexer;

    goto :goto_1
.end method
