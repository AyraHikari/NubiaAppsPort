.class public Lc/d/a/b/n/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/n/a;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Lc/d/a/b/j/e;

.field protected final c:Lc/d/a/b/j/h;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lc/d/a/b/j/e;Lc/d/a/b/j/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, Lc/d/a/b/n/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lc/d/a/b/n/b;->b:Lc/d/a/b/j/e;

    iput-object p3, p0, Lc/d/a/b/n/b;->c:Lc/d/a/b/j/h;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "scaleType must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "imageSize must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lc/d/a/b/n/b;->b:Lc/d/a/b/j/e;

    invoke-virtual {v0}, Lc/d/a/b/j/e;->b()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lc/d/a/b/n/b;->b:Lc/d/a/b/j/e;

    invoke-virtual {v0}, Lc/d/a/b/j/e;->a()I

    move-result v0

    return v0
.end method

.method public e()Lc/d/a/b/j/h;
    .locals 1

    iget-object v0, p0, Lc/d/a/b/n/b;->c:Lc/d/a/b/j/h;

    return-object v0
.end method

.method public f()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g(Landroid/graphics/Bitmap;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getId()I
    .locals 1

    iget-object v0, p0, Lc/d/a/b/n/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/d/a/b/n/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method
