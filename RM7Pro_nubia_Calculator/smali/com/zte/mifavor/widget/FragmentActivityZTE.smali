.class public Lcom/zte/mifavor/widget/FragmentActivityZTE;
.super Landroidx/fragment/app/FragmentActivity;
.source "FragmentActivityZTE.java"

# interfaces
.implements Lcom/zte/mifavor/widget/MfvActivity;


# instance fields
.field private mActivityCommon:Lcom/zte/mifavor/widget/ActivityCommon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getFromDecor()Landroid/view/View;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActivityCommon:Lcom/zte/mifavor/widget/ActivityCommon;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityCommon;->getFromDecor()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 59
    invoke-static {p0}, Lcom/zte/mifavor/utils/UIUtils;->customActionMode(Landroid/app/Activity;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance p1, Lcom/zte/mifavor/widget/ActivityCommon;

    invoke-direct {p1, p0}, Lcom/zte/mifavor/widget/ActivityCommon;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActivityCommon:Lcom/zte/mifavor/widget/ActivityCommon;

    .line 36
    iget-object p0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActivityCommon:Lcom/zte/mifavor/widget/ActivityCommon;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityCommon;->onCreate()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 52
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 53
    iget-object p0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActivityCommon:Lcom/zte/mifavor/widget/ActivityCommon;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityCommon;->onDestroy()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/zte/mifavor/utils/UIUtils;->setMenuIconColor(Landroid/app/Activity;Landroid/view/Menu;)V

    .line 42
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method
