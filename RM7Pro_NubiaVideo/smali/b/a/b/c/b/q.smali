.class public Lb/a/b/c/b/q;
.super Lb/a/b/c/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/c/b/q$b;
    }
.end annotation


# instance fields
.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/a/b/c/b/r;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Lb/a/b/c/b/q$b;

.field private f:Lb/a/b/c/b/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/a/b/c/b/f;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lb/a/b/c/b/e;-><init>(Landroid/content/Context;Lb/a/b/c/b/f;)V

    .line 2
    iput p3, p0, Lb/a/b/c/b/q;->d:I

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/a/b/c/b/q;->c:Ljava/util/ArrayList;

    .line 4
    iget p1, p0, Lb/a/b/c/b/q;->d:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lb/a/b/c/b/q;->d(I)V

    :cond_0
    const-string p1, "/local/all/"

    .line 6
    invoke-static {p1}, Lb/a/b/c/b/r;->a(Ljava/lang/String;)Lb/a/b/c/b/r;

    move-result-object p1

    iput-object p1, p0, Lb/a/b/c/b/q;->f:Lb/a/b/c/b/r;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
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
    iget-object v0, p0, Lb/a/b/c/b/q;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lb/a/b/c/b/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lb/a/b/c/b/e;->b:Lb/a/b/c/b/f;

    .line 3
    invoke-virtual {v0}, Lb/a/b/c/b/f;->B()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lb/a/b/c/b/e;->b:Lb/a/b/c/b/f;

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
    iget-object v2, p0, Lb/a/b/c/b/q;->f:Lb/a/b/c/b/r;

    invoke-virtual {v2, v1}, Lb/a/b/c/b/r;->b(I)Lb/a/b/c/b/r;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lb/a/b/c/b/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 11
    :cond_1
    iget-object v0, p0, Lb/a/b/c/b/q;->e:Lb/a/b/c/b/q$b;

    if-eqz v0, :cond_2

    .line 12
    iget-object v1, p0, Lb/a/b/c/b/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lb/a/b/c/b/q$b;->a(I)V

    :cond_2
    return-void
.end method

.method public c(Lb/a/b/c/b/q$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/q;->e:Lb/a/b/c/b/q$b;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lb/a/b/c/b/q;->e:Lb/a/b/c/b/q$b;

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/e;->b:Lb/a/b/c/b/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lb/a/b/c/b/f;->x(I)Lb/a/b/c/b/m;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lb/a/b/c/b/e;->b:Lb/a/b/c/b/f;

    invoke-virtual {v0, p1}, Lb/a/b/c/b/f;->x(I)Lb/a/b/c/b/m;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/b/c/b/m;->o()Lb/a/b/c/b/r;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lb/a/b/c/b/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lb/a/b/c/b/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lb/a/b/c/b/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :goto_0
    iget-object p1, p0, Lb/a/b/c/b/q;->e:Lb/a/b/c/b/q$b;

    if-eqz p1, :cond_1

    .line 7
    iget-object v0, p0, Lb/a/b/c/b/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p1, v0}, Lb/a/b/c/b/q$b;->a(I)V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lb/a/b/c/b/q;->e:Lb/a/b/c/b/q$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Lb/a/b/c/b/q$b;->a(I)V

    :cond_0
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0034

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f090097

    .line 2
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v1, 0x7f090096

    .line 3
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090094

    .line 4
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f090047

    .line 5
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 6
    new-instance v4, Lb/a/b/c/b/q$a;

    invoke-direct {v4, p0, p1}, Lb/a/b/c/b/q$a;-><init>(Lb/a/b/c/b/q;I)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {p0, p1}, Lb/a/b/c/b/q;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/a/b/c/b/m;

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {v4}, Lb/a/b/c/b/m;->o()Lb/a/b/c/b/r;

    move-result-object v6

    .line 9
    iget-object v7, p0, Lb/a/b/c/b/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 10
    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 12
    :goto_0
    invoke-virtual {v4}, Lb/a/b/c/b/m;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p3, p0, Lb/a/b/c/b/e;->a:Landroid/content/Context;

    invoke-virtual {v4}, Lb/a/b/c/b/m;->m()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {p3, v0}, Lb/a/b/d/e;->i(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_2
    iget-object p3, p0, Lb/a/b/c/b/e;->b:Lb/a/b/c/b/f;

    invoke-virtual {p3, v5, p1, v2}, Lb/a/b/c/b/f;->D(IILandroid/widget/ImageView;)V

    return-object p2
.end method
