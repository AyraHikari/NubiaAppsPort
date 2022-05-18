.class public Lc/b/a/n/k/e/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/q/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/q/b<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/b/a/n/k/e/q;

.field private final b:Lc/b/a/n/k/e/b;

.field private final c:Lc/b/a/n/j/o;

.field private final d:Lc/b/a/n/k/g/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/k/g/c<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/b/a/n/i/m/c;Lc/b/a/n/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/b/a/n/j/o;

    invoke-direct {v0}, Lc/b/a/n/j/o;-><init>()V

    iput-object v0, p0, Lc/b/a/n/k/e/p;->c:Lc/b/a/n/j/o;

    .line 3
    new-instance v0, Lc/b/a/n/k/e/q;

    invoke-direct {v0, p1, p2}, Lc/b/a/n/k/e/q;-><init>(Lc/b/a/n/i/m/c;Lc/b/a/n/a;)V

    iput-object v0, p0, Lc/b/a/n/k/e/p;->a:Lc/b/a/n/k/e/q;

    .line 4
    new-instance p1, Lc/b/a/n/k/e/b;

    invoke-direct {p1}, Lc/b/a/n/k/e/b;-><init>()V

    iput-object p1, p0, Lc/b/a/n/k/e/p;->b:Lc/b/a/n/k/e/b;

    .line 5
    new-instance p1, Lc/b/a/n/k/g/c;

    invoke-direct {p1, v0}, Lc/b/a/n/k/g/c;-><init>(Lc/b/a/n/e;)V

    iput-object p1, p0, Lc/b/a/n/k/e/p;->d:Lc/b/a/n/k/g/c;

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
    iget-object v0, p0, Lc/b/a/n/k/e/p;->d:Lc/b/a/n/k/g/c;

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
    iget-object v0, p0, Lc/b/a/n/k/e/p;->b:Lc/b/a/n/k/e/b;

    return-object v0
.end method

.method public d()Lc/b/a/n/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/b<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/e/p;->c:Lc/b/a/n/j/o;

    return-object v0
.end method

.method public f()Lc/b/a/n/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/e<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/e/p;->a:Lc/b/a/n/k/e/q;

    return-object v0
.end method
