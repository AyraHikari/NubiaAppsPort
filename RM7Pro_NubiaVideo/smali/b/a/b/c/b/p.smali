.class public Lb/a/b/c/b/p;
.super Lb/a/b/c/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/c/b/p$b;
    }
.end annotation


# instance fields
.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/a/b/c/b/r;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Lb/a/b/c/b/p$b;

.field private j:Lb/a/b/c/b/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/a/b/c/b/f;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lb/a/b/c/b/a;-><init>(Landroid/content/Context;Lb/a/b/c/b/f;)V

    .line 2
    iput p3, p0, Lb/a/b/c/b/p;->h:I

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/a/b/c/b/p;->g:Ljava/util/ArrayList;

    .line 4
    iget p1, p0, Lb/a/b/c/b/p;->h:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lb/a/b/c/b/p;->z(I)V

    :cond_0
    const-string p1, "/local/all/"

    .line 6
    invoke-static {p1}, Lb/a/b/c/b/r;->a(Ljava/lang/String;)Lb/a/b/c/b/r;

    move-result-object p1

    iput-object p1, p0, Lb/a/b/c/b/p;->j:Lb/a/b/c/b/r;

    return-void
.end method

.method private x(Lcn/nubia/video/list/ui/a;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->L()Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->M()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->L()Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lb/a/b/c/b/p$a;

    invoke-direct {v1, p0, p2, p1}, Lb/a/b/c/b/p$a;-><init>(Lb/a/b/c/b/p;ILcn/nubia/video/list/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lb/a/b/c/b/a;->c:Lb/a/b/c/b/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lb/a/b/c/b/f;->x(I)Lb/a/b/c/b/m;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lb/a/b/c/b/a;->c:Lb/a/b/c/b/f;

    invoke-virtual {v0, p2}, Lb/a/b/c/b/f;->x(I)Lb/a/b/c/b/m;

    move-result-object p2

    invoke-virtual {p2}, Lb/a/b/c/b/m;->o()Lb/a/b/c/b/r;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lb/a/b/c/b/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->L()Landroid/widget/CheckBox;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 7
    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->M()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f060057

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->L()Landroid/widget/CheckBox;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 9
    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->M()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lb/a/b/c/b/p;->i:Lb/a/b/c/b/p$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Lb/a/b/c/b/p$b;->a(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic i(Landroid/support/v7/widget/RecyclerView$z;I)V
    .locals 0

    .line 1
    check-cast p1, Lcn/nubia/video/list/ui/a;

    invoke-virtual {p0, p1, p2}, Lb/a/b/c/b/p;->u(Lcn/nubia/video/list/ui/a;I)V

    return-void
.end method

.method public bridge synthetic j(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$z;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lb/a/b/c/b/p;->v(Landroid/view/ViewGroup;I)Lcn/nubia/video/list/ui/a;

    move-result-object p1

    return-object p1
.end method

.method public t()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lb/a/b/c/b/r;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/p;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public u(Lcn/nubia/video/list/ui/a;I)V
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

    invoke-static {v2, v0}, Lb/a/b/d/e;->i(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->P()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lb/a/b/c/b/a;->c:Lb/a/b/c/b/f;

    const/4 v1, 0x2

    .line 10
    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->P()Landroid/widget/ImageView;

    move-result-object v2

    .line 11
    invoke-virtual {v0, v1, p2, v2}, Lb/a/b/c/b/f;->D(IILandroid/widget/ImageView;)V

    .line 12
    :cond_2
    iget-object v0, p0, Lb/a/b/c/b/a;->d:Lb/a/b/c/b/a$a;

    invoke-virtual {p1, v0}, Lcn/nubia/video/list/ui/a;->S(Lb/a/b/c/b/a$a;)V

    .line 13
    invoke-direct {p0, p1, p2}, Lb/a/b/c/b/p;->x(Lcn/nubia/video/list/ui/a;I)V

    :cond_3
    return-void
.end method

.method public v(Landroid/view/ViewGroup;I)Lcn/nubia/video/list/ui/a;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0c0032

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcn/nubia/video/list/ui/a;

    invoke-direct {p2, p1}, Lcn/nubia/video/list/ui/a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public w()V
    .locals 7

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lb/a/b/c/b/a;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lb/a/b/c/b/a;->c:Lb/a/b/c/b/f;

    .line 3
    invoke-virtual {v0}, Lb/a/b/c/b/f;->B()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lb/a/b/c/b/a;->c:Lb/a/b/c/b/f;

    .line 4
    invoke-virtual {v0}, Lb/a/b/c/b/f;->A()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    .line 5
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 7
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 8
    iget-object v2, p0, Lb/a/b/c/b/p;->j:Lb/a/b/c/b/r;

    invoke-virtual {v2, v1}, Lb/a/b/c/b/r;->b(I)Lb/a/b/c/b/r;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lb/a/b/c/b/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 11
    :cond_1
    iget-object v0, p0, Lb/a/b/c/b/p;->i:Lb/a/b/c/b/p$b;

    if-eqz v0, :cond_2

    .line 12
    iget-object v1, p0, Lb/a/b/c/b/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lb/a/b/c/b/p$b;->a(I)V

    :cond_2
    return-void
.end method

.method public y(Lb/a/b/c/b/p$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/p;->i:Lb/a/b/c/b/p$b;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lb/a/b/c/b/p;->i:Lb/a/b/c/b/p$b;

    :cond_0
    return-void
.end method

.method public z(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/a;->c:Lb/a/b/c/b/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lb/a/b/c/b/f;->x(I)Lb/a/b/c/b/m;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lb/a/b/c/b/a;->c:Lb/a/b/c/b/f;

    invoke-virtual {v0, p1}, Lb/a/b/c/b/f;->x(I)Lb/a/b/c/b/m;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/b/c/b/m;->o()Lb/a/b/c/b/r;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lb/a/b/c/b/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lb/a/b/c/b/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lb/a/b/c/b/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :goto_0
    iget-object p1, p0, Lb/a/b/c/b/p;->i:Lb/a/b/c/b/p$b;

    if-eqz p1, :cond_1

    .line 7
    iget-object v0, p0, Lb/a/b/c/b/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p1, v0}, Lb/a/b/c/b/p$b;->a(I)V

    :cond_1
    return-void
.end method
