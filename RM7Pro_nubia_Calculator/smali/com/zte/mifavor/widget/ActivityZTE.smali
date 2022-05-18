.class public Lcom/zte/mifavor/widget/ActivityZTE;
.super Landroid/app/Activity;
.source "ActivityZTE.java"

# interfaces
.implements Lcom/zte/mifavor/widget/MfvActivity;


# instance fields
.field private mActivityCommon:Lcom/zte/mifavor/widget/ActivityCommon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getFromDecor()Landroid/view/View;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActivityCommon:Lcom/zte/mifavor/widget/ActivityCommon;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityCommon;->getFromDecor()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 37
    invoke-static {p0}, Lcom/zte/mifavor/utils/UIUtils;->customActionMode(Landroid/app/Activity;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    new-instance p1, Lcom/zte/mifavor/widget/ActivityCommon;

    invoke-direct {p1, p0}, Lcom/zte/mifavor/widget/ActivityCommon;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActivityCommon:Lcom/zte/mifavor/widget/ActivityCommon;

    .line 20
    iget-object p0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActivityCommon:Lcom/zte/mifavor/widget/ActivityCommon;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityCommon;->onCreate()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lcom/zte/mifavor/utils/UIUtils;->setMenuIconColor(Landroid/app/Activity;Landroid/view/Menu;)V

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method
