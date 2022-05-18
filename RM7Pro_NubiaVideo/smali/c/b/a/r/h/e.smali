.class public abstract Lc/b/a/r/h/e;
.super Lc/b/a/r/h/k;
.source "SourceFile"

# interfaces
.implements Lc/b/a/r/g/c$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lc/b/a/r/h/k<",
        "Landroid/widget/ImageView;",
        "TZ;>;",
        "Lc/b/a/r/g/c$a;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/b/a/r/h/k;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lc/b/a/r/g/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lc/b/a/r/g/c<",
            "-TZ;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p2, p1, p0}, Lc/b/a/r/g/c;->a(Ljava/lang/Object;Lc/b/a/r/g/c$a;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lc/b/a/r/h/e;->p(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/r/h/k;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public d()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/r/h/k;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lc/b/a/r/h/k;->b:Landroid/view/View;

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public f(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/r/h/k;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public i(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/r/h/k;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected abstract p(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation
.end method
