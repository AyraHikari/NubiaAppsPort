.class public Lcom/android/gallery3d/filtershow/editors/o;
.super Landroid/support/v4/app/Fragment;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/editors/p;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Lcom/android/gallery3d/filtershow/editors/c;

.field private c:I

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/Button;

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/Button;

.field private n:Lcom/android/gallery3d/filtershow/category/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->d:Landroid/view/View;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->e:Landroid/view/View;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/filtershow/editors/o;->i:I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->n:Lcom/android/gallery3d/filtershow/category/c;

    return-void
.end method

.method static synthetic b(Lcom/android/gallery3d/filtershow/editors/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/o;->i()V

    return-void
.end method

.method static synthetic c(Lcom/android/gallery3d/filtershow/editors/o;)Lcom/android/gallery3d/filtershow/editors/c;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/editors/o;->b:Lcom/android/gallery3d/filtershow/editors/c;

    return-object p0
.end method

.method static synthetic d(Lcom/android/gallery3d/filtershow/editors/o;)I
    .locals 0

    iget p0, p0, Lcom/android/gallery3d/filtershow/editors/o;->i:I

    return p0
.end method

.method static synthetic e(Lcom/android/gallery3d/filtershow/editors/o;I)I
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/editors/o;->i:I

    return p1
.end method

.method static synthetic f(Lcom/android/gallery3d/filtershow/editors/o;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/editors/o;->m(I)Z

    move-result p0

    return p0
.end method

.method static synthetic g(Lcom/android/gallery3d/filtershow/editors/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/o;->r()V

    return-void
.end method

.method private i()V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O1(I)V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->p0()Lcom/android/gallery3d/filtershow/category/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/category/a;->h()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->J0()Lcom/android/gallery3d/filtershow/editors/j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/editors/j;->o0(Lcom/android/gallery3d/filtershow/filters/x;)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/o;->b:Lcom/android/gallery3d/filtershow/editors/c;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/editors/c;->s()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j2(Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->L()V

    return-void
.end method

.method private j()V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O1(I)V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->p0()Lcom/android/gallery3d/filtershow/category/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/category/a;->h()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->J0()Lcom/android/gallery3d/filtershow/editors/j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/editors/j;->o0(Lcom/android/gallery3d/filtershow/filters/x;)V

    move-object v2, v1

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/n;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/n;->n0()I

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

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/o;->b:Lcom/android/gallery3d/filtershow/editors/c;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->t1(Lcom/android/gallery3d/filtershow/filters/x;Lcom/android/gallery3d/filtershow/editors/c;)V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->L()V

    return-void
.end method

.method private m(I)Z
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->i:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private o(Lcom/android/gallery3d/filtershow/category/c;Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->D0()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    if-eqz p2, :cond_0

    const p2, 0x7f01000b

    const v0, 0x7f01000e

    goto :goto_0

    :cond_0
    const p2, 0x7f01000a

    const v0, 0x7f01000d

    :goto_0
    invoke-virtual {v1, p2, v0}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    :cond_1
    const p2, 0x7f08012e

    const-string v0, "CategoryPanel"

    invoke-virtual {v1, p2, p1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private q(Landroid/view/LayoutInflater;Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/widget/LinearLayout;)V
    .locals 4

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->R0()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->i:I

    const v0, 0x7f080027

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f0b0047

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const v0, 0x7f0801aa

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0801a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->j:Landroid/widget/Button;

    new-instance v2, Lcom/android/gallery3d/filtershow/editors/o$c;

    invoke-direct {v2, p0, p2}, Lcom/android/gallery3d/filtershow/editors/o$c;-><init>(Lcom/android/gallery3d/filtershow/editors/o;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->k:Landroid/widget/Button;

    new-instance v2, Lcom/android/gallery3d/filtershow/editors/o$d;

    invoke-direct {v2, p0, p2}, Lcom/android/gallery3d/filtershow/editors/o$d;-><init>(Lcom/android/gallery3d/filtershow/editors/o;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->l:Landroid/widget/Button;

    new-instance v2, Lcom/android/gallery3d/filtershow/editors/o$e;

    invoke-direct {v2, p0, p2}, Lcom/android/gallery3d/filtershow/editors/o$e;-><init>(Lcom/android/gallery3d/filtershow/editors/o;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->m:Landroid/widget/Button;

    new-instance v2, Lcom/android/gallery3d/filtershow/editors/o$f;

    invoke-direct {v2, p0, p2}, Lcom/android/gallery3d/filtershow/editors/o$f;-><init>(Lcom/android/gallery3d/filtershow/editors/o;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->m:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->p1()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->m:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/o;->r()V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->D0()I

    move-result p1

    invoke-virtual {p0, p1, v3}, Lcom/android/gallery3d/filtershow/editors/o;->n(IZ)V

    return-void
.end method

.method private r()V
    .locals 6

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/utils/b;->m(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/o;->j:Landroid/widget/Button;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/o;->k:Landroid/widget/Button;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/o;->l:Landroid/widget/Button;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/o;->m:Landroid/widget/Button;

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/gallery3d/filtershow/editors/o;->i:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    check-cast v1, Lcom/android/gallery3d/filtershow/utils/RotateButton;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/filtershow/utils/RotateButton;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->k:Landroid/widget/Button;

    check-cast v0, Lcom/android/gallery3d/filtershow/utils/RotateButton;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/utils/RotateButton;->setSelected(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->l:Landroid/widget/Button;

    check-cast v0, Lcom/android/gallery3d/filtershow/utils/RotateButton;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/utils/RotateButton;->setSelected(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->m:Landroid/widget/Button;

    check-cast v0, Lcom/android/gallery3d/filtershow/utils/RotateButton;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/utils/RotateButton;->setSelected(Z)V

    goto/16 :goto_5

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->h:I

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->k:Landroid/widget/Button;

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/o;->g:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->l:Landroid/widget/Button;

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/o;->g:I

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->m:Landroid/widget/Button;

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/o;->g:I

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_5

    :cond_1
    if-ne v2, v3, :cond_3

    if-eqz v0, :cond_2

    check-cast v1, Lcom/android/gallery3d/filtershow/utils/RotateButton;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/filtershow/utils/RotateButton;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->k:Landroid/widget/Button;

    check-cast v0, Lcom/android/gallery3d/filtershow/utils/RotateButton;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/utils/RotateButton;->setSelected(Z)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->g:I

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->k:Landroid/widget/Button;

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/o;->h:I

    goto :goto_2

    :cond_3
    const/4 v5, 0x2

    if-ne v2, v5, :cond_5

    if-eqz v0, :cond_4

    check-cast v1, Lcom/android/gallery3d/filtershow/utils/RotateButton;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/filtershow/utils/RotateButton;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->k:Landroid/widget/Button;

    check-cast v0, Lcom/android/gallery3d/filtershow/utils/RotateButton;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/utils/RotateButton;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->l:Landroid/widget/Button;

    check-cast v0, Lcom/android/gallery3d/filtershow/utils/RotateButton;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/utils/RotateButton;->setSelected(Z)V

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->g:I

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->k:Landroid/widget/Button;

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/o;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->l:Landroid/widget/Button;

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/o;->h:I

    goto :goto_3

    :cond_5
    const/4 v5, 0x3

    if-ne v2, v5, :cond_7

    if-eqz v0, :cond_6

    check-cast v1, Lcom/android/gallery3d/filtershow/utils/RotateButton;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/filtershow/utils/RotateButton;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->k:Landroid/widget/Button;

    check-cast v0, Lcom/android/gallery3d/filtershow/utils/RotateButton;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/utils/RotateButton;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->l:Landroid/widget/Button;

    check-cast v0, Lcom/android/gallery3d/filtershow/utils/RotateButton;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/utils/RotateButton;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->m:Landroid/widget/Button;

    check-cast v0, Lcom/android/gallery3d/filtershow/utils/RotateButton;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/utils/RotateButton;->setSelected(Z)V

    goto :goto_5

    :cond_6
    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->g:I

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->k:Landroid/widget/Button;

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/o;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->l:Landroid/widget/Button;

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/o;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->m:Landroid/widget/Button;

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/o;->h:I

    goto/16 :goto_4

    :cond_7
    :goto_5
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->D0()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/o;->j()V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->D0()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/o;->b:Lcom/android/gallery3d/filtershow/editors/c;

    check-cast v1, Lcom/android/gallery3d/filtershow/editors/s;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/editors/s;->Q()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/o;->h()V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->L()V

    return-void
.end method

.method public h()V
    .locals 6

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->r1()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->A()Ljava/util/Vector;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-direct {v2, v1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    move v4, v3

    :goto_0
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->A()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->A()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->N(Lcom/android/gallery3d/filtershow/filters/x;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->u()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v4

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v5

    invoke-virtual {v5, v2, v4, v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->K0(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Lcom/android/gallery3d/filtershow/filters/x;Z)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/filtershow/imageshow/x;->C0(Lcom/android/gallery3d/filtershow/filters/x;)V

    :cond_2
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->r()Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->w()Lcom/android/gallery3d/filtershow/f/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/f/b;->h()Lcom/android/gallery3d/filtershow/f/a;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/f/a;->b()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v4, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/f/a;->b()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/f/a;->a()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->L0(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Ljava/util/Vector;Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->D0()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->w()Lcom/android/gallery3d/filtershow/f/b;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/f/b;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->q0(I)V

    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j1()V

    return-void
.end method

.method public k()Lcom/android/gallery3d/filtershow/category/c;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->n:Lcom/android/gallery3d/filtershow/category/c;

    return-object v0
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/o;->c:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->H0(I)Lcom/android/gallery3d/filtershow/editors/c;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->b:Lcom/android/gallery3d/filtershow/editors/c;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/editors/c;->g(Z)V

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->c:I

    return-void
.end method

.method public n(IZ)V
    .locals 2

    new-instance v0, Lcom/android/gallery3d/filtershow/category/c;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/category/c;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->n:Lcom/android/gallery3d/filtershow/category/c;

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/o;->i:I

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/filtershow/category/c;->g(II)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/o;->n:Lcom/android/gallery3d/filtershow/category/c;

    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/o;->o(Lcom/android/gallery3d/filtershow/category/c;Z)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->c:I

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->H0(I)Lcom/android/gallery3d/filtershow/editors/c;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/o;->b:Lcom/android/gallery3d/filtershow/editors/c;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f050027

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/android/gallery3d/filtershow/editors/o;->g:I

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f050090

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/android/gallery3d/filtershow/editors/o;->h:I

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/o;->a:Landroid/widget/LinearLayout;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/o;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/o;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/o;->a:Landroid/widget/LinearLayout;

    return-object p1

    :cond_1
    const p3, 0x7f0b0035

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/editors/o;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0801f1

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/editors/o;->d:Landroid/view/View;

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/o;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f08009f

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/editors/o;->e:Landroid/view/View;

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/o;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f080075

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/o;->a:Landroid/widget/LinearLayout;

    const v2, 0x7f08002b

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/utils/b;->m(Landroid/content/Context;)Z

    move-result v2

    const v3, 0x7f080027

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/o;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/utils/RotateButton;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/o;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    :goto_0
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/editors/o;->f:Landroid/widget/Button;

    new-instance v2, Lcom/android/gallery3d/filtershow/editors/o$a;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/filtershow/editors/o$a;-><init>(Lcom/android/gallery3d/filtershow/editors/o;)V

    invoke-virtual {p3, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget p3, p0, Lcom/android/gallery3d/filtershow/editors/o;->c:I

    invoke-virtual {p2, p3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->H0(I)Lcom/android/gallery3d/filtershow/editors/c;

    move-result-object p3

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/editors/o;->b:Lcom/android/gallery3d/filtershow/editors/c;

    const/4 p3, 0x0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->p()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    instance-of v4, v2, Lcom/android/gallery3d/filtershow/filters/p;

    if-eqz v4, :cond_3

    move-object v4, v2

    check-cast v4, Lcom/android/gallery3d/filtershow/filters/p;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/p;->t0()I

    move-result v4

    const v5, 0x7f0e012b

    if-ne v4, v5, :cond_3

    move p3, v3

    :cond_3
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/o;->b:Lcom/android/gallery3d/filtershow/editors/c;

    if-eqz v4, :cond_4

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/o;->d:Landroid/view/View;

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/editors/o;->e:Landroid/view/View;

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/editors/o;->f:Landroid/widget/Button;

    invoke-virtual {v4, p3, v5, v6, v0}, Lcom/android/gallery3d/filtershow/editors/c;->H(Landroid/view/View;Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;)V

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/o;->b:Lcom/android/gallery3d/filtershow/editors/c;

    invoke-virtual {p3}, Lcom/android/gallery3d/filtershow/editors/c;->F()V

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/o;->b:Lcom/android/gallery3d/filtershow/editors/c;

    invoke-virtual {p3}, Lcom/android/gallery3d/filtershow/editors/c;->O()Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/o;->b:Lcom/android/gallery3d/filtershow/editors/c;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p3, v0}, Lcom/android/gallery3d/filtershow/editors/c;->E(Landroid/widget/LinearLayout;)V

    :cond_4
    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->D0()I

    move-result p3

    const/4 v0, 0x3

    if-ne p3, v0, :cond_5

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/o;->d:Landroid/view/View;

    check-cast p3, Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/editors/o;->q(Landroid/view/LayoutInflater;Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/widget/LinearLayout;)V

    :cond_5
    new-instance p1, Lcom/android/gallery3d/filtershow/editors/o$b;

    invoke-direct {p1, p0, p2}, Lcom/android/gallery3d/filtershow/editors/o$b;-><init>(Lcom/android/gallery3d/filtershow/editors/o;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/o;->a:Landroid/widget/LinearLayout;

    const p3, 0x7f08012e

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->D0()I

    move-result p3

    if-eqz p3, :cond_6

    if-eq p3, v3, :cond_6

    const/16 v1, 0xb

    if-eq p3, v1, :cond_6

    invoke-virtual {p0, p3, v3}, Lcom/android/gallery3d/filtershow/editors/o;->n(IZ)V

    goto :goto_1

    :cond_6
    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->P0()I

    move-result p1

    if-nez p1, :cond_7

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result p1

    if-ne p1, v0, :cond_7

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/editors/o;->t(Ljava/lang/String;)V

    :cond_7
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/o;->a:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->b:Lcom/android/gallery3d/filtershow/editors/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/c;->r()V

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    return-void
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/editors/o;->c:I

    return-void
.end method

.method public s(I)V
    .locals 4

    iput p1, p0, Lcom/android/gallery3d/filtershow/editors/o;->c:I

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->c:I

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->H0(I)Lcom/android/gallery3d/filtershow/editors/c;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/o;->b:Lcom/android/gallery3d/filtershow/editors/c;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/o;->e:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/o;->b:Lcom/android/gallery3d/filtershow/editors/c;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/o;->e:Landroid/view/View;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/o;->f:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/gallery3d/filtershow/editors/c;->H(Landroid/view/View;Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/o;->b:Lcom/android/gallery3d/filtershow/editors/c;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/c;->F()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/o;->b:Lcom/android/gallery3d/filtershow/editors/c;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/c;->O()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/o;->b:Lcom/android/gallery3d/filtershow/editors/c;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/editors/c;->E(Landroid/widget/LinearLayout;)V

    :cond_1
    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o;->f:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
