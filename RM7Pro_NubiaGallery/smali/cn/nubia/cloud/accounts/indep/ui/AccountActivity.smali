.class public Lcn/nubia/cloud/accounts/indep/ui/AccountActivity;
.super Lcn/nubia/cloud/common/ui/NBBaseActivity;
.source "AccountActivity.java"


# static fields
.field private static final BACK_STACK_FRAGMENTS:Ljava/lang/String; = ":nubia_cloud:fragments"


# instance fields
.field private mFragementManager:Landroid/app/FragmentManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcn/nubia/cloud/common/ui/NBBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 17
    invoke-super {p0, p1}, Lcn/nubia/cloud/common/ui/NBBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    sget p1, Lcn/nubia/cloud/accounts/R$layout;->account_main:I

    invoke-virtual {p0, p1}, Lcn/nubia/cloud/accounts/indep/ui/AccountActivity;->setContentView(I)V

    .line 19
    invoke-virtual {p0}, Lcn/nubia/cloud/accounts/indep/ui/AccountActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/accounts/indep/ui/AccountActivity;->mFragementManager:Landroid/app/FragmentManager;

    .line 21
    const-class p1, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/cloud/accounts/indep/ui/AccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcn/nubia/cloud/accounts/indep/ui/AccountActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public switchToFragment(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 2

    .line 27
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/AccountActivity;->mFragementManager:Landroid/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    iget-object p1, p0, Lcn/nubia/cloud/accounts/indep/ui/AccountActivity;->mFragementManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object p2

    .line 32
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/AccountActivity;->mFragementManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 33
    sget v1, Lcn/nubia/cloud/accounts/R$id;->fragment_content:I

    invoke-virtual {v0, v1, p2, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    if-eqz p3, :cond_1

    const-string p1, ":nubia_cloud:fragments"

    .line 35
    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 37
    :cond_1
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_0
    return-void
.end method
