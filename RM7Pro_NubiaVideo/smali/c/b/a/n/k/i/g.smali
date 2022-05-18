.class public Lc/b/a/n/k/i/g;
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
        "Lc/b/a/n/k/i/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/b/a/n/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/e<",
            "Ljava/io/File;",
            "Lc/b/a/n/k/i/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lc/b/a/n/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/e<",
            "Lc/b/a/n/j/g;",
            "Lc/b/a/n/k/i/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lc/b/a/n/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/f<",
            "Lc/b/a/n/k/i/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lc/b/a/n/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/b<",
            "Lc/b/a/n/j/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/b/a/q/b;Lc/b/a/q/b;Lc/b/a/n/i/m/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/q/b<",
            "Lc/b/a/n/j/g;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lc/b/a/q/b<",
            "Ljava/io/InputStream;",
            "Lc/b/a/n/k/h/b;",
            ">;",
            "Lc/b/a/n/i/m/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/b/a/n/k/i/c;

    invoke-interface {p1}, Lc/b/a/q/b;->f()Lc/b/a/n/e;

    move-result-object v1

    invoke-interface {p2}, Lc/b/a/q/b;->f()Lc/b/a/n/e;

    move-result-object v2

    invoke-direct {v0, v1, v2, p3}, Lc/b/a/n/k/i/c;-><init>(Lc/b/a/n/e;Lc/b/a/n/e;Lc/b/a/n/i/m/c;)V

    .line 3
    new-instance p3, Lc/b/a/n/k/g/c;

    new-instance v1, Lc/b/a/n/k/i/e;

    invoke-direct {v1, v0}, Lc/b/a/n/k/i/e;-><init>(Lc/b/a/n/e;)V

    invoke-direct {p3, v1}, Lc/b/a/n/k/g/c;-><init>(Lc/b/a/n/e;)V

    iput-object p3, p0, Lc/b/a/n/k/i/g;->a:Lc/b/a/n/e;

    .line 4
    iput-object v0, p0, Lc/b/a/n/k/i/g;->b:Lc/b/a/n/e;

    .line 5
    new-instance p3, Lc/b/a/n/k/i/d;

    invoke-interface {p1}, Lc/b/a/q/b;->c()Lc/b/a/n/f;

    move-result-object v0

    invoke-interface {p2}, Lc/b/a/q/b;->c()Lc/b/a/n/f;

    move-result-object p2

    invoke-direct {p3, v0, p2}, Lc/b/a/n/k/i/d;-><init>(Lc/b/a/n/f;Lc/b/a/n/f;)V

    iput-object p3, p0, Lc/b/a/n/k/i/g;->c:Lc/b/a/n/f;

    .line 6
    invoke-interface {p1}, Lc/b/a/q/b;->d()Lc/b/a/n/b;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/n/k/i/g;->d:Lc/b/a/n/b;

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
            "Lc/b/a/n/k/i/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/i/g;->a:Lc/b/a/n/e;

    return-object v0
.end method

.method public c()Lc/b/a/n/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/f<",
            "Lc/b/a/n/k/i/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/i/g;->c:Lc/b/a/n/f;

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
    iget-object v0, p0, Lc/b/a/n/k/i/g;->d:Lc/b/a/n/b;

    return-object v0
.end method

.method public f()Lc/b/a/n/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/e<",
            "Lc/b/a/n/j/g;",
            "Lc/b/a/n/k/i/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/i/g;->b:Lc/b/a/n/e;

    return-object v0
.end method
