.class public Lcom/android/gallery3d/filtershow/editors/c0;
.super Landroid/support/v4/app/Fragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/gallery3d/filtershow/editors/p;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Lcom/android/gallery3d/filtershow/editors/c;

.field private c:I

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:I

.field private j:I

.field private k:Lcom/android/gallery3d/filtershow/category/b;

.field private l:Lcom/android/gallery3d/filtershow/category/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/editors/c0;->i:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/editors/c0;->j:I

    return-void
.end method

.method private c(I)Z
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/c0;->i:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private j(Lcom/android/gallery3d/filtershow/category/h;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    if-eqz p2, :cond_0

    const p2, 0x7f01000b

    const v1, 0x7f01000e

    goto :goto_0

    :cond_0
    const p2, 0x7f01000a

    const v1, 0x7f01000d

    :goto_0
    invoke-virtual {v0, p2, v1}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    const p2, 0x7f080130

    const-string v1, "WordCategoryPanel"

    invoke-virtual {v0, p2, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->j:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->j:I

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->A0()Lcom/android/gallery3d/filtershow/category/b;

    move-result-object v1

    iget v3, p0, Lcom/android/gallery3d/filtershow/editors/c0;->j:I

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/category/a;->h()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/filtershow/editors/x;->d0(Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object v1

    iget v3, p0, Lcom/android/gallery3d/filtershow/editors/c0;->j:I

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/filtershow/editors/x;->b0(I)V

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O1(I)V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/editors/x;->Z()V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->L()V

    return-void
.end method

.method public b()Lcom/android/gallery3d/filtershow/category/h;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c0;->l:Lcom/android/gallery3d/filtershow/category/h;

    return-object v0
.end method

.method public d()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->A0()Lcom/android/gallery3d/filtershow/category/b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c0;->k:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/category/b;->f(I)V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 3

    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/c0;->i:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/editors/c0;->c(I)Z

    move-result v0

    new-instance v2, Lcom/android/gallery3d/filtershow/category/h;

    invoke-direct {v2}, Lcom/android/gallery3d/filtershow/category/h;-><init>()V

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/category/h;->g(I)V

    invoke-direct {p0, v2, v0}, Lcom/android/gallery3d/filtershow/editors/c0;->j(Lcom/android/gallery3d/filtershow/category/h;Z)V

    iput v1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->i:I

    return-void
.end method

.method public f()V
    .locals 3

    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/c0;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/editors/c0;->c(I)Z

    move-result v0

    new-instance v2, Lcom/android/gallery3d/filtershow/category/h;

    invoke-direct {v2}, Lcom/android/gallery3d/filtershow/category/h;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/editors/c0;->l:Lcom/android/gallery3d/filtershow/category/h;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/category/h;->g(I)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/c0;->l:Lcom/android/gallery3d/filtershow/category/h;

    invoke-direct {p0, v2, v0}, Lcom/android/gallery3d/filtershow/editors/c0;->j(Lcom/android/gallery3d/filtershow/category/h;Z)V

    iput v1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->i:I

    return-void
.end method

.method public g()V
    .locals 3

    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/c0;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/editors/c0;->c(I)Z

    move-result v0

    new-instance v2, Lcom/android/gallery3d/filtershow/category/h;

    invoke-direct {v2}, Lcom/android/gallery3d/filtershow/category/h;-><init>()V

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/category/h;->g(I)V

    invoke-direct {p0, v2, v0}, Lcom/android/gallery3d/filtershow/editors/c0;->j(Lcom/android/gallery3d/filtershow/category/h;Z)V

    iput v1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->i:I

    return-void
.end method

.method public h()V
    .locals 3

    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/c0;->i:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/c0;->c(I)Z

    move-result v1

    new-instance v2, Lcom/android/gallery3d/filtershow/category/h;

    invoke-direct {v2}, Lcom/android/gallery3d/filtershow/category/h;-><init>()V

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/category/h;->g(I)V

    invoke-direct {p0, v2, v1}, Lcom/android/gallery3d/filtershow/editors/c0;->j(Lcom/android/gallery3d/filtershow/category/h;Z)V

    iput v0, p0, Lcom/android/gallery3d/filtershow/editors/c0;->i:I

    return-void
.end method

.method public i()V
    .locals 3

    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/c0;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/editors/c0;->c(I)Z

    move-result v0

    new-instance v2, Lcom/android/gallery3d/filtershow/category/h;

    invoke-direct {v2}, Lcom/android/gallery3d/filtershow/category/h;-><init>()V

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/category/h;->g(I)V

    invoke-direct {p0, v2, v0}, Lcom/android/gallery3d/filtershow/editors/c0;->j(Lcom/android/gallery3d/filtershow/category/h;Z)V

    iput v1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->i:I

    return-void
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->c:I

    return-void
.end method

.method public l(I)V
    .locals 5

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/utils/b;->m(Landroid/content/Context;)Z

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->d1(Z)V

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/filtershow/editors/x;->c0(I)V

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1

    const/4 v4, 0x4

    if-eq p1, v4, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c0;->e()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->g:Landroid/widget/TextView;

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c0;->i()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c0;->f()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->d:Landroid/widget/TextView;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c0;->g()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->d:Landroid/widget/TextView;

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c0;->h()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->f:Landroid/widget/TextView;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->e:Landroid/widget/TextView;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->h:Landroid/widget/TextView;

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_4
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/c0;->c:I

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->H0(I)Lcom/android/gallery3d/filtershow/editors/c;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->b:Lcom/android/gallery3d/filtershow/editors/c;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c0;->d()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_1
    const/4 p1, 0x0

    goto :goto_1

    :sswitch_2
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c0;->a()V

    goto :goto_2

    :sswitch_4
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_5
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O1(I)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->a1()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/editors/x;->V()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->A0()Lcom/android/gallery3d/filtershow/category/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/a;->h()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/editors/x;->d0(Lcom/android/gallery3d/filtershow/filters/x;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->b:Lcom/android/gallery3d/filtershow/editors/c;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/editors/c;->s()V

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j2(Lcom/android/gallery3d/filtershow/filters/x;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/x;->a0()V

    :goto_0
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->L()V

    goto :goto_2

    :sswitch_6
    const/4 p1, 0x4

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/editors/c0;->l(I)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f080022 -> :sswitch_6
        0x7f08002b -> :sswitch_5
        0x7f08005d -> :sswitch_4
        0x7f080075 -> :sswitch_3
        0x7f08008a -> :sswitch_2
        0x7f080097 -> :sswitch_1
        0x7f080259 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/c0;->a:Landroid/widget/LinearLayout;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/c0;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->a:Landroid/widget/LinearLayout;

    return-object p1

    :cond_1
    const p3, 0x7f0b003d

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->a:Landroid/widget/LinearLayout;

    const p3, 0x7f080097

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->d:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->a:Landroid/widget/LinearLayout;

    const p3, 0x7f08008a

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->e:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->a:Landroid/widget/LinearLayout;

    const p3, 0x7f08005d

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->f:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->a:Landroid/widget/LinearLayout;

    const p3, 0x7f080259

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->g:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->a:Landroid/widget/LinearLayout;

    const p3, 0x7f080022

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->h:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->a:Landroid/widget/LinearLayout;

    const p3, 0x7f080075

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/c0;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f08002b

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c0;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c0;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c0;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c0;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c0;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->a1()I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->j:I

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object p1

    iget p3, p0, Lcom/android/gallery3d/filtershow/editors/c0;->j:I

    invoke-virtual {p1, p3}, Lcom/android/gallery3d/filtershow/editors/x;->b0(I)V

    :cond_2
    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/x;->R()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/editors/c0;->l(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c0;->a:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c0;->b:Lcom/android/gallery3d/filtershow/editors/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/c;->r()V

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    return-void
.end method
