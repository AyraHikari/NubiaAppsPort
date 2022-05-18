.class public Lc/b/a/n/k/e/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/q/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/q/b<",
        "Lc/b/a/n/j/g;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/b/a/n/k/e/m;

.field private final b:Lc/b/a/n/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/e<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lc/b/a/n/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/f<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lc/b/a/n/j/h;


# direct methods
.method public constructor <init>(Lc/b/a/q/b;Lc/b/a/q/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/q/b<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lc/b/a/q/b<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Lc/b/a/q/b;->c()Lc/b/a/n/f;

    move-result-object v0

    iput-object v0, p0, Lc/b/a/n/k/e/n;->c:Lc/b/a/n/f;

    .line 3
    new-instance v0, Lc/b/a/n/j/h;

    invoke-interface {p1}, Lc/b/a/q/b;->d()Lc/b/a/n/b;

    move-result-object v1

    invoke-interface {p2}, Lc/b/a/q/b;->d()Lc/b/a/n/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc/b/a/n/j/h;-><init>(Lc/b/a/n/b;Lc/b/a/n/b;)V

    iput-object v0, p0, Lc/b/a/n/k/e/n;->d:Lc/b/a/n/j/h;

    .line 4
    invoke-interface {p1}, Lc/b/a/q/b;->a()Lc/b/a/n/e;

    move-result-object v0

    iput-object v0, p0, Lc/b/a/n/k/e/n;->b:Lc/b/a/n/e;

    .line 5
    new-instance v0, Lc/b/a/n/k/e/m;

    invoke-interface {p1}, Lc/b/a/q/b;->f()Lc/b/a/n/e;

    move-result-object p1

    invoke-interface {p2}, Lc/b/a/q/b;->f()Lc/b/a/n/e;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lc/b/a/n/k/e/m;-><init>(Lc/b/a/n/e;Lc/b/a/n/e;)V

    iput-object v0, p0, Lc/b/a/n/k/e/n;->a:Lc/b/a/n/k/e/m;

    return-void
.end method


# virtual methods
.method public a()Lc/b/a/n/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/e<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/e/n;->b:Lc/b/a/n/e;

    return-object v0
.end method

.method public c()Lc/b/a/n/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/f<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/e/n;->c:Lc/b/a/n/f;

    return-object v0
.end method

.method public d()Lc/b/a/n/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/b<",
            "Lc/b/a/n/j/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/e/n;->d:Lc/b/a/n/j/h;

    return-object v0
.end method

.method public f()Lc/b/a/n/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/e<",
            "Lc/b/a/n/j/g;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/e/n;->a:Lc/b/a/n/k/e/m;

    return-object v0
.end method
