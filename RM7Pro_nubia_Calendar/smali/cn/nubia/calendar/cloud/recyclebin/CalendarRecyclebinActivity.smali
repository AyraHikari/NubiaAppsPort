.class public Lcn/nubia/calendar/cloud/recyclebin/CalendarRecyclebinActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "CalendarRecyclebinActivity.java"


# static fields
.field private static final BACK_STACK_FRAGMENTS:Ljava/lang/String; = ":nubia_cloud:fragments"

.field public static final RECYCLEBIN_ITEMS:I = 0x0

.field public static final RECYCLEBIN_ITEM_DETAILS:I = 0x1


# instance fields
.field mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

.field private mFragementManager:Landroid/app/FragmentManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 79
    invoke-virtual {p0}, Lcn/nubia/calendar/cloud/recyclebin/CalendarRecyclebinActivity;->finish()V

    .line 80
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 23
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v1, 0x7f0300af

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/cloud/recyclebin/CalendarRecyclebinActivity;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lcn/nubia/calendar/cloud/recyclebin/CalendarRecyclebinActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/CalendarRecyclebinActivity;->mFragementManager:Landroid/app/FragmentManager;

    .line 26
    const-class v1, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {p0}, Lcn/nubia/calendar/cloud/recyclebin/CalendarRecyclebinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 28
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 26
    invoke-virtual {p0, v1, v4, v2, v4}, Lcn/nubia/calendar/cloud/recyclebin/CalendarRecyclebinActivity;->switchToFragment(Ljava/lang/String;ILandroid/os/Bundle;Z)V

    .line 29
    invoke-virtual {p0}, Lcn/nubia/calendar/cloud/recyclebin/CalendarRecyclebinActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/CalendarRecyclebinActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    .line 30
    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/CalendarRecyclebinActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcn/nubia/calendar/cloud/recyclebin/CalendarRecyclebinActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 32
    .local v0, "mActionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 33
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 34
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 45
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->show()V

    .line 47
    .end local v0    # "mActionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 70
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcn/nubia/calendar/cloud/recyclebin/CalendarRecyclebinActivity;->onBackPressed()V

    .line 72
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public switchToFragment(Ljava/lang/String;ILandroid/os/Bundle;Z)V
    .locals 4
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "args"    # Landroid/os/Bundle;
    .param p4, "addToBackStack"    # Z

    .prologue
    .line 51
    iget-object v2, p0, Lcn/nubia/calendar/cloud/recyclebin/CalendarRecyclebinActivity;->mFragementManager:Landroid/app/FragmentManager;

    .line 52
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 53
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 54
    iget-object v2, p0, Lcn/nubia/calendar/cloud/recyclebin/CalendarRecyclebinActivity;->mFragementManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 66
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-static {p0, p1, p3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 57
    iget-object v2, p0, Lcn/nubia/calendar/cloud/recyclebin/CalendarRecyclebinActivity;->mFragementManager:Landroid/app/FragmentManager;

    .line 58
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 59
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const v2, 0x7f110249

    .line 60
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 61
    if-eqz p4, :cond_1

    .line 62
    const-string v2, ":nubia_cloud:fragments"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 64
    :cond_1
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method
