.class public Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleActivity;
.super Lcn/nubia/notepad/NotePadActivity;
.source "NotePadRecycleActivity.java"


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String; = "notepad_recycle_fragment"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFragementManager:Landroid/app/FragmentManager;

.field private mTitleActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadActivity;-><init>()V

    return-void
.end method

.method private initActionBarMenu()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 54
    invoke-virtual {p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleActivity;->mTitleActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    .line 55
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleActivity;->mTitleActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 56
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleActivity;->mTitleActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 57
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleActivity;->mTitleActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 58
    return-void
.end method

.method private switchToFragment(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 41
    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleActivity;->mFragementManager:Landroid/app/FragmentManager;

    const-string v3, "notepad_recycle_fragment"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 42
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 43
    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleActivity;->mFragementManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 50
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 46
    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleActivity;->mFragementManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 47
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const v2, 0x7f0f00ef

    const-string v3, "notepad_recycle_fragment"

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 48
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcn/nubia/notepad/NotePadActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f030038

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleActivity;->mFragementManager:Landroid/app/FragmentManager;

    .line 35
    iput-object p0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleActivity;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleActivity;->initActionBarMenu()V

    .line 37
    const-class v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 38
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 62
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleActivity;->finish()V

    .line 64
    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/notepad/NotePadActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
