.class public Lcn/nubia/deskclock/adapter/TabPagerAdapter;
.super Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;
.source "TabPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/adapter/TabPagerAdapter$TabInfo;
    }
.end annotation


# static fields
.field private static final KEY_TAB_POSITION:Ljava/lang/String; = "tab_position"

.field private static final TAG:Ljava/lang/String; = "TabPagerAdapter"


# instance fields
.field private mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

.field private mSelectedTab:I

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/deskclock/adapter/TabPagerAdapter$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPagerEnableListener:Lcn/nubia/deskclock/inter/IViewPagerEnableListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/DeskClockFragmentPagerAdapter;-><init>(Landroid/app/Activity;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mTabs:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mContext:Ljava/lang/ref/WeakReference;

    .line 41
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 58
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeFragmentName(II)Ljava/lang/String;
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "index"    # I

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addTab(Ljava/lang/Class;I)V
    .locals 2
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcn/nubia/deskclock/adapter/TabPagerAdapter$TabInfo;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/deskclock/adapter/TabPagerAdapter$TabInfo;-><init>(Lcn/nubia/deskclock/adapter/TabPagerAdapter;Ljava/lang/Class;I)V

    .line 84
    .local v0, "info":Lcn/nubia/deskclock/adapter/TabPagerAdapter$TabInfo;
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x4

    return v0
.end method

.method public bridge synthetic getItem(I)Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->getItem(I)Lcn/nubia/deskclock/fragment/BaseFragment;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcn/nubia/deskclock/fragment/BaseFragment;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 63
    const v3, 0x7f1200e3

    invoke-direct {p0, v3, p1}, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->makeFragmentName(II)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 65
    invoke-virtual {v3, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/fragment/BaseFragment;

    .line 66
    .local v0, "fragment":Lcn/nubia/deskclock/fragment/BaseFragment;
    const-string v3, "TabPagerAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getItem position : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  ;; mTabs.size() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/deskclock/fragment/BaseFragment;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-ltz p1, :cond_1

    iget-object v3, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mTabs:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 69
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/deskclock/adapter/TabPagerAdapter$TabInfo;

    .line 70
    .local v1, "info":Lcn/nubia/deskclock/adapter/TabPagerAdapter$TabInfo;
    invoke-direct {p0}, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 71
    invoke-static {v1}, Lcn/nubia/deskclock/adapter/TabPagerAdapter$TabInfo;->access$000(Lcn/nubia/deskclock/adapter/TabPagerAdapter$TabInfo;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcn/nubia/deskclock/adapter/TabPagerAdapter$TabInfo;->access$100(Lcn/nubia/deskclock/adapter/TabPagerAdapter$TabInfo;)Landroid/os/Bundle;

    move-result-object v5

    .line 70
    invoke-static {v3, v4, v5}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .end local v0    # "fragment":Lcn/nubia/deskclock/fragment/BaseFragment;
    check-cast v0, Lcn/nubia/deskclock/fragment/BaseFragment;

    .line 72
    .restart local v0    # "fragment":Lcn/nubia/deskclock/fragment/BaseFragment;
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

    invoke-virtual {v0, v3}, Lcn/nubia/deskclock/fragment/BaseFragment;->setWorkingMode(Lcn/nubia/deskclock/model/LocalWorkingModel;)V

    .line 73
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mViewPagerEnableListener:Lcn/nubia/deskclock/inter/IViewPagerEnableListener;

    invoke-virtual {v0, v3}, Lcn/nubia/deskclock/fragment/BaseFragment;->setDeleteModeListener(Lcn/nubia/deskclock/inter/IViewPagerEnableListener;)V

    .line 75
    .end local v1    # "info":Lcn/nubia/deskclock/adapter/TabPagerAdapter$TabInfo;
    :cond_1
    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 142
    iget v0, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->getItem(I)Lcn/nubia/deskclock/fragment/BaseFragment;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 143
    iget v0, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mSelectedTab:I

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public getMainClock(I)Landroid/view/ViewStub;
    .locals 1
    .param p1, "tab"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/control/AnimationClockManager;->getClockView(I)Landroid/view/ViewStub;

    move-result-object v0

    return-object v0
.end method

.method public replaceTable()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    .line 91
    const-string v7, "TabPagerAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "replaceTable: mSelectedTab :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mSelectedTab:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v4, "mTabsTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/deskclock/adapter/TabPagerAdapter$TabInfo;>;"
    iget-object v7, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 94
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v10, :cond_1

    .line 95
    iget v7, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mSelectedTab:I

    if-eq v3, v7, :cond_0

    .line 96
    invoke-virtual {p0, v3}, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->getMainClock(I)Landroid/view/ViewStub;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 98
    :try_start_0
    invoke-virtual {p0, v3}, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->getMainClock(I)Landroid/view/ViewStub;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 99
    iget-object v7, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    invoke-virtual {v7, v3}, Lcn/nubia/deskclock/control/AnimationClockManager;->getAnimationOperator(I)Lcn/nubia/deskclock/inter/IAnimationOperator;

    move-result-object v7

    .line 100
    invoke-interface {v7}, Lcn/nubia/deskclock/inter/IAnimationOperator;->initAnimantionParam()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "ex":Ljava/lang/Exception;
    const-string v7, "TabPagerAdapter"

    const-string v8, "replaceTable "

    invoke-static {v7, v8, v1}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 107
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    iget-object v7, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 108
    const-class v7, Lcn/nubia/deskclock/fragment/WorldTimeFragment;

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->addTab(Ljava/lang/Class;I)V

    .line 109
    const-class v7, Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->addTab(Ljava/lang/Class;I)V

    .line 110
    const-class v7, Lcn/nubia/deskclock/fragment/StopwatchFragment;

    const/4 v8, 0x2

    invoke-virtual {p0, v7, v8}, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->addTab(Ljava/lang/Class;I)V

    .line 111
    const-class v7, Lcn/nubia/deskclock/fragment/CountdownFragment;

    const/4 v8, 0x3

    invoke-virtual {p0, v7, v8}, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->addTab(Ljava/lang/Class;I)V

    .line 113
    iget-object v7, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v7, :cond_2

    .line 114
    iget-object v7, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v7}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    iput-object v7, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 116
    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v10, :cond_6

    .line 117
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/deskclock/adapter/TabPagerAdapter$TabInfo;

    .line 118
    .local v6, "tabinfo":Lcn/nubia/deskclock/adapter/TabPagerAdapter$TabInfo;
    const/4 v0, 0x0

    .line 119
    .local v0, "class1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v6, :cond_3

    .line 120
    invoke-static {v6}, Lcn/nubia/deskclock/adapter/TabPagerAdapter$TabInfo;->access$000(Lcn/nubia/deskclock/adapter/TabPagerAdapter$TabInfo;)Ljava/lang/Class;

    move-result-object v0

    .line 121
    const-string v7, "TabPagerAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "replaceTable: name : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_3
    const-class v7, Lcn/nubia/deskclock/fragment/EmptyFragment;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget v7, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mSelectedTab:I

    if-ne v3, v7, :cond_5

    .line 124
    :cond_4
    const-string v7, "TabPagerAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " count "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 127
    :cond_5
    const v7, 0x7f1200e3

    invoke-direct {p0, v7, v3}, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->makeFragmentName(II)Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "name":Ljava/lang/String;
    iget-object v7, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 129
    invoke-virtual {v7, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcn/nubia/deskclock/fragment/BaseFragment;

    .line 130
    .local v2, "fragment":Lcn/nubia/deskclock/fragment/BaseFragment;
    iget-object v7, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v7, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_3

    .line 132
    .end local v0    # "class1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "fragment":Lcn/nubia/deskclock/fragment/BaseFragment;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "tabinfo":Lcn/nubia/deskclock/adapter/TabPagerAdapter$TabInfo;
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->notifyDataSetChanged()V

    .line 133
    return-void
.end method

.method public setAnimationManager(Lcn/nubia/deskclock/control/AnimationClockManager;)V
    .locals 0
    .param p1, "manager"    # Lcn/nubia/deskclock/control/AnimationClockManager;

    .prologue
    .line 161
    iput-object p1, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    .line 162
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 0
    .param p1, "tab"    # I

    .prologue
    .line 153
    iput p1, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mSelectedTab:I

    .line 154
    return-void
.end method

.method public setLocalWorkingModel(Lcn/nubia/deskclock/model/LocalWorkingModel;)V
    .locals 0
    .param p1, "model"    # Lcn/nubia/deskclock/model/LocalWorkingModel;

    .prologue
    .line 157
    iput-object p1, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

    .line 158
    return-void
.end method

.method public setViewPagerEnableListener(Lcn/nubia/deskclock/inter/IViewPagerEnableListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/deskclock/inter/IViewPagerEnableListener;

    .prologue
    .line 165
    iput-object p1, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->mViewPagerEnableListener:Lcn/nubia/deskclock/inter/IViewPagerEnableListener;

    .line 166
    return-void
.end method
