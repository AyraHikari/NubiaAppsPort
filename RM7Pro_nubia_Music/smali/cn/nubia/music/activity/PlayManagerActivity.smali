.class public Lcn/nubia/music/activity/PlayManagerActivity;
.super Lcn/nubia/music/activity/BaseFragmentActivity;
.source "PlayManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/activity/PlayManagerActivity$a;
    }
.end annotation


# static fields
.field public static final NOWPLAYINGINDEX:I = 0x0

.field public static final PLAYHISTORYINDEX:I = 0x1


# instance fields
.field private mAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

.field private mClearBtn:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCurrentTabIndex:I

.field public mMiniPlayBar:Lcn/nubia/music/ui/MiniMusicPlayBar;

.field private mNowPlayingFragment:Lcn/nubia/music/fragment/NowPlayingListFragment;

.field private mPagerChangeListener:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

.field private mPlayHistoryFragment:Lcn/nubia/music/fragment/PlayHistoryFragment;

.field private mTabLeft:Landroid/widget/TextView;

.field private mTabRight:Landroid/widget/TextView;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseFragmentActivity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mCurrentTabIndex:I

    .line 154
    new-instance v0, Lcn/nubia/music/activity/PlayManagerActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/PlayManagerActivity$1;-><init>(Lcn/nubia/music/activity/PlayManagerActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mPagerChangeListener:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/activity/PlayManagerActivity;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/PlayManagerActivity;->updateTab(I)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/music/activity/PlayManagerActivity;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/PlayManagerActivity;->doUmeng(I)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/music/activity/PlayManagerActivity;)Lcn/nubia/music/fragment/NowPlayingListFragment;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mNowPlayingFragment:Lcn/nubia/music/fragment/NowPlayingListFragment;

    return-object v0
.end method

.method static synthetic access$202(Lcn/nubia/music/activity/PlayManagerActivity;Lcn/nubia/music/fragment/NowPlayingListFragment;)Lcn/nubia/music/fragment/NowPlayingListFragment;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mNowPlayingFragment:Lcn/nubia/music/fragment/NowPlayingListFragment;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/music/activity/PlayManagerActivity;)Lcn/nubia/music/fragment/PlayHistoryFragment;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mPlayHistoryFragment:Lcn/nubia/music/fragment/PlayHistoryFragment;

    return-object v0
.end method

.method static synthetic access$302(Lcn/nubia/music/activity/PlayManagerActivity;Lcn/nubia/music/fragment/PlayHistoryFragment;)Lcn/nubia/music/fragment/PlayHistoryFragment;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mPlayHistoryFragment:Lcn/nubia/music/fragment/PlayHistoryFragment;

    return-object p1
.end method

.method private doUmeng(I)V
    .locals 3

    .prologue
    .line 208
    packed-switch p1, :pswitch_data_0

    .line 218
    :goto_0
    return-void

    .line 210
    :pswitch_0
    invoke-direct {p0}, Lcn/nubia/music/activity/PlayManagerActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/music/activity/PlayManagerActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "playing_list_tab"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/music/activity/PlayManagerActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/music/activity/PlayManagerActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/music/activity/PlayManagerActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "play_history_tab"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/music/activity/PlayManagerActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 229
    sget-boolean v0, Lcn/nubia/music/third/StatisticsEvent;->UMENG_OPEN:Z

    if-eqz v0, :cond_0

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 231
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-static {p0, p1, v0}, Lcn/nubia/music/third/StatisticsEvent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 234
    :cond_0
    return-void
.end method

.method private getUmengEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    const-class v0, Lcn/nubia/music/activity/PlayManagerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUmengEventKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    const-class v0, Lcn/nubia/music/activity/PlayManagerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initActionbar()V
    .locals 3

    .prologue
    .line 100
    invoke-virtual {p0}, Lcn/nubia/music/activity/PlayManagerActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 101
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayOptions(I)V

    .line 102
    const v1, 0x7f03007c

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setCustomView(I)V

    .line 103
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 105
    const v0, 0x7f10008a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 106
    const v2, 0x7f0b00c8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 107
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v0, 0x7f100089

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 110
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f10015f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mClearBtn:Landroid/widget/ImageView;

    .line 113
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mClearBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Lcn/nubia/music/activity/PlayManagerActivity$a;

    invoke-virtual {p0}, Lcn/nubia/music/activity/PlayManagerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/music/activity/PlayManagerActivity$a;-><init>(Lcn/nubia/music/activity/PlayManagerActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

    .line 67
    const v0, 0x7f100152

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/PlayManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mTabLeft:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f100154

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/PlayManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mTabRight:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mTabLeft:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mTabRight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v0, 0x7f100151

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/PlayManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 72
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 73
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentPagerAdapter;->notifyDataSetChanged()V

    .line 74
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mPagerChangeListener:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 75
    const v0, 0x7f100155

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/PlayManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/ui/MiniMusicPlayBar;

    iput-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mMiniPlayBar:Lcn/nubia/music/ui/MiniMusicPlayBar;

    .line 77
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mCurrentTabIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/music/activity/PlayManagerActivity;->updateTab(I)V

    .line 79
    return-void
.end method

.method private updateTab(I)V
    .locals 5

    .prologue
    const v4, 0x7f0f00e8

    const v3, 0x7f0f00e7

    .line 82
    iget v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mCurrentTabIndex:I

    if-eq v0, p1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcn/nubia/music/activity/PlayManagerActivity;->exitActionMode()V

    .line 85
    :cond_0
    iput p1, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mCurrentTabIndex:I

    .line 86
    if-nez p1, :cond_2

    .line 87
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mTabLeft:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0200ed

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mTabRight:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f02028a

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mTabLeft:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mTabRight:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 91
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 92
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mTabLeft:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0200ec

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mTabRight:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f02028c

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mTabLeft:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mTabRight:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public exitActionMode()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mNowPlayingFragment:Lcn/nubia/music/fragment/NowPlayingListFragment;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mNowPlayingFragment:Lcn/nubia/music/fragment/NowPlayingListFragment;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/NowPlayingListFragment;->exitActionMode()V

    .line 149
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mPlayHistoryFragment:Lcn/nubia/music/fragment/PlayHistoryFragment;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mPlayHistoryFragment:Lcn/nubia/music/fragment/PlayHistoryFragment;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/PlayHistoryFragment;->exitActionMode()V

    .line 152
    :cond_1
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0}, Lcn/nubia/music/activity/BaseFragmentActivity;->finish()V

    .line 204
    const/4 v0, 0x0

    const v1, 0x7f04000f

    invoke-virtual {p0, v0, v1}, Lcn/nubia/music/activity/PlayManagerActivity;->overridePendingTransition(II)V

    .line 205
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 121
    :sswitch_0
    invoke-virtual {p0}, Lcn/nubia/music/activity/PlayManagerActivity;->finish()V

    goto :goto_0

    .line 124
    :sswitch_1
    iget v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mCurrentTabIndex:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mNowPlayingFragment:Lcn/nubia/music/fragment/NowPlayingListFragment;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mNowPlayingFragment:Lcn/nubia/music/fragment/NowPlayingListFragment;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/NowPlayingListFragment;->removeAllTracks()V

    goto :goto_0

    .line 126
    :cond_1
    iget v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mCurrentTabIndex:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mPlayHistoryFragment:Lcn/nubia/music/fragment/PlayHistoryFragment;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mPlayHistoryFragment:Lcn/nubia/music/fragment/PlayHistoryFragment;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/PlayHistoryFragment;->clearHistory()V

    goto :goto_0

    .line 132
    :sswitch_2
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 136
    :sswitch_3
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 118
    :sswitch_data_0
    .sparse-switch
        0x7f100089 -> :sswitch_0
        0x7f10008a -> :sswitch_0
        0x7f100152 -> :sswitch_2
        0x7f100154 -> :sswitch_3
        0x7f10015f -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcn/nubia/music/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    iput-object p0, p0, Lcn/nubia/music/activity/PlayManagerActivity;->mContext:Landroid/content/Context;

    .line 58
    const v0, 0x7f030077

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/PlayManagerActivity;->setContentView(I)V

    .line 59
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/PlayManagerActivity;->setVolumeControlStream(I)V

    .line 60
    invoke-direct {p0}, Lcn/nubia/music/activity/PlayManagerActivity;->initActionbar()V

    .line 61
    invoke-direct {p0}, Lcn/nubia/music/activity/PlayManagerActivity;->initView()V

    .line 62
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 193
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 198
    invoke-super {p0, p1}, Lcn/nubia/music/activity/BaseFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 195
    :pswitch_0
    invoke-virtual {p0}, Lcn/nubia/music/activity/PlayManagerActivity;->finish()V

    .line 196
    const/4 v0, 0x1

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
