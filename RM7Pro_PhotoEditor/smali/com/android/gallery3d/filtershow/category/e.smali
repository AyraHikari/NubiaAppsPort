.class public Lcom/android/gallery3d/filtershow/category/e;
.super Landroid/support/v4/app/Fragment;
.source ""


# static fields
.field public static o:J


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/HorizontalScrollView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/Button;

.field private m:I

.field private n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/category/e;->m:I

    new-instance v0, Lcom/android/gallery3d/filtershow/category/e$b;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/category/e$b;-><init>(Lcom/android/gallery3d/filtershow/category/e;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/category/e;->n:Ljava/lang/Runnable;

    return-void
.end method

.method public static b()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/gallery3d/filtershow/category/e;->o:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    sput-wide v0, Lcom/android/gallery3d/filtershow/category/e;->o:J

    return v2
.end method

.method private c(I)Z
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/e;->m:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private q(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p2, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O1(I)V

    :cond_0
    return-void
.end method

.method private r(Lcom/android/gallery3d/filtershow/category/c;Z)V
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

    const p2, 0x7f08007f

    const-string v1, "CategoryPanel"

    invoke-virtual {v0, p2, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/e;->m:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput v1, p0, Lcom/android/gallery3d/filtershow/category/e;->m:I

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/filtershow/category/e;->q(IZ)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->u1(Z)V

    return-void
.end method

.method public e()V
    .locals 2

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/e;->m:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput v1, p0, Lcom/android/gallery3d/filtershow/category/e;->m:I

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/filtershow/category/e;->q(IZ)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->u1(Z)V

    return-void
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/category/e;->m:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/category/e;->q(IZ)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c2()V

    return-void
.end method

.method public g()V
    .locals 2

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/e;->m:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput v1, p0, Lcom/android/gallery3d/filtershow/category/e;->m:I

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/filtershow/category/e;->q(IZ)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->s1()V

    return-void
.end method

.method public h()V
    .locals 2

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/e;->m:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput v1, p0, Lcom/android/gallery3d/filtershow/category/e;->m:I

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/filtershow/category/e;->q(IZ)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->u1(Z)V

    return-void
.end method

.method public i()V
    .locals 4

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/e;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->e0()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/category/e;->c(I)Z

    move-result v0

    iget v2, p0, Lcom/android/gallery3d/filtershow/category/e;->m:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/gallery3d/filtershow/category/e;->q(IZ)V

    new-instance v2, Lcom/android/gallery3d/filtershow/category/c;

    invoke-direct {v2}, Lcom/android/gallery3d/filtershow/category/c;-><init>()V

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/category/c;->f(I)V

    invoke-direct {p0, v2, v0}, Lcom/android/gallery3d/filtershow/category/e;->r(Lcom/android/gallery3d/filtershow/category/c;Z)V

    iput v1, p0, Lcom/android/gallery3d/filtershow/category/e;->m:I

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/filtershow/category/e;->q(IZ)V

    return-void
.end method

.method public j(Z)V
    .locals 1

    const/4 v0, 0x3

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/gallery3d/filtershow/category/e;->m:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/android/gallery3d/filtershow/category/e;->m:I

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/filtershow/category/e;->q(IZ)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->u1(Z)V

    return-void
.end method

.method public k()V
    .locals 2

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/e;->m:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput v1, p0, Lcom/android/gallery3d/filtershow/category/e;->m:I

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/filtershow/category/e;->q(IZ)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->w1()V

    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/category/e;->m:I

    invoke-direct {p0, v0, v0}, Lcom/android/gallery3d/filtershow/category/e;->q(IZ)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->k2()V

    return-void
.end method

.method public m()V
    .locals 2

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/e;->m:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput v1, p0, Lcom/android/gallery3d/filtershow/category/e;->m:I

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/filtershow/category/e;->q(IZ)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->x1()V

    return-void
.end method

.method public n()V
    .locals 5

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/e;->m:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->t2()V

    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/category/e;->c(I)Z

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/filtershow/category/e;->m:I

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/gallery3d/filtershow/category/e;->q(IZ)V

    new-instance v3, Lcom/android/gallery3d/filtershow/category/c;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/category/c;-><init>()V

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/filtershow/category/c;->f(I)V

    invoke-direct {p0, v3, v2}, Lcom/android/gallery3d/filtershow/category/e;->r(Lcom/android/gallery3d/filtershow/category/c;Z)V

    iput v1, p0, Lcom/android/gallery3d/filtershow/category/e;->m:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/filtershow/category/e;->q(IZ)V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->x1()V

    return-void
.end method

.method public o()V
    .locals 2

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/e;->m:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput v1, p0, Lcom/android/gallery3d/filtershow/category/e;->m:I

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/filtershow/category/e;->q(IZ)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->y1()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p2, "MainPanel"

    const-string p3, "onCreateView"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p3, 0x7f0b0048

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->a:Landroid/widget/LinearLayout;

    const p3, 0x7f0800c9

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->c:Landroid/widget/Button;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->a:Landroid/widget/LinearLayout;

    const p3, 0x7f080210

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->d:Landroid/widget/Button;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->a:Landroid/widget/LinearLayout;

    const p3, 0x7f080019

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->f:Landroid/widget/Button;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->a:Landroid/widget/LinearLayout;

    const p3, 0x7f08014a

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->e:Landroid/widget/Button;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->a:Landroid/widget/LinearLayout;

    const p3, 0x7f08003f

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->g:Landroid/widget/Button;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->a:Landroid/widget/LinearLayout;

    const p3, 0x7f080291

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->h:Landroid/widget/Button;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->a:Landroid/widget/LinearLayout;

    const p3, 0x7f080037

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->i:Landroid/widget/Button;

    invoke-static {}, Lcom/android/gallery3d/filtershow/utils/b;->q()Z

    move-result p1

    const/16 p3, 0x8

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->q1()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->i:Landroid/widget/Button;

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->i:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f080258

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->j:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lc/e/b;->a(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " MainPanel oncreateView isInterUI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/e;->j:Landroid/widget/Button;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->j:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->a:Landroid/widget/LinearLayout;

    const p2, 0x7f0801cf

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->k:Landroid/widget/Button;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->a:Landroid/widget/LinearLayout;

    const p2, 0x7f0800e6

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->l:Landroid/widget/Button;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->c:Landroid/widget/Button;

    if-eqz p1, :cond_3

    new-instance p2, Lcom/android/gallery3d/filtershow/category/e$c;

    invoke-direct {p2, p0}, Lcom/android/gallery3d/filtershow/category/e$c;-><init>(Lcom/android/gallery3d/filtershow/category/e;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->d:Landroid/widget/Button;

    if-eqz p1, :cond_4

    new-instance p2, Lcom/android/gallery3d/filtershow/category/e$d;

    invoke-direct {p2, p0}, Lcom/android/gallery3d/filtershow/category/e$d;-><init>(Lcom/android/gallery3d/filtershow/category/e;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->f:Landroid/widget/Button;

    if-eqz p1, :cond_5

    new-instance p2, Lcom/android/gallery3d/filtershow/category/e$e;

    invoke-direct {p2, p0}, Lcom/android/gallery3d/filtershow/category/e$e;-><init>(Lcom/android/gallery3d/filtershow/category/e;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->e:Landroid/widget/Button;

    if-eqz p1, :cond_6

    new-instance p2, Lcom/android/gallery3d/filtershow/category/e$f;

    invoke-direct {p2, p0}, Lcom/android/gallery3d/filtershow/category/e$f;-><init>(Lcom/android/gallery3d/filtershow/category/e;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->g:Landroid/widget/Button;

    if-eqz p1, :cond_7

    new-instance p2, Lcom/android/gallery3d/filtershow/category/e$g;

    invoke-direct {p2, p0}, Lcom/android/gallery3d/filtershow/category/e$g;-><init>(Lcom/android/gallery3d/filtershow/category/e;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->h:Landroid/widget/Button;

    if-eqz p1, :cond_8

    new-instance p2, Lcom/android/gallery3d/filtershow/category/e$h;

    invoke-direct {p2, p0}, Lcom/android/gallery3d/filtershow/category/e$h;-><init>(Lcom/android/gallery3d/filtershow/category/e;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->i:Landroid/widget/Button;

    if-eqz p1, :cond_9

    new-instance p2, Lcom/android/gallery3d/filtershow/category/e$i;

    invoke-direct {p2, p0}, Lcom/android/gallery3d/filtershow/category/e$i;-><init>(Lcom/android/gallery3d/filtershow/category/e;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->j:Landroid/widget/Button;

    if-eqz p1, :cond_a

    new-instance p2, Lcom/android/gallery3d/filtershow/category/e$j;

    invoke-direct {p2, p0}, Lcom/android/gallery3d/filtershow/category/e$j;-><init>(Lcom/android/gallery3d/filtershow/category/e;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->k:Landroid/widget/Button;

    if-eqz p1, :cond_b

    new-instance p2, Lcom/android/gallery3d/filtershow/category/e$k;

    invoke-direct {p2, p0}, Lcom/android/gallery3d/filtershow/category/e$k;-><init>(Lcom/android/gallery3d/filtershow/category/e;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->l:Landroid/widget/Button;

    if-eqz p1, :cond_c

    new-instance p2, Lcom/android/gallery3d/filtershow/category/e$a;

    invoke-direct {p2, p0}, Lcom/android/gallery3d/filtershow/category/e$a;-><init>(Lcom/android/gallery3d/filtershow/category/e;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/e;->n:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/e;->a:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "MainPanel"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/e;->a:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/e;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/e;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/e;->b:Landroid/widget/HorizontalScrollView;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->S0()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/category/e;->m:I

    return-void
.end method

.method public t(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->m0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mainpanel showPanel currentPanel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/e;->g()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/e;->k()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/e;->m()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/e;->n()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/e;->o()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/e;->e()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/e;->d()V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/e;->h()V

    goto :goto_0

    :pswitch_8
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/category/e;->j(Z)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/e;->i()V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/e;->l()V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/e;->f()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
