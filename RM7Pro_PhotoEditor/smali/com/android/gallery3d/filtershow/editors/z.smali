.class public Lcom/android/gallery3d/filtershow/editors/z;
.super Landroid/support/v4/app/Fragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/gallery3d/filtershow/editors/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/editors/z$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Lcom/android/gallery3d/filtershow/editors/c;

.field private c:I

.field private d:Landroid/view/View;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/ImageView;

.field private h:Lcom/android/gallery3d/filtershow/category/f;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/z;->d:Landroid/view/View;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/z;->e:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/z;->f:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/z;->g:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/z;->h:Lcom/android/gallery3d/filtershow/category/f;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/editors/z;->k:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/editors/z;->l:I

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/editors/z;->m:Z

    return-void
.end method

.method static synthetic b(Lcom/android/gallery3d/filtershow/editors/z;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/editors/z;->m:Z

    return p1
.end method

.method static synthetic c(Lcom/android/gallery3d/filtershow/editors/z;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/editors/z;->g:Landroid/widget/ImageView;

    return-object p0
.end method

.method private e(Lcom/android/gallery3d/filtershow/category/f;Z)V
    .locals 2

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

    const p2, 0x7f08012f

    const-string v1, "WordCategoryPanel"

    invoke-virtual {v0, p2, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private g(Landroid/view/LayoutInflater;Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/widget/LinearLayout;)V
    .locals 2

    const p2, 0x7f080027

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    if-eqz p2, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    const p2, 0x7f0b004a

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const p2, 0x7f0801d3

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f080045

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/z;->e:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f08013d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/z;->f:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/z;->h()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/z;->d()V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/z;->e:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/z;->f:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/z;->k:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/z;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/z;->f:Landroid/widget/Button;

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/z;->i:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/z;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/z;->f:Landroid/widget/Button;

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/z;->j:I

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O1(I)V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->x0()Lcom/android/gallery3d/filtershow/category/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/category/a;->h()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->K0()Lcom/android/gallery3d/filtershow/editors/n;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/editors/n;->Y(Lcom/android/gallery3d/filtershow/filters/x;)V

    move-object v2, v1

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/t;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/t;->o0()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a(Lcom/android/gallery3d/filtershow/filters/x;)V

    :cond_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->j0()V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/z;->b:Lcom/android/gallery3d/filtershow/editors/c;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->t1(Lcom/android/gallery3d/filtershow/filters/x;Lcom/android/gallery3d/filtershow/editors/c;)V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->L()V

    return-void
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/z;->b:Lcom/android/gallery3d/filtershow/editors/c;

    check-cast v0, Lcom/android/gallery3d/filtershow/editors/n;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/n;->R()I

    move-result v0

    new-instance v1, Lcom/android/gallery3d/filtershow/category/f;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/filtershow/category/f;-><init>(I)V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/editors/z;->h:Lcom/android/gallery3d/filtershow/category/f;

    new-instance v0, Lcom/android/gallery3d/filtershow/editors/z$a;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/editors/z$a;-><init>(Lcom/android/gallery3d/filtershow/editors/z;)V

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/category/f;->r(Lcom/android/gallery3d/filtershow/category/f$c;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/z;->h:Lcom/android/gallery3d/filtershow/category/f;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/z;->b:Lcom/android/gallery3d/filtershow/editors/c;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/category/f;->p(Lcom/android/gallery3d/filtershow/editors/c;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/z;->h:Lcom/android/gallery3d/filtershow/category/f;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/z$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/filtershow/editors/z$b;-><init>(Lcom/android/gallery3d/filtershow/editors/z;Lcom/android/gallery3d/filtershow/editors/z$a;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/category/f;->q(Lcom/android/gallery3d/filtershow/category/f$b;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/z;->h:Lcom/android/gallery3d/filtershow/category/f;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/editors/z;->e(Lcom/android/gallery3d/filtershow/category/f;Z)V

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/editors/z;->c:I

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/z;->c:I

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->H0(I)Lcom/android/gallery3d/filtershow/editors/c;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/z;->b:Lcom/android/gallery3d/filtershow/editors/c;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/z;->b:Lcom/android/gallery3d/filtershow/editors/c;

    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/editors/n;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/gallery3d/filtershow/editors/n;

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/z;->b:Lcom/android/gallery3d/filtershow/editors/c;

    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/editors/n;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/gallery3d/filtershow/editors/n;

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/z;->b:Lcom/android/gallery3d/filtershow/editors/c;

    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/android/gallery3d/filtershow/editors/n;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/android/gallery3d/filtershow/editors/n;

    goto :goto_0

    :sswitch_3
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/z;->b:Lcom/android/gallery3d/filtershow/editors/c;

    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/editors/n;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/gallery3d/filtershow/editors/n;

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/editors/n;->X(I)V

    goto/16 :goto_1

    :sswitch_4
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/z;->b:Lcom/android/gallery3d/filtershow/editors/c;

    if-eqz p1, :cond_2

    instance-of p1, p1, Lcom/android/gallery3d/filtershow/editors/n;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/z;->b:Lcom/android/gallery3d/filtershow/editors/c;

    check-cast v2, Lcom/android/gallery3d/filtershow/editors/n;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/editors/n;->Q()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e0044

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/android/gallery3d/filtershow/utils/b;->o(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/editors/z;->m:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/editors/z;->m:Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/z;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/editors/z;->m:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/z;->b:Lcom/android/gallery3d/filtershow/editors/c;

    check-cast p1, Lcom/android/gallery3d/filtershow/editors/n;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/n;->R()I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/editors/z;->l:I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/z;->h:Lcom/android/gallery3d/filtershow/category/f;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/category/f;->j()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/z;->b:Lcom/android/gallery3d/filtershow/editors/c;

    check-cast p1, Lcom/android/gallery3d/filtershow/editors/n;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/n;->U()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/z;->h:Lcom/android/gallery3d/filtershow/category/f;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/category/f;->n()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/z;->b:Lcom/android/gallery3d/filtershow/editors/c;

    check-cast p1, Lcom/android/gallery3d/filtershow/editors/n;

    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/z;->l:I

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/editors/n;->W(I)V

    goto :goto_1

    :sswitch_5
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/z;->a()V

    goto :goto_1

    :sswitch_6
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O1(I)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->x0()Lcom/android/gallery3d/filtershow/category/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/a;->h()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->K0()Lcom/android/gallery3d/filtershow/editors/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/editors/n;->Y(Lcom/android/gallery3d/filtershow/filters/x;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/z;->b:Lcom/android/gallery3d/filtershow/editors/c;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/editors/c;->s()V

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j2(Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->L()V

    :cond_2
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f08002b -> :sswitch_6
        0x7f080075 -> :sswitch_5
        0x7f08013c -> :sswitch_4
        0x7f080154 -> :sswitch_3
        0x7f0801ee -> :sswitch_2
        0x7f080268 -> :sswitch_1
        0x7f08027b -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f050027

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/android/gallery3d/filtershow/editors/z;->i:I

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f050051

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/android/gallery3d/filtershow/editors/z;->j:I

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/z;->a:Landroid/widget/LinearLayout;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/z;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/z;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/z;->a:Landroid/widget/LinearLayout;

    return-object p1

    :cond_1
    const p3, 0x7f0b0039

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/editors/z;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f0801f1

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/editors/z;->d:Landroid/view/View;

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/z;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f08013c

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/editors/z;->g:Landroid/widget/ImageView;

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/z;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f0801ee

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/z;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f08027b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/z;->a:Landroid/widget/LinearLayout;

    const v2, 0x7f080268

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/z;->a:Landroid/widget/LinearLayout;

    const v3, 0x7f080154

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {p3, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/z;->b:Lcom/android/gallery3d/filtershow/editors/c;

    check-cast v3, Lcom/android/gallery3d/filtershow/editors/n;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/editors/n;->S()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/z;->b:Lcom/android/gallery3d/filtershow/editors/c;

    if-eqz v4, :cond_2

    instance-of v5, v4, Lcom/android/gallery3d/filtershow/editors/n;

    if-eqz v5, :cond_2

    check-cast v4, Lcom/android/gallery3d/filtershow/editors/n;

    invoke-virtual {v4, v3}, Lcom/android/gallery3d/filtershow/editors/n;->X(I)V

    :cond_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    invoke-virtual {p3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_3
    const/4 p3, 0x3

    if-ne v3, p3, :cond_4

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_4
    const/4 p3, 0x4

    if-ne v3, p3, :cond_5

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/z;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f080075

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/z;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f08002b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {p3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/z;->d:Landroid/view/View;

    if-eqz p3, :cond_6

    check-cast p3, Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/editors/z;->g(Landroid/view/LayoutInflater;Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/widget/LinearLayout;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/z;->d()V

    :goto_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/z;->a:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/z;->b:Lcom/android/gallery3d/filtershow/editors/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/c;->r()V

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    return-void
.end method
