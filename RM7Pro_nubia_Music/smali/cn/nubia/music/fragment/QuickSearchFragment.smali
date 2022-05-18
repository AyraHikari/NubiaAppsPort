.class public Lcn/nubia/music/fragment/QuickSearchFragment;
.super Landroid/support/v4/app/Fragment;
.source "QuickSearchFragment.java"

# interfaces
.implements Lcn/nubia/music/fragment/presenter/QuickSearchContract$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/fragment/QuickSearchFragment$a;,
        Lcn/nubia/music/fragment/QuickSearchFragment$c;,
        Lcn/nubia/music/fragment/QuickSearchFragment$b;
    }
.end annotation


# instance fields
.field private mAdapter:Lcn/nubia/music/fragment/QuickSearchFragment$c;

.field private mContext:Landroid/content/Context;

.field private mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

.field private mGetSearchKeyWordListener:Lcn/nubia/music/app/listener/IGetSearchKeyWordListener;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mObserver:Landroid/database/ContentObserver;

.field private mPresenter:Lcn/nubia/music/fragment/presenter/QuickSearchContract$Presenter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/music/fragment/QuickSearchFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/music/fragment/QuickSearchFragment;)Lcn/nubia/music/fragment/presenter/QuickSearchContract$Presenter;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mPresenter:Lcn/nubia/music/fragment/presenter/QuickSearchContract$Presenter;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/music/fragment/QuickSearchFragment;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcn/nubia/music/fragment/QuickSearchFragment;->hideSoftInputPanel()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/music/fragment/QuickSearchFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/music/fragment/QuickSearchFragment;)Lcn/nubia/music/app/listener/IGetSearchKeyWordListener;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mGetSearchKeyWordListener:Lcn/nubia/music/app/listener/IGetSearchKeyWordListener;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/music/fragment/QuickSearchFragment;Landroid/text/SpannableStringBuilder;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/fragment/QuickSearchFragment;->highlightKeyword(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private hideSoftInputPanel()V
    .locals 3

    .prologue
    .line 136
    invoke-virtual {p0}, Lcn/nubia/music/fragment/QuickSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 137
    invoke-virtual {p0}, Lcn/nubia/music/fragment/QuickSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 139
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 142
    :cond_0
    return-void
.end method

.method private highlightKeyword(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 4

    .prologue
    .line 270
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, 0x7f0f0036

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 271
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 272
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 273
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    const/16 v3, 0x21

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 275
    :cond_0
    return-object p1
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mAdapter:Lcn/nubia/music/fragment/QuickSearchFragment$c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 161
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mAdapter:Lcn/nubia/music/fragment/QuickSearchFragment$c;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mAdapter:Lcn/nubia/music/fragment/QuickSearchFragment$c;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/QuickSearchFragment$c;->notifyDataSetChanged()V

    .line 164
    :cond_0
    return-void
.end method

.method public static newInstance()Lcn/nubia/music/fragment/QuickSearchFragment;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    new-instance v1, Lcn/nubia/music/fragment/QuickSearchFragment;

    invoke-direct {v1}, Lcn/nubia/music/fragment/QuickSearchFragment;-><init>()V

    .line 58
    invoke-virtual {v1, v0}, Lcn/nubia/music/fragment/QuickSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 59
    return-object v1
.end method

.method private showLoadingData()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/EmptyViewLayout;->showLoading()V

    .line 84
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 86
    :cond_0
    return-void
.end method

.method private showNoData()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/EmptyViewLayout;->showEmpty()V

    .line 77
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 79
    :cond_0
    return-void
.end method


# virtual methods
.method public isAlive()Z
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcn/nubia/music/fragment/QuickSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Lcn/nubia/music/fragment/QuickSearchFragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcn/nubia/music/fragment/QuickSearchFragment;->startSearch()V

    .line 92
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    .line 101
    const v0, 0x7f03007e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 102
    const v0, 0x7f100162

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mListView:Landroid/widget/ListView;

    .line 103
    invoke-virtual {p0}, Lcn/nubia/music/fragment/QuickSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mContext:Landroid/content/Context;

    .line 104
    const v0, 0x7f10007c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/ui/EmptyViewLayout;

    iput-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

    .line 105
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mEmptyView:Lcn/nubia/music/ui/EmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/EmptyViewLayout;->setNoSearchData()V

    .line 106
    new-instance v0, Lcn/nubia/music/fragment/QuickSearchFragment$c;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcn/nubia/music/fragment/QuickSearchFragment$c;-><init>(Lcn/nubia/music/fragment/QuickSearchFragment;Lcn/nubia/music/fragment/QuickSearchFragment$1;)V

    iput-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mAdapter:Lcn/nubia/music/fragment/QuickSearchFragment$c;

    .line 108
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mAdapter:Lcn/nubia/music/fragment/QuickSearchFragment$c;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcn/nubia/music/fragment/QuickSearchFragment$1;

    invoke-direct {v2, p0}, Lcn/nubia/music/fragment/QuickSearchFragment$1;-><init>(Lcn/nubia/music/fragment/QuickSearchFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 118
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcn/nubia/music/fragment/QuickSearchFragment$2;

    invoke-direct {v2, p0}, Lcn/nubia/music/fragment/QuickSearchFragment$2;-><init>(Lcn/nubia/music/fragment/QuickSearchFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 128
    new-instance v0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;

    iget-object v2, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;-><init>(Landroid/content/Context;Lcn/nubia/music/fragment/presenter/QuickSearchContract$View;)V

    invoke-virtual {p0, v0}, Lcn/nubia/music/fragment/QuickSearchFragment;->setPresenter(Lcn/nubia/music/fragment/presenter/QuickSearchContract$Presenter;)V

    .line 129
    invoke-direct {p0}, Lcn/nubia/music/fragment/QuickSearchFragment;->initData()V

    .line 130
    new-instance v0, Lcn/nubia/music/fragment/QuickSearchFragment$b;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v2, p0}, Lcn/nubia/music/fragment/QuickSearchFragment$b;-><init>(Landroid/os/Handler;Lcn/nubia/music/fragment/QuickSearchFragment;)V

    iput-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mObserver:Landroid/database/ContentObserver;

    .line 131
    invoke-virtual {p0}, Lcn/nubia/music/fragment/QuickSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://nubia.music.preset/audios"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 132
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 153
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcn/nubia/music/fragment/QuickSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 156
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/third/StatisticsEvent;->onPageEnd(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/third/StatisticsEvent;->onPageStart(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 147
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mPresenter:Lcn/nubia/music/fragment/presenter/QuickSearchContract$Presenter;

    invoke-interface {v0}, Lcn/nubia/music/fragment/presenter/QuickSearchContract$Presenter;->stop()V

    .line 148
    return-void
.end method

.method public setGetKeyWordListener(Lcn/nubia/music/app/listener/IGetSearchKeyWordListener;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mGetSearchKeyWordListener:Lcn/nubia/music/app/listener/IGetSearchKeyWordListener;

    .line 187
    return-void
.end method

.method public bridge synthetic setPresenter(Lcn/nubia/music/base/BasePresenter;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Lcn/nubia/music/fragment/presenter/QuickSearchContract$Presenter;

    invoke-virtual {p0, p1}, Lcn/nubia/music/fragment/QuickSearchFragment;->setPresenter(Lcn/nubia/music/fragment/presenter/QuickSearchContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcn/nubia/music/fragment/presenter/QuickSearchContract$Presenter;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mPresenter:Lcn/nubia/music/fragment/presenter/QuickSearchContract$Presenter;

    .line 213
    return-void
.end method

.method public showSearchFail()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Lcn/nubia/music/fragment/QuickSearchFragment;->showNoData()V

    .line 293
    return-void
.end method

.method public showSearchSuccess(Ljava/util/List;)V
    .locals 1
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
    .line 286
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 287
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mAdapter:Lcn/nubia/music/fragment/QuickSearchFragment$c;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/QuickSearchFragment$c;->notifyDataSetChanged()V

    .line 288
    return-void
.end method

.method public startSearch()V
    .locals 2

    .prologue
    .line 191
    const-string v0, ""

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 192
    invoke-direct {p0}, Lcn/nubia/music/fragment/QuickSearchFragment;->initData()V

    .line 193
    invoke-direct {p0}, Lcn/nubia/music/fragment/QuickSearchFragment;->showLoadingData()V

    .line 194
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mGetSearchKeyWordListener:Lcn/nubia/music/app/listener/IGetSearchKeyWordListener;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mGetSearchKeyWordListener:Lcn/nubia/music/app/listener/IGetSearchKeyWordListener;

    invoke-interface {v0}, Lcn/nubia/music/app/listener/IGetSearchKeyWordListener;->getKeyWord()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    invoke-direct {p0}, Lcn/nubia/music/fragment/QuickSearchFragment;->showNoData()V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mPresenter:Lcn/nubia/music/fragment/presenter/QuickSearchContract$Presenter;

    iget-object v1, p0, Lcn/nubia/music/fragment/QuickSearchFragment;->mGetSearchKeyWordListener:Lcn/nubia/music/app/listener/IGetSearchKeyWordListener;

    invoke-interface {v1}, Lcn/nubia/music/app/listener/IGetSearchKeyWordListener;->getKeyWord()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/nubia/music/fragment/presenter/QuickSearchContract$Presenter;->startSearchLocalSong(Ljava/lang/String;)V

    goto :goto_0
.end method
