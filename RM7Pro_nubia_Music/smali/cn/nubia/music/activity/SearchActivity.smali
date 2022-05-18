.class public Lcn/nubia/music/activity/SearchActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SearchActivity.java"

# interfaces
.implements Lcn/nubia/music/app/listener/IGetSearchKeyWordListener;


# instance fields
.field private mCancel:Landroid/widget/TextView;

.field private mCurrentSearchWord:Ljava/lang/String;

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mQuickSearchFragment:Lcn/nubia/music/fragment/QuickSearchFragment;

.field private mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

.field private mTextListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 117
    new-instance v0, Lcn/nubia/music/activity/SearchActivity$2;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/SearchActivity$2;-><init>(Lcn/nubia/music/activity/SearchActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/SearchActivity;->mTextListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/activity/SearchActivity;)Lcn/nubia/commonui/widget/NubiaSearchView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/music/activity/SearchActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/music/activity/SearchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcn/nubia/music/activity/SearchActivity;->mCurrentSearchWord:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/music/activity/SearchActivity;)Lcn/nubia/music/fragment/QuickSearchFragment;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/music/activity/SearchActivity;->mQuickSearchFragment:Lcn/nubia/music/fragment/QuickSearchFragment;

    return-object v0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 75
    const v0, 0x7f10016a

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/widget/NubiaSearchView;

    iput-object v0, p0, Lcn/nubia/music/activity/SearchActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    .line 76
    iget-object v0, p0, Lcn/nubia/music/activity/SearchActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->setFocus()V

    .line 77
    iget-object v0, p0, Lcn/nubia/music/activity/SearchActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    const v1, 0x7f0b0078

    invoke-virtual {p0, v1}, Lcn/nubia/music/activity/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcn/nubia/music/activity/SearchActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    iget-object v1, p0, Lcn/nubia/music/activity/SearchActivity;->mTextListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->setOnQueryTextListener(Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;)V

    .line 80
    const v0, 0x7f10016b

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/music/activity/SearchActivity;->mCancel:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcn/nubia/music/activity/SearchActivity;->mCancel:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/music/activity/SearchActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/SearchActivity$1;-><init>(Lcn/nubia/music/activity/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method


# virtual methods
.method public changeFragment(Landroid/support/v4/app/Fragment;Z)V
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcn/nubia/music/activity/SearchActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/music/activity/SearchActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/SearchActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 60
    const v1, 0x7f10016d

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 61
    if-nez p2, :cond_2

    .line 62
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 64
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method public getKeyWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcn/nubia/music/activity/SearchActivity;->mCurrentSearchWord:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->saveActivity(Landroid/app/Activity;)V

    .line 47
    const v0, 0x7f030085

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/SearchActivity;->setContentView(I)V

    .line 48
    invoke-direct {p0}, Lcn/nubia/music/activity/SearchActivity;->initView()V

    .line 49
    invoke-virtual {p0}, Lcn/nubia/music/activity/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/SearchActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 50
    invoke-static {}, Lcn/nubia/music/fragment/QuickSearchFragment;->newInstance()Lcn/nubia/music/fragment/QuickSearchFragment;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/SearchActivity;->mQuickSearchFragment:Lcn/nubia/music/fragment/QuickSearchFragment;

    .line 51
    iget-object v0, p0, Lcn/nubia/music/activity/SearchActivity;->mQuickSearchFragment:Lcn/nubia/music/fragment/QuickSearchFragment;

    invoke-virtual {v0, p0}, Lcn/nubia/music/fragment/QuickSearchFragment;->setGetKeyWordListener(Lcn/nubia/music/app/listener/IGetSearchKeyWordListener;)V

    .line 52
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 71
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->removeActivity(Landroid/app/Activity;)V

    .line 72
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 101
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 104
    :pswitch_0
    const-string v0, "input_method"

    .line 105
    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/SearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 106
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/music/activity/SearchActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcn/nubia/music/activity/SearchActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/music/activity/SearchActivity;->finish()V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/third/StatisticsEvent;->onPageEnd(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/third/StatisticsEvent;->onPageStart(Ljava/lang/String;)V

    .line 34
    return-void
.end method
