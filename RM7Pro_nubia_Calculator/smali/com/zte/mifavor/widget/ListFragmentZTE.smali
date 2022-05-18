.class public Lcom/zte/mifavor/widget/ListFragmentZTE;
.super Landroid/app/ListFragment;
.source "ListFragmentZTE.java"

# interfaces
.implements Lcom/zte/mifavor/widget/IBottomBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 20
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p2, 0x102000a

    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ListView;

    if-eqz p3, :cond_0

    .line 23
    invoke-virtual {p3}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 25
    new-instance v1, Lcom/zte/mifavor/widget/ListView;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListFragmentZTE;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/zte/mifavor/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setId(I)V

    const/4 p0, 0x0

    .line 27
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 28
    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 29
    invoke-virtual {p3}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-object p1
.end method
