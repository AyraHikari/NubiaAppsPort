.class public Lc/b/a/n/k/e/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/i/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/n/i/k<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Lc/b/a/n/i/m/c;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lc/b/a/n/i/m/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Bitmap must not be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "BitmapPool must not be null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lc/b/a/n/k/e/c;->a:Landroid/graphics/Bitmap;

    .line 5
    iput-object p2, p0, Lc/b/a/n/k/e/c;->b:Lc/b/a/n/i/m/c;

    return-void
.end method

.method public static c(Landroid/graphics/Bitmap;Lc/b/a/n/i/m/c;)Lc/b/a/n/k/e/c;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lc/b/a/n/k/e/c;

    invoke-direct {v0, p0, p1}, Lc/b/a/n/k/e/c;-><init>(Landroid/graphics/Bitmap;Lc/b/a/n/i/m/c;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/e/c;->b:Lc/b/a/n/i/m/c;

    iget-object v1, p0, Lc/b/a/n/k/e/c;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lc/b/a/n/i/m/c;->c(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/b/a/n/k/e/c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/e/c;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b/a/n/k/e/c;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/e/c;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lc/b/a/t/h;->e(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
