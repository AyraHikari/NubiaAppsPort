.class public Lcn/nubia/video/list/ui/a;
.super Landroid/support/v7/widget/RecyclerView$z;
.source "SourceFile"


# instance fields
.field private l:Lb/a/b/c/b/a$a;

.field private m:Lb/a/b/c/b/a$b;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private t:Landroid/widget/CheckBox;

.field private u:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$z;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcn/nubia/video/list/ui/a;->n:Landroid/view/View;

    const v0, 0x7f090094

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/video/list/ui/a;->o:Landroid/widget/ImageView;

    const v0, 0x7f090097

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/video/list/ui/a;->p:Landroid/widget/TextView;

    const v0, 0x7f090096

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/video/list/ui/a;->q:Landroid/widget/TextView;

    const v0, 0x7f09009e

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/list/ui/a;->r:Landroid/view/View;

    const v0, 0x7f090095

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/list/ui/a;->s:Landroid/view/View;

    const v0, 0x7f090047

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcn/nubia/video/list/ui/a;->t:Landroid/widget/CheckBox;

    const v0, 0x7f090115

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/list/ui/a;->u:Landroid/view/View;

    return-void
.end method

.method static synthetic I(Lcn/nubia/video/list/ui/a;)Lb/a/b/c/b/a$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/list/ui/a;->l:Lb/a/b/c/b/a$a;

    return-object p0
.end method

.method static synthetic J(Lcn/nubia/video/list/ui/a;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/list/ui/a;->n:Landroid/view/View;

    return-object p0
.end method

.method static synthetic K(Lcn/nubia/video/list/ui/a;)Lb/a/b/c/b/a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/list/ui/a;->m:Lb/a/b/c/b/a$b;

    return-object p0
.end method


# virtual methods
.method public L()Landroid/widget/CheckBox;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/a;->t:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public M()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/a;->u:Landroid/view/View;

    return-object v0
.end method

.method public N()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/a;->s:Landroid/view/View;

    return-object v0
.end method

.method public O()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/a;->r:Landroid/view/View;

    return-object v0
.end method

.method public P()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/a;->o:Landroid/widget/ImageView;

    return-object v0
.end method

.method public Q()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/a;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method public R()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/a;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method public S(Lb/a/b/c/b/a$a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/nubia/video/list/ui/a;->l:Lb/a/b/c/b/a$a;

    .line 2
    iget-object v0, p0, Lcn/nubia/video/list/ui/a;->o:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcn/nubia/video/list/ui/a$a;

    invoke-direct {p1, p0}, Lcn/nubia/video/list/ui/a$a;-><init>(Lcn/nubia/video/list/ui/a;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public T(Lb/a/b/c/b/a$b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/nubia/video/list/ui/a;->m:Lb/a/b/c/b/a$b;

    .line 2
    iget-object v0, p0, Lcn/nubia/video/list/ui/a;->o:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcn/nubia/video/list/ui/a$b;

    invoke-direct {p1, p0}, Lcn/nubia/video/list/ui/a$b;-><init>(Lcn/nubia/video/list/ui/a;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void
.end method
