.class public Lb/a/b/c/b/f;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lb/a/b/c/b/g$d;
.implements Lb/a/b/c/b/b$c;


# instance fields
.field private a:Lb/a/b/c/b/g;

.field private b:Lb/a/b/c/b/o;

.field private c:Lb/a/b/c/b/k;

.field private d:Lb/a/b/c/b/k;

.field private e:Lb/a/b/c/b/b;

.field private f:Lb/a/b/c/b/k;

.field private g:Lb/a/b/c/b/k$b;

.field private h:I

.field private i:Z

.field private j:I

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lb/a/b/c/b/f;->h:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lb/a/b/c/b/f;->i:Z

    .line 4
    iput v0, p0, Lb/a/b/c/b/f;->j:I

    return-void
.end method

.method private I(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, -0x401

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 3
    :cond_0
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p1, p1, 0x400

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 5
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private L()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lb/a/b/c/b/f;->J()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/nubia/video/list/ui/h;

    invoke-direct {v0}, Lcn/nubia/video/list/ui/h;-><init>()V

    .line 3
    iget-boolean v1, p0, Lb/a/b/c/b/f;->k:Z

    invoke-virtual {v0, v1}, Lcn/nubia/video/list/ui/h;->C(Z)V

    .line 4
    invoke-direct {p0, v0}, Lb/a/b/c/b/f;->M(Landroid/support/v4/app/Fragment;)V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lb/a/b/c/b/f;->h:I

    goto :goto_1

    .line 6
    :cond_0
    invoke-direct {p0}, Lb/a/b/c/b/f;->z()I

    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f090077

    .line 8
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/video/list/ui/j;

    .line 9
    iget v2, p0, Lb/a/b/c/b/f;->h:I

    if-eq v0, v2, :cond_1

    instance-of v1, v1, Lcn/nubia/video/list/ui/g;

    if-nez v1, :cond_1

    .line 10
    iput v0, p0, Lb/a/b/c/b/f;->h:I

    .line 11
    invoke-direct {p0, v0}, Lb/a/b/c/b/f;->v(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 12
    invoke-direct {p0, v0}, Lb/a/b/c/b/f;->M(Landroid/support/v4/app/Fragment;)V

    .line 13
    :cond_1
    iget v0, p0, Lb/a/b/c/b/f;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lb/a/b/c/b/f;->I(Z)V

    :goto_1
    return-void
.end method

.method private M(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f090077

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 6
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private v(I)Landroid/support/v4/app/Fragment;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lb/a/b/c/b/f;->k:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Lcn/nubia/video/list/ui/d;

    invoke-direct {p1}, Lcn/nubia/video/list/ui/d;-><init>()V

    .line 3
    iget-boolean v0, p0, Lb/a/b/c/b/f;->k:Z

    iput-boolean v0, p1, Lcn/nubia/video/list/ui/i;->e:Z

    .line 4
    iget-boolean v0, p0, Lb/a/b/c/b/f;->l:Z

    iput-boolean v0, p1, Lcn/nubia/video/list/ui/i;->f:Z

    return-object p1

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Lcn/nubia/video/list/ui/b;

    invoke-direct {p1}, Lcn/nubia/video/list/ui/b;-><init>()V

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "vertical_list_grid"

    invoke-static {p1, v1, v0}, Lb/a/b/d/e;->n(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_3

    .line 7
    new-instance p1, Lcn/nubia/video/list/ui/d;

    invoke-direct {p1}, Lcn/nubia/video/list/ui/d;-><init>()V

    goto :goto_1

    .line 8
    :cond_3
    new-instance p1, Lcn/nubia/video/list/ui/c;

    invoke-direct {p1}, Lcn/nubia/video/list/ui/c;-><init>()V

    :goto_1
    return-object p1
.end method

.method private z()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/f;->b:Lb/a/b/c/b/o;

    invoke-virtual {v0}, Lb/a/b/c/b/o;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/f;->b:Lb/a/b/c/b/o;

    invoke-virtual {v0}, Lb/a/b/c/b/o;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C(Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/f;->e:Lb/a/b/c/b/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/b/c/b/b;->i(Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public D(IILandroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 1
    iget-object p1, p0, Lb/a/b/c/b/f;->c:Lb/a/b/c/b/k;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2, p3}, Lb/a/b/c/b/k;->q(ILandroid/widget/ImageView;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 2
    iget-object p1, p0, Lb/a/b/c/b/f;->d:Lb/a/b/c/b/k;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2, p3}, Lb/a/b/c/b/k;->q(ILandroid/widget/ImageView;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lb/a/b/c/b/f;->f:Lb/a/b/c/b/k;

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1, p2, p3}, Lb/a/b/c/b/k;->q(ILandroid/widget/ImageView;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public E(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lb/a/b/c/b/f;->j:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez v0, :cond_1

    if-gtz p1, :cond_2

    :cond_1
    if-lez v0, :cond_3

    if-nez p1, :cond_3

    .line 2
    :cond_2
    invoke-direct {p0}, Lb/a/b/c/b/f;->L()V

    .line 3
    :cond_3
    iput p1, p0, Lb/a/b/c/b/f;->j:I

    const/4 p1, 0x1

    return p1
.end method

.method public F(III)V
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 1
    iget-object p1, p0, Lb/a/b/c/b/f;->c:Lb/a/b/c/b/k;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2, p3}, Lb/a/b/c/b/k;->w(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 2
    iget-object p1, p0, Lb/a/b/c/b/f;->d:Lb/a/b/c/b/k;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2, p3}, Lb/a/b/c/b/k;->w(II)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lb/a/b/c/b/f;->f:Lb/a/b/c/b/k;

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1, p2, p3}, Lb/a/b/c/b/k;->w(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public G(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/a/b/c/b/f;->k:Z

    return-void
.end method

.method public H(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/a/b/c/b/f;->l:Z

    return-void
.end method

.method public J()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/f;->a:Lb/a/b/c/b/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/b/c/b/g;->L()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public K()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/f;->e:Lb/a/b/c/b/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/b/c/b/b;->k()V

    :cond_0
    return-void
.end method

.method public N(I)V
    .locals 1

    .line 1
    new-instance v0, Lcn/nubia/video/list/ui/g;

    invoke-direct {v0}, Lcn/nubia/video/list/ui/g;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcn/nubia/video/list/ui/g;->d0(I)V

    .line 3
    invoke-direct {p0, v0}, Lb/a/b/c/b/f;->M(Landroid/support/v4/app/Fragment;)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lb/a/b/c/b/f;->h:I

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 2
    check-cast p1, Lb/a/b/c/b/k$b;

    iput-object p1, p0, Lb/a/b/c/b/f;->g:Lb/a/b/c/b/k$b;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget v0, p0, Lb/a/b/c/b/f;->h:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_0

    const-string p1, "DataFragment"

    const-string v0, "onConfigurationChanged"

    .line 3
    invoke-static {p1, v0}, Lb/a/b/d/e;->J(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lb/a/b/c/b/f;->L()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "DataFragment"

    const-string v0, "onCreate()"

    .line 2
    invoke-static {p1, v0}, Lb/a/b/d/e;->J(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/list/app/a;

    .line 4
    new-instance v0, Lb/a/b/c/b/o;

    invoke-direct {v0, p1}, Lb/a/b/c/b/o;-><init>(Lcn/nubia/video/list/app/a;)V

    iput-object v0, p0, Lb/a/b/c/b/f;->b:Lb/a/b/c/b/o;

    .line 5
    new-instance v1, Lb/a/b/c/b/g;

    invoke-direct {v1, p1, v0}, Lb/a/b/c/b/g;-><init>(Lcn/nubia/video/list/app/a;Lb/a/b/c/b/o;)V

    iput-object v1, p0, Lb/a/b/c/b/f;->a:Lb/a/b/c/b/g;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1, p0}, Lb/a/b/c/b/g;->K(Lb/a/b/c/b/g$d;)V

    .line 7
    :cond_0
    new-instance v0, Lb/a/b/c/b/k;

    const/4 v1, 0x3

    iget-object v2, p0, Lb/a/b/c/b/f;->a:Lb/a/b/c/b/g;

    invoke-direct {v0, v1, p1, v2}, Lb/a/b/c/b/k;-><init>(ILcn/nubia/video/list/app/a;Lb/a/b/c/b/g;)V

    iput-object v0, p0, Lb/a/b/c/b/f;->f:Lb/a/b/c/b/k;

    .line 8
    new-instance v0, Lb/a/b/c/b/k;

    const/4 v1, 0x1

    iget-object v2, p0, Lb/a/b/c/b/f;->a:Lb/a/b/c/b/g;

    invoke-direct {v0, v1, p1, v2}, Lb/a/b/c/b/k;-><init>(ILcn/nubia/video/list/app/a;Lb/a/b/c/b/g;)V

    iput-object v0, p0, Lb/a/b/c/b/f;->c:Lb/a/b/c/b/k;

    .line 9
    new-instance v0, Lb/a/b/c/b/k;

    const/4 v1, 0x2

    iget-object v2, p0, Lb/a/b/c/b/f;->a:Lb/a/b/c/b/g;

    invoke-direct {v0, v1, p1, v2}, Lb/a/b/c/b/k;-><init>(ILcn/nubia/video/list/app/a;Lb/a/b/c/b/g;)V

    iput-object v0, p0, Lb/a/b/c/b/f;->d:Lb/a/b/c/b/k;

    .line 10
    new-instance v0, Lb/a/b/c/b/b;

    iget-object v1, p0, Lb/a/b/c/b/f;->a:Lb/a/b/c/b/g;

    invoke-direct {v0, p1, v1}, Lb/a/b/c/b/b;-><init>(Lcn/nubia/video/list/app/a;Lb/a/b/c/b/g;)V

    iput-object v0, p0, Lb/a/b/c/b/f;->e:Lb/a/b/c/b/b;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0, p0}, Lb/a/b/c/b/b;->j(Lb/a/b/c/b/b$c;)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lb/a/b/c/b/f;->a:Lb/a/b/c/b/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lb/a/b/c/b/g;->y()V

    .line 4
    iget-object v0, p0, Lb/a/b/c/b/f;->a:Lb/a/b/c/b/g;

    invoke-virtual {v0, v1}, Lb/a/b/c/b/g;->K(Lb/a/b/c/b/g$d;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lb/a/b/c/b/f;->f:Lb/a/b/c/b/k;

    if-eqz v0, :cond_1

    .line 6
    iput-object v1, p0, Lb/a/b/c/b/f;->f:Lb/a/b/c/b/k;

    .line 7
    :cond_1
    iget-object v0, p0, Lb/a/b/c/b/f;->c:Lb/a/b/c/b/k;

    if-eqz v0, :cond_2

    .line 8
    iput-object v1, p0, Lb/a/b/c/b/f;->c:Lb/a/b/c/b/k;

    .line 9
    :cond_2
    iget-object v0, p0, Lb/a/b/c/b/f;->d:Lb/a/b/c/b/k;

    if-eqz v0, :cond_3

    .line 10
    iput-object v1, p0, Lb/a/b/c/b/f;->d:Lb/a/b/c/b/k;

    .line 11
    :cond_3
    iget-object v0, p0, Lb/a/b/c/b/f;->e:Lb/a/b/c/b/b;

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {v0}, Lb/a/b/c/b/b;->h()V

    :cond_4
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    const-string v0, "DataFragment"

    const-string v1, "onDestroyView()"

    .line 2
    invoke-static {v0, v1}, Lb/a/b/d/e;->J(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lb/a/b/c/b/f;->a:Lb/a/b/c/b/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lb/a/b/c/b/g;->K(Lb/a/b/c/b/g$d;)V

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb/a/b/c/b/f;->g:Lb/a/b/c/b/k$b;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lb/a/b/c/b/f;->a:Lb/a/b/c/b/g;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lb/a/b/c/b/g;->F()V

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/b/c/b/f;->f:Lb/a/b/c/b/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Lb/a/b/c/b/k;->y(Lb/a/b/c/b/k$b;)V

    .line 6
    iget-object v0, p0, Lb/a/b/c/b/f;->f:Lb/a/b/c/b/k;

    invoke-virtual {v0}, Lb/a/b/c/b/k;->r()V

    .line 7
    :cond_1
    iget-object v0, p0, Lb/a/b/c/b/f;->c:Lb/a/b/c/b/k;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Lb/a/b/c/b/k;->y(Lb/a/b/c/b/k$b;)V

    .line 9
    iget-object v0, p0, Lb/a/b/c/b/f;->c:Lb/a/b/c/b/k;

    invoke-virtual {v0}, Lb/a/b/c/b/k;->r()V

    .line 10
    :cond_2
    iget-object v0, p0, Lb/a/b/c/b/f;->d:Lb/a/b/c/b/k;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0, v1}, Lb/a/b/c/b/k;->y(Lb/a/b/c/b/k$b;)V

    .line 12
    iget-object v0, p0, Lb/a/b/c/b/f;->d:Lb/a/b/c/b/k;

    invoke-virtual {v0}, Lb/a/b/c/b/k;->r()V

    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    const-string v0, "DataFragment"

    const-string v1, "onResume()"

    .line 2
    invoke-static {v0, v1}, Lb/a/b/d/e;->J(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lb/a/b/c/b/f;->a:Lb/a/b/c/b/g;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lb/a/b/c/b/g;->G()V

    .line 5
    :cond_0
    iget-object v0, p0, Lb/a/b/c/b/f;->f:Lb/a/b/c/b/k;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lb/a/b/c/b/f;->g:Lb/a/b/c/b/k$b;

    invoke-virtual {v0, v1}, Lb/a/b/c/b/k;->y(Lb/a/b/c/b/k$b;)V

    .line 7
    iget-object v0, p0, Lb/a/b/c/b/f;->f:Lb/a/b/c/b/k;

    invoke-virtual {v0}, Lb/a/b/c/b/k;->v()V

    .line 8
    :cond_1
    iget-object v0, p0, Lb/a/b/c/b/f;->c:Lb/a/b/c/b/k;

    if-eqz v0, :cond_2

    .line 9
    iget-object v1, p0, Lb/a/b/c/b/f;->g:Lb/a/b/c/b/k$b;

    invoke-virtual {v0, v1}, Lb/a/b/c/b/k;->y(Lb/a/b/c/b/k$b;)V

    .line 10
    iget-object v0, p0, Lb/a/b/c/b/f;->c:Lb/a/b/c/b/k;

    invoke-virtual {v0}, Lb/a/b/c/b/k;->v()V

    .line 11
    :cond_2
    iget-object v0, p0, Lb/a/b/c/b/f;->d:Lb/a/b/c/b/k;

    if-eqz v0, :cond_3

    .line 12
    iget-object v1, p0, Lb/a/b/c/b/f;->g:Lb/a/b/c/b/k$b;

    invoke-virtual {v0, v1}, Lb/a/b/c/b/k;->y(Lb/a/b/c/b/k$b;)V

    .line 13
    iget-object v0, p0, Lb/a/b/c/b/f;->d:Lb/a/b/c/b/k;

    invoke-virtual {v0}, Lb/a/b/c/b/k;->v()V

    :cond_3
    return-void
.end method

.method public p(Z)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lb/a/b/c/b/f;->i:Z

    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lb/a/b/c/b/f;->J()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0}, Lb/a/b/c/b/f;->L()V

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lb/a/b/c/b/f;->i:Z

    :cond_1
    return-void
.end method

.method public r(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090077

    .line 2
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/video/list/ui/j;

    if-eqz v0, :cond_0

    .line 3
    instance-of v1, v0, Lcn/nubia/video/list/ui/i;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcn/nubia/video/list/ui/i;

    invoke-virtual {v0, p1}, Lcn/nubia/video/list/ui/i;->C(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a/b/c/b/f;->J()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/nubia/video/list/ui/h;

    invoke-direct {v0}, Lcn/nubia/video/list/ui/h;-><init>()V

    .line 3
    invoke-direct {p0, v0}, Lb/a/b/c/b/f;->M(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lb/a/b/c/b/f;->z()I

    move-result v0

    .line 5
    iput v0, p0, Lb/a/b/c/b/f;->h:I

    .line 6
    invoke-direct {p0, v0}, Lb/a/b/c/b/f;->v(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lb/a/b/c/b/f;->M(Landroid/support/v4/app/Fragment;)V

    :goto_0
    return-void
.end method

.method public w(Lb/a/b/c/b/r;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/f;->b:Lb/a/b/c/b/o;

    invoke-virtual {v0, p1}, Lb/a/b/c/b/o;->d(Lb/a/b/c/b/r;)V

    return-void
.end method

.method public x(I)Lb/a/b/c/b/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/f;->a:Lb/a/b/c/b/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/b/c/b/g;->A(I)Lb/a/b/c/b/m;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public y()Lb/a/b/c/b/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/f;->b:Lb/a/b/c/b/o;

    invoke-virtual {v0}, Lb/a/b/c/b/o;->g()Lb/a/b/c/b/m;

    move-result-object v0

    return-object v0
.end method
