.class public Lc/b/a/n/k/e/k;
.super Lc/b/a/n/k/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/b/a/n/k/f/a<",
        "Lc/b/a/n/k/e/j;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lc/b/a/n/i/m/c;


# direct methods
.method public constructor <init>(Lc/b/a/n/k/e/j;Lc/b/a/n/i/m/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/b/a/n/k/f/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iput-object p2, p0, Lc/b/a/n/k/e/k;->b:Lc/b/a/n/i/m/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/e/k;->b:Lc/b/a/n/i/m/c;

    iget-object v1, p0, Lc/b/a/n/k/f/a;->a:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lc/b/a/n/k/e/j;

    invoke-virtual {v1}, Lc/b/a/n/k/e/j;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/b/a/n/i/m/c;->c(Landroid/graphics/Bitmap;)Z

    return-void
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/f/a;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lc/b/a/n/k/e/j;

    invoke-virtual {v0}, Lc/b/a/n/k/e/j;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lc/b/a/t/h;->e(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
