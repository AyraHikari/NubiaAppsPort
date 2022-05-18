.class public Lcn/nubia/video/list/ui/b;
.super Lcn/nubia/video/list/ui/j;
.source "SourceFile"


# instance fields
.field private c:Landroid/support/v7/widget/RecyclerView;

.field private d:Landroid/support/v7/widget/a0;

.field private e:Lb/a/b/c/b/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/list/ui/j;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/nubia/video/list/ui/b;->d:Landroid/support/v7/widget/a0;

    .line 3
    iput-object v0, p0, Lcn/nubia/video/list/ui/b;->e:Lb/a/b/c/b/h;

    return-void
.end method

.method static synthetic w(Lcn/nubia/video/list/ui/b;)Lb/a/b/c/b/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/list/ui/b;->e:Lb/a/b/c/b/h;

    return-object p0
.end method

.method static synthetic x(Lcn/nubia/video/list/ui/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/list/ui/b;->y()V

    return-void
.end method

.method private y()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/b;->d:Landroid/support/v7/widget/a0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/a0;->g1()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    move v0, v1

    .line 3
    :cond_1
    iget-object v2, p0, Lcn/nubia/video/list/ui/b;->d:Landroid/support/v7/widget/a0;

    invoke-virtual {v2}, Landroid/support/v7/widget/a0;->i1()I

    move-result v2

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 4
    :goto_0
    iget-object v2, p0, Lcn/nubia/video/list/ui/j;->b:Lb/a/b/c/b/f;

    if-eqz v2, :cond_3

    const/4 v3, 0x3

    .line 5
    invoke-virtual {v2, v3, v0, v1}, Lb/a/b/c/b/f;->F(III)V

    :cond_3
    return-void
.end method

.method private z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/b;->c:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcn/nubia/video/list/ui/b$a;

    invoke-direct {v1, p0}, Lcn/nubia/video/list/ui/b$a;-><init>(Lcn/nubia/video/list/ui/b;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$p;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0023

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09007a

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcn/nubia/video/list/ui/b;->c:Landroid/support/v7/widget/RecyclerView;

    .line 3
    new-instance p2, Landroid/support/v7/widget/a0;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/support/v7/widget/a0;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/nubia/video/list/ui/b;->d:Landroid/support/v7/widget/a0;

    .line 4
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/a0;->F1(I)V

    .line 5
    iget-object p2, p0, Lcn/nubia/video/list/ui/b;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object p3, p0, Lcn/nubia/video/list/ui/b;->d:Landroid/support/v7/widget/a0;

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 6
    new-instance p2, Lb/a/b/c/b/h;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcn/nubia/video/list/ui/j;->b:Lb/a/b/c/b/f;

    invoke-direct {p2, p3, v0}, Lb/a/b/c/b/h;-><init>(Landroid/content/Context;Lb/a/b/c/b/f;)V

    iput-object p2, p0, Lcn/nubia/video/list/ui/b;->e:Lb/a/b/c/b/h;

    .line 7
    iget-object p3, p0, Lcn/nubia/video/list/ui/b;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$f;)V

    .line 8
    iget-object p2, p0, Lcn/nubia/video/list/ui/b;->c:Landroid/support/v7/widget/RecyclerView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 9
    invoke-direct {p0}, Lcn/nubia/video/list/ui/b;->z()V

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/nubia/video/list/ui/j;->onResume()V

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/list/ui/b;->y()V

    return-void
.end method

.method public u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/b;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/video/list/ui/b;->e:Lb/a/b/c/b/h;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$f;->g()V

    :cond_0
    return-void
.end method
