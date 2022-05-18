.class public Lcom/zte/mifavor/widget/TabActivityZTE;
.super Landroid/app/TabActivity;
.source "TabActivityZTE.java"

# interfaces
.implements Lcom/zte/mifavor/widget/MfvActivity;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mActivityCommon:Lcom/zte/mifavor/widget/ActivityCommon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getFromDecor()Landroid/view/View;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/zte/mifavor/widget/TabActivityZTE;->mActivityCommon:Lcom/zte/mifavor/widget/ActivityCommon;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityCommon;->getFromDecor()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance p1, Lcom/zte/mifavor/widget/ActivityCommon;

    invoke-direct {p1, p0}, Lcom/zte/mifavor/widget/ActivityCommon;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/zte/mifavor/widget/TabActivityZTE;->mActivityCommon:Lcom/zte/mifavor/widget/ActivityCommon;

    .line 36
    iget-object p0, p0, Lcom/zte/mifavor/widget/TabActivityZTE;->mActivityCommon:Lcom/zte/mifavor/widget/ActivityCommon;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityCommon;->onCreate()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 41
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lcom/zte/mifavor/utils/UIUtils;->setMenuIconColor(Landroid/app/Activity;Landroid/view/Menu;)V

    .line 47
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method
