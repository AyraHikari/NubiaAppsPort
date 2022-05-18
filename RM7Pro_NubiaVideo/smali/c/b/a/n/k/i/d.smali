.class public Lc/b/a/n/k/i/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/n/f<",
        "Lc/b/a/n/k/i/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/b/a/n/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/f<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lc/b/a/n/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/f<",
            "Lc/b/a/n/k/h/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc/b/a/n/f;Lc/b/a/n/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/f<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lc/b/a/n/f<",
            "Lc/b/a/n/k/h/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/n/k/i/d;->a:Lc/b/a/n/f;

    .line 3
    iput-object p2, p0, Lc/b/a/n/k/i/d;->b:Lc/b/a/n/f;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 0

    .line 1
    check-cast p1, Lc/b/a/n/i/k;

    invoke-virtual {p0, p1, p2}, Lc/b/a/n/k/i/d;->b(Lc/b/a/n/i/k;Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method

.method public b(Lc/b/a/n/i/k;Ljava/io/OutputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/i/k<",
            "Lc/b/a/n/k/i/a;",
            ">;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lc/b/a/n/i/k;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/a/n/k/i/a;

    .line 2
    invoke-virtual {p1}, Lc/b/a/n/k/i/a;->a()Lc/b/a/n/i/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lc/b/a/n/k/i/d;->a:Lc/b/a/n/f;

    invoke-interface {p1, v0, p2}, Lc/b/a/n/b;->a(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lc/b/a/n/k/i/d;->b:Lc/b/a/n/f;

    invoke-virtual {p1}, Lc/b/a/n/k/i/a;->b()Lc/b/a/n/i/k;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lc/b/a/n/b;->a(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/i/d;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc/b/a/n/k/i/d;->a:Lc/b/a/n/f;

    invoke-interface {v1}, Lc/b/a/n/b;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/b/a/n/k/i/d;->b:Lc/b/a/n/f;

    invoke-interface {v1}, Lc/b/a/n/b;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/a/n/k/i/d;->c:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lc/b/a/n/k/i/d;->c:Ljava/lang/String;

    return-object v0
.end method
