.class public Lb/a/b/c/b/h;
.super Lb/a/b/c/b/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/a/b/c/b/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lb/a/b/c/b/a;-><init>(Landroid/content/Context;Lb/a/b/c/b/f;)V

    return-void
.end method

.method private v(Lcn/nubia/video/list/ui/a;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->N()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->N()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lb/a/b/c/b/h$a;

    invoke-direct {v0, p0, p2}, Lb/a/b/c/b/h$a;-><init>(Lb/a/b/c/b/h;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public e(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/a/b/c/b/a;->c()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    return v1
.end method

.method public bridge synthetic i(Landroid/support/v7/widget/RecyclerView$z;I)V
    .locals 0

    .line 1
    check-cast p1, Lcn/nubia/video/list/ui/a;

    invoke-virtual {p0, p1, p2}, Lb/a/b/c/b/h;->t(Lcn/nubia/video/list/ui/a;I)V

    return-void
.end method

.method public bridge synthetic j(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$z;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lb/a/b/c/b/h;->u(Landroid/view/ViewGroup;I)Lcn/nubia/video/list/ui/a;

    move-result-object p1

    return-object p1
.end method

.method public t(Lcn/nubia/video/list/ui/a;I)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/a;->c:Lb/a/b/c/b/f;

    invoke-virtual {v0, p2}, Lb/a/b/c/b/f;->x(I)Lb/a/b/c/b/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->R()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->R()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lb/a/b/c/b/m;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->Q()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->Q()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lb/a/b/c/b/a;->f:Landroid/content/Context;

    .line 6
    invoke-virtual {v0}, Lb/a/b/c/b/m;->m()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 7
    invoke-static {v2, v0}, Lb/a/b/d/e;->i(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->P()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lb/a/b/c/b/a;->c:Lb/a/b/c/b/f;

    const/4 v1, 0x3

    .line 10
    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->P()Landroid/widget/ImageView;

    move-result-object v2

    .line 11
    invoke-virtual {v0, v1, p2, v2}, Lb/a/b/c/b/f;->D(IILandroid/widget/ImageView;)V

    .line 12
    :cond_2
    invoke-direct {p0, p1, p2}, Lb/a/b/c/b/h;->v(Lcn/nubia/video/list/ui/a;I)V

    :cond_3
    return-void
.end method

.method public u(Landroid/view/ViewGroup;I)Lcn/nubia/video/list/ui/a;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0c0025

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0c0024

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 3
    :goto_0
    new-instance p2, Lcn/nubia/video/list/ui/a;

    invoke-direct {p2, p1}, Lcn/nubia/video/list/ui/a;-><init>(Landroid/view/View;)V

    return-object p2
.end method
