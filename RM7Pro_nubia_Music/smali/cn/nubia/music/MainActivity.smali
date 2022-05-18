.class public Lcn/nubia/music/MainActivity;
.super Lcn/nubia/music/activity/BaseFragmentActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/MainActivity$b;,
        Lcn/nubia/music/MainActivity$a;
    }
.end annotation


# static fields
.field public static final FORCETOUCH_ACTION:Ljava/lang/String; = "cn.nubia.music.preset.forcetouch_play"

.field public static mCurrentTabIndex:I


# instance fields
.field private mActionbar:Lcn/nubia/commonui/actionbar/app/ActionBar;

.field private mAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

.field private mAppUpdateManager:Lcn/nubia/music/app/AppUpdateManager;

.field private mContext:Landroid/content/Context;

.field private mCtsManager:Lcn/nubia/music/utils/CtsManager;

.field private mIme:Landroid/view/inputmethod/InputMethodManager;

.field private mIndicator:Lcn/nubia/music/ui/IndicatorLayout;

.field private mNubiaMediumFont:Landroid/graphics/Typeface;

.field private mScanManager:Lcn/nubia/music/app/scan/MusicScanManager;

.field private mSearchLayout:Landroid/widget/ImageView;

.field private mSettingLayout:Landroid/widget/ImageView;

.field private mTabPagerChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mTabViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTabViewPager:Landroid/support/v4/view/ViewPager;

.field private mTextTab1:Landroid/widget/TextView;

.field private mTextTab2:Landroid/widget/TextView;

.field private mTextTab3:Landroid/widget/TextView;

.field private mTextTab4:Landroid/widget/TextView;

.field private mToken:Lcn/nubia/music/app/MusicPlayer$ServiceToken;

.field private myAlbumTab:Lcn/nubia/music/fragment/MyAlbumFragment;

.field private myArtistTab:Lcn/nubia/music/fragment/MyArtistsFragment;

.field private myMusicTab:Lcn/nubia/music/fragment/MyMusicFragment;

.field private myPlaylistTab:Lcn/nubia/music/fragment/MyPlaylistFragment;

.field private onWranPermissionDialogListener:Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput v0, Lcn/nubia/music/MainActivity;->mCurrentTabIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseFragmentActivity;-><init>()V

    .line 59
    iput-object v0, p0, Lcn/nubia/music/MainActivity;->mAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

    .line 63
    iput-object v0, p0, Lcn/nubia/music/MainActivity;->myPlaylistTab:Lcn/nubia/music/fragment/MyPlaylistFragment;

    .line 64
    iput-object v0, p0, Lcn/nubia/music/MainActivity;->myMusicTab:Lcn/nubia/music/fragment/MyMusicFragment;

    .line 65
    iput-object v0, p0, Lcn/nubia/music/MainActivity;->myAlbumTab:Lcn/nubia/music/fragment/MyAlbumFragment;

    .line 66
    iput-object v0, p0, Lcn/nubia/music/MainActivity;->myArtistTab:Lcn/nubia/music/fragment/MyArtistsFragment;

    .line 82
    const-string v0, "nubiafont-medium"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/MainActivity;->mNubiaMediumFont:Landroid/graphics/Typeface;

    .line 96
    new-instance v0, Lcn/nubia/music/MainActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/MainActivity$1;-><init>(Lcn/nubia/music/MainActivity;)V

    iput-object v0, p0, Lcn/nubia/music/MainActivity;->onWranPermissionDialogListener:Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;

    .line 474
    new-instance v0, Lcn/nubia/music/MainActivity$8;

    invoke-direct {v0, p0}, Lcn/nubia/music/MainActivity$8;-><init>(Lcn/nubia/music/MainActivity;)V

    iput-object v0, p0, Lcn/nubia/music/MainActivity;->mTabPagerChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/MainActivity;)Lcn/nubia/music/utils/CtsManager;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mCtsManager:Lcn/nubia/music/utils/CtsManager;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/music/MainActivity;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcn/nubia/music/MainActivity;->initContent()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/music/MainActivity;)Lcn/nubia/music/fragment/MyAlbumFragment;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->myAlbumTab:Lcn/nubia/music/fragment/MyAlbumFragment;

    return-object v0
.end method

.method static synthetic access$1002(Lcn/nubia/music/MainActivity;Lcn/nubia/music/fragment/MyAlbumFragment;)Lcn/nubia/music/fragment/MyAlbumFragment;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcn/nubia/music/MainActivity;->myAlbumTab:Lcn/nubia/music/fragment/MyAlbumFragment;

    return-object p1
.end method

.method static synthetic access$1100(Lcn/nubia/music/MainActivity;I)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcn/nubia/music/MainActivity;->doUmeng(I)V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/music/MainActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mTabViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/music/MainActivity;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcn/nubia/music/MainActivity;->exitActionMode()V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/music/MainActivity;I)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcn/nubia/music/MainActivity;->setTabIndicator(I)V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/music/MainActivity;)Lcn/nubia/music/ui/IndicatorLayout;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mIndicator:Lcn/nubia/music/ui/IndicatorLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/music/MainActivity;)Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->onWranPermissionDialogListener:Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;

    return-object v0
.end method

.method static synthetic access$302(Lcn/nubia/music/MainActivity;Lcn/nubia/music/app/scan/MusicScanManager;)Lcn/nubia/music/app/scan/MusicScanManager;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcn/nubia/music/MainActivity;->mScanManager:Lcn/nubia/music/app/scan/MusicScanManager;

    return-object p1
.end method

.method static synthetic access$400(Lcn/nubia/music/MainActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/music/MainActivity;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcn/nubia/music/MainActivity;->playAll()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/music/MainActivity;)Lcn/nubia/music/app/AppUpdateManager;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mAppUpdateManager:Lcn/nubia/music/app/AppUpdateManager;

    return-object v0
.end method

.method static synthetic access$602(Lcn/nubia/music/MainActivity;Lcn/nubia/music/app/AppUpdateManager;)Lcn/nubia/music/app/AppUpdateManager;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcn/nubia/music/MainActivity;->mAppUpdateManager:Lcn/nubia/music/app/AppUpdateManager;

    return-object p1
.end method

.method static synthetic access$700(Lcn/nubia/music/MainActivity;)Lcn/nubia/music/fragment/MyPlaylistFragment;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->myPlaylistTab:Lcn/nubia/music/fragment/MyPlaylistFragment;

    return-object v0
.end method

.method static synthetic access$702(Lcn/nubia/music/MainActivity;Lcn/nubia/music/fragment/MyPlaylistFragment;)Lcn/nubia/music/fragment/MyPlaylistFragment;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcn/nubia/music/MainActivity;->myPlaylistTab:Lcn/nubia/music/fragment/MyPlaylistFragment;

    return-object p1
.end method

.method static synthetic access$800(Lcn/nubia/music/MainActivity;)Lcn/nubia/music/fragment/MyMusicFragment;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->myMusicTab:Lcn/nubia/music/fragment/MyMusicFragment;

    return-object v0
.end method

.method static synthetic access$802(Lcn/nubia/music/MainActivity;Lcn/nubia/music/fragment/MyMusicFragment;)Lcn/nubia/music/fragment/MyMusicFragment;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcn/nubia/music/MainActivity;->myMusicTab:Lcn/nubia/music/fragment/MyMusicFragment;

    return-object p1
.end method

.method static synthetic access$900(Lcn/nubia/music/MainActivity;)Lcn/nubia/music/fragment/MyArtistsFragment;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->myArtistTab:Lcn/nubia/music/fragment/MyArtistsFragment;

    return-object v0
.end method

.method static synthetic access$902(Lcn/nubia/music/MainActivity;Lcn/nubia/music/fragment/MyArtistsFragment;)Lcn/nubia/music/fragment/MyArtistsFragment;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcn/nubia/music/MainActivity;->myArtistTab:Lcn/nubia/music/fragment/MyArtistsFragment;

    return-object p1
.end method

.method private doUmeng(I)V
    .locals 3

    .prologue
    .line 445
    packed-switch p1, :pswitch_data_0

    .line 463
    :goto_0
    return-void

    .line 447
    :pswitch_0
    invoke-direct {p0}, Lcn/nubia/music/MainActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/music/MainActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "my_playlist_tab"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/music/MainActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/music/MainActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/music/MainActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "my_music_tab"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/music/MainActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :pswitch_2
    invoke-direct {p0}, Lcn/nubia/music/MainActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/music/MainActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "my_artist_tab"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/music/MainActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :pswitch_3
    invoke-direct {p0}, Lcn/nubia/music/MainActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/music/MainActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "my_album_tab"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/music/MainActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 466
    sget-boolean v0, Lcn/nubia/music/third/StatisticsEvent;->UMENG_OPEN:Z

    if-eqz v0, :cond_0

    .line 467
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 468
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    iget-object v1, p0, Lcn/nubia/music/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcn/nubia/music/third/StatisticsEvent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 471
    :cond_0
    return-void
.end method

.method private exitActionMode()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->myPlaylistTab:Lcn/nubia/music/fragment/MyPlaylistFragment;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->myPlaylistTab:Lcn/nubia/music/fragment/MyPlaylistFragment;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->exitActionMode()V

    .line 502
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->myMusicTab:Lcn/nubia/music/fragment/MyMusicFragment;

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->myMusicTab:Lcn/nubia/music/fragment/MyMusicFragment;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/MyMusicFragment;->exitActionMode()V

    .line 505
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->myAlbumTab:Lcn/nubia/music/fragment/MyAlbumFragment;

    if-eqz v0, :cond_2

    .line 506
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->myAlbumTab:Lcn/nubia/music/fragment/MyAlbumFragment;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/MyAlbumFragment;->exitActionMode()V

    .line 508
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->myArtistTab:Lcn/nubia/music/fragment/MyArtistsFragment;

    if-eqz v0, :cond_3

    .line 509
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->myArtistTab:Lcn/nubia/music/fragment/MyArtistsFragment;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/MyArtistsFragment;->exitActionMode()V

    .line 511
    :cond_3
    return-void
.end method

.method private getUmengEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    const-class v0, Lcn/nubia/music/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUmengEventKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    const-class v0, Lcn/nubia/music/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initActionbar()V
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lcn/nubia/music/MainActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/MainActivity;->mActionbar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    .line 174
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mActionbar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayOptions(I)V

    .line 176
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mActionbar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->hide()V

    .line 177
    return-void
.end method

.method private initContent()V
    .locals 3

    .prologue
    .line 213
    const-string v0, ""

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 216
    const v0, 0x7f1000df

    invoke-virtual {p0, v0}, Lcn/nubia/music/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 218
    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 222
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mTabViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 223
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mTabViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcn/nubia/music/MainActivity;->mAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 224
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mTabViewPager:Landroid/support/v4/view/ViewPager;

    sget v1, Lcn/nubia/music/MainActivity;->mCurrentTabIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 225
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mTabViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcn/nubia/music/MainActivity;->mTabPagerChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 227
    const-string v0, "cn.nubia.music.preset.forcetouch_play"

    invoke-virtual {p0}, Lcn/nubia/music/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 228
    invoke-direct {p0, v0}, Lcn/nubia/music/MainActivity;->initScanManager(Z)V

    .line 230
    new-instance v1, Lcn/nubia/music/MainActivity$4;

    invoke-direct {v1, p0, v0}, Lcn/nubia/music/MainActivity$4;-><init>(Lcn/nubia/music/MainActivity;Z)V

    invoke-static {p0, v1}, Lcn/nubia/music/app/MusicPlayer;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcn/nubia/music/app/MusicPlayer$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/MainActivity;->mToken:Lcn/nubia/music/app/MusicPlayer$ServiceToken;

    .line 244
    invoke-direct {p0}, Lcn/nubia/music/MainActivity;->initSpData()V

    .line 245
    invoke-direct {p0}, Lcn/nubia/music/MainActivity;->updateApk()V

    .line 247
    return-void
.end method

.method private initScanManager(Z)V
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lcn/nubia/music/MainActivity$3;

    invoke-direct {v0, p0, p1}, Lcn/nubia/music/MainActivity$3;-><init>(Lcn/nubia/music/MainActivity;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 168
    invoke-virtual {v0, v1}, Lcn/nubia/music/MainActivity$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 169
    return-void
.end method

.method private initSpData()V
    .locals 1

    .prologue
    .line 550
    new-instance v0, Lcn/nubia/music/MainActivity$9;

    invoke-direct {v0, p0}, Lcn/nubia/music/MainActivity$9;-><init>(Lcn/nubia/music/MainActivity;)V

    invoke-static {v0}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    .line 574
    return-void
.end method

.method private initStatusBar()V
    .locals 3

    .prologue
    .line 332
    invoke-virtual {p0}, Lcn/nubia/music/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 335
    const/16 v2, 0x2500

    .line 336
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 338
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 339
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 340
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 279
    const-string v0, ""

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lcn/nubia/music/MainActivity;->initStatusBar()V

    .line 281
    invoke-direct {p0}, Lcn/nubia/music/MainActivity;->initActionbar()V

    .line 282
    const v0, 0x7f1000d9

    invoke-virtual {p0, v0}, Lcn/nubia/music/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/ui/IndicatorLayout;

    iput-object v0, p0, Lcn/nubia/music/MainActivity;->mIndicator:Lcn/nubia/music/ui/IndicatorLayout;

    .line 283
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcn/nubia/music/MainActivity;->mIme:Landroid/view/inputmethod/InputMethodManager;

    .line 284
    const v0, 0x7f1000e0

    invoke-virtual {p0, v0}, Lcn/nubia/music/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcn/nubia/music/MainActivity;->mTabViewPager:Landroid/support/v4/view/ViewPager;

    .line 285
    new-instance v0, Lcn/nubia/music/MainActivity$a;

    invoke-virtual {p0}, Lcn/nubia/music/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/music/MainActivity$a;-><init>(Lcn/nubia/music/MainActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcn/nubia/music/MainActivity;->mAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

    .line 288
    const v0, 0x7f1000da

    invoke-virtual {p0, v0}, Lcn/nubia/music/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/music/MainActivity;->mTextTab1:Landroid/widget/TextView;

    .line 289
    const v0, 0x7f1000db

    invoke-virtual {p0, v0}, Lcn/nubia/music/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/music/MainActivity;->mTextTab2:Landroid/widget/TextView;

    .line 290
    const v0, 0x7f1000dc

    invoke-virtual {p0, v0}, Lcn/nubia/music/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/music/MainActivity;->mTextTab3:Landroid/widget/TextView;

    .line 291
    const v0, 0x7f1000dd

    invoke-virtual {p0, v0}, Lcn/nubia/music/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/music/MainActivity;->mTextTab4:Landroid/widget/TextView;

    .line 293
    const v0, 0x7f1000d8

    invoke-virtual {p0, v0}, Lcn/nubia/music/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/music/MainActivity;->mSearchLayout:Landroid/widget/ImageView;

    .line 294
    const v0, 0x7f1000d7

    invoke-virtual {p0, v0}, Lcn/nubia/music/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/music/MainActivity;->mSettingLayout:Landroid/widget/ImageView;

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/MainActivity;->mTabViewList:Ljava/util/ArrayList;

    .line 297
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mTabViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/music/MainActivity;->mTextTab1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mTabViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/music/MainActivity;->mTextTab2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mTabViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/music/MainActivity;->mTextTab3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mTabViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/music/MainActivity;->mTextTab4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mSearchLayout:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mTextTab1:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/music/MainActivity$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/music/MainActivity$b;-><init>(Lcn/nubia/music/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mTextTab2:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/music/MainActivity$b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcn/nubia/music/MainActivity$b;-><init>(Lcn/nubia/music/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mTextTab3:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/music/MainActivity$b;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcn/nubia/music/MainActivity$b;-><init>(Lcn/nubia/music/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mTextTab4:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/music/MainActivity$b;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcn/nubia/music/MainActivity$b;-><init>(Lcn/nubia/music/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mSettingLayout:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    new-instance v0, Lcn/nubia/music/MainActivity$7;

    invoke-direct {v0, p0}, Lcn/nubia/music/MainActivity$7;-><init>(Lcn/nubia/music/MainActivity;)V

    .line 326
    iget-object v1, p0, Lcn/nubia/music/MainActivity;->mSettingLayout:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 327
    iget-object v1, p0, Lcn/nubia/music/MainActivity;->mSearchLayout:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 328
    sget v0, Lcn/nubia/music/MainActivity;->mCurrentTabIndex:I

    invoke-direct {p0, v0}, Lcn/nubia/music/MainActivity;->setTabIndicator(I)V

    .line 329
    return-void
.end method

.method private playAll()V
    .locals 2

    .prologue
    .line 260
    const-string v0, ""

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 261
    new-instance v0, Lcn/nubia/music/MainActivity$6;

    invoke-direct {v0, p0}, Lcn/nubia/music/MainActivity$6;-><init>(Lcn/nubia/music/MainActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 274
    invoke-virtual {v0, v1}, Lcn/nubia/music/MainActivity$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 275
    return-void
.end method

.method private setTabIndicator(I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 420
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mIme:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcn/nubia/music/MainActivity;->mIndicator:Lcn/nubia/music/ui/IndicatorLayout;

    invoke-virtual {v1}, Lcn/nubia/music/ui/IndicatorLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move v1, v2

    .line 421
    :goto_0
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mTabViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 422
    if-ne v1, p1, :cond_0

    .line 423
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mTabViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 424
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mTabViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcn/nubia/music/MainActivity;->mNubiaMediumFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 425
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mTabViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 421
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 428
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mTabViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    const v3, -0x4c000001

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 429
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mTabViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 430
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mTabViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1

    .line 433
    :cond_1
    return-void
.end method

.method private updateApk()V
    .locals 1

    .prologue
    .line 250
    new-instance v0, Lcn/nubia/music/MainActivity$5;

    invoke-direct {v0, p0}, Lcn/nubia/music/MainActivity$5;-><init>(Lcn/nubia/music/MainActivity;)V

    invoke-static {v0}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    .line 257
    return-void
.end method


# virtual methods
.method public checkCta()V
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Lcn/nubia/music/utils/CTA;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "2"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 120
    new-instance v0, Lcn/nubia/music/MainActivity$2;

    invoke-direct {v0, p0}, Lcn/nubia/music/MainActivity$2;-><init>(Lcn/nubia/music/MainActivity;)V

    invoke-static {p0, v0}, Lcn/nubia/music/utils/CTA;->showCTADialog(Landroid/content/Context;Lcn/nubia/music/utils/CTA$OnBtnClickListener;)V

    .line 133
    :goto_0
    return-void

    .line 110
    :cond_0
    const-string v0, "1"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mCtsManager:Lcn/nubia/music/utils/CtsManager;

    invoke-virtual {v0}, Lcn/nubia/music/utils/CtsManager;->hasNeedPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    const-string v0, "1-1"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lcn/nubia/music/MainActivity;->initContent()V

    goto :goto_0

    .line 115
    :cond_1
    const-string v0, "1-2"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mCtsManager:Lcn/nubia/music/utils/CtsManager;

    iget-object v1, p0, Lcn/nubia/music/MainActivity;->onWranPermissionDialogListener:Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;

    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/CtsManager;->requestCtsPermissions(Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 197
    :goto_0
    return-void

    .line 183
    :pswitch_0
    const-string v0, "search"

    const-string v1, "search"

    const-class v2, Lcn/nubia/music/MainActivity;

    .line 184
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/music/MainActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcn/nubia/music/MainActivity;->mContext:Landroid/content/Context;

    const-class v3, Lcn/nubia/music/activity/SearchActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 186
    invoke-direct {p0}, Lcn/nubia/music/MainActivity;->exitActionMode()V

    goto :goto_0

    .line 189
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/music/MainActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/music/MainActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setting"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/music/MainActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/music/MainActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcn/nubia/music/activity/MoreActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/nubia/music/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 192
    invoke-direct {p0}, Lcn/nubia/music/MainActivity;->exitActionMode()V

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x7f1000d7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 365
    invoke-super {p0, p1}, Lcn/nubia/music/activity/BaseFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 366
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 87
    const-string v0, ""

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 88
    invoke-super {p0, p1}, Lcn/nubia/music/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lcn/nubia/music/MainActivity;->setContentView(I)V

    .line 90
    iput-object p0, p0, Lcn/nubia/music/MainActivity;->mContext:Landroid/content/Context;

    .line 91
    invoke-direct {p0}, Lcn/nubia/music/MainActivity;->initView()V

    .line 92
    new-instance v0, Lcn/nubia/music/utils/CtsManager;

    invoke-direct {v0, p0}, Lcn/nubia/music/utils/CtsManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/nubia/music/MainActivity;->mCtsManager:Lcn/nubia/music/utils/CtsManager;

    .line 93
    invoke-virtual {p0}, Lcn/nubia/music/MainActivity;->checkCta()V

    .line 94
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 345
    invoke-super {p0}, Lcn/nubia/music/activity/BaseFragmentActivity;->onDestroy()V

    .line 350
    invoke-static {}, Lcn/nubia/music/app/scan/MusicScanProgress;->clear()V

    .line 351
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mScanManager:Lcn/nubia/music/app/scan/MusicScanManager;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mScanManager:Lcn/nubia/music/app/scan/MusicScanManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/scan/MusicScanManager;->clearMusicScan()V

    .line 353
    iput-object v1, p0, Lcn/nubia/music/MainActivity;->mScanManager:Lcn/nubia/music/app/scan/MusicScanManager;

    .line 356
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mToken:Lcn/nubia/music/app/MusicPlayer$ServiceToken;

    invoke-static {v0}, Lcn/nubia/music/app/MusicPlayer;->unbindFromService(Lcn/nubia/music/app/MusicPlayer$ServiceToken;)V

    .line 357
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mAppUpdateManager:Lcn/nubia/music/app/AppUpdateManager;

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mAppUpdateManager:Lcn/nubia/music/app/AppUpdateManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/AppUpdateManager;->clearListener()V

    .line 359
    iput-object v1, p0, Lcn/nubia/music/MainActivity;->mAppUpdateManager:Lcn/nubia/music/app/AppUpdateManager;

    .line 361
    :cond_1
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/16 v2, 0x19

    .line 202
    const/16 v0, 0x52

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    sget v1, Lcn/nubia/music/MainActivity;->mCurrentTabIndex:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/music/MainActivity;->myMusicTab:Lcn/nubia/music/fragment/MyMusicFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/MainActivity;->myMusicTab:Lcn/nubia/music/fragment/MyMusicFragment;

    .line 203
    invoke-virtual {v0}, Lcn/nubia/music/fragment/MyMusicFragment;->isActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/MainActivity;->myMusicTab:Lcn/nubia/music/fragment/MyMusicFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/MyMusicFragment;->mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/MainActivity;->myMusicTab:Lcn/nubia/music/fragment/MyMusicFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/MyMusicFragment;->mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    .line 204
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/MainActivity;->myMusicTab:Lcn/nubia/music/fragment/MyMusicFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/MyMusicFragment;->mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    .line 205
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/MainActivity;->myMusicTab:Lcn/nubia/music/fragment/MyMusicFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/MyMusicFragment;->mMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    .line 206
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->myMusicTab:Lcn/nubia/music/fragment/MyMusicFragment;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/MyMusicFragment;->showActionbarMorePopup()V

    .line 209
    :cond_0
    invoke-super {p0, p1, p2}, Lcn/nubia/music/activity/BaseFragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 515
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 520
    invoke-super {p0, p1}, Lcn/nubia/music/activity/BaseFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 517
    :pswitch_0
    invoke-virtual {p0}, Lcn/nubia/music/MainActivity;->finish()V

    .line 518
    const/4 v0, 0x1

    goto :goto_0

    .line 515
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 526
    const-string v1, ""

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 527
    const/16 v1, 0x14

    if-ne p1, v1, :cond_2

    .line 528
    const/4 v1, 0x1

    .line 529
    array-length v3, p3

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_4

    aget v4, p3, v2

    .line 530
    if-eqz v4, :cond_0

    .line 532
    const-string v1, "break"

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 536
    :goto_1
    if-eqz v0, :cond_1

    .line 537
    invoke-direct {p0}, Lcn/nubia/music/MainActivity;->initContent()V

    .line 546
    :goto_2
    return-void

    .line 529
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 539
    :cond_1
    invoke-static {p0}, Lcn/nubia/music/utils/CtsManager;->hasNecessaryPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 540
    invoke-direct {p0}, Lcn/nubia/music/MainActivity;->initContent()V

    .line 545
    :cond_2
    :goto_3
    iget-object v0, p0, Lcn/nubia/music/MainActivity;->mCtsManager:Lcn/nubia/music/utils/CtsManager;

    invoke-virtual {v0}, Lcn/nubia/music/utils/CtsManager;->markCtsPermissionIsNotFirstLaunch()V

    goto :goto_2

    .line 542
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/music/MainActivity;->finish()V

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public showNoVersion()V
    .locals 0

    .prologue
    .line 584
    return-void
.end method

.method public showUpdateInfo(Lcn/nubia/upgrade/model/VersionData;)V
    .locals 0

    .prologue
    .line 578
    invoke-static {p0, p1, p0}, Lcn/nubia/music/app/update/MusicAppUpdateDialog;->showUpdateInfoDialog(Landroid/app/Activity;Lcn/nubia/upgrade/model/VersionData;Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;)V

    .line 579
    return-void
.end method
