.class public Lc/b/a/n/j/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/n/b<",
        "Lc/b/a/n/j/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/b/a/n/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/b<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lc/b/a/n/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/b<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc/b/a/n/b;Lc/b/a/n/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/b<",
            "Ljava/io/InputStream;",
            ">;",
            "Lc/b/a/n/b<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/n/j/h;->a:Lc/b/a/n/b;

    .line 3
    iput-object p2, p0, Lc/b/a/n/j/h;->b:Lc/b/a/n/b;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 0

    .line 1
    check-cast p1, Lc/b/a/n/j/g;

    invoke-virtual {p0, p1, p2}, Lc/b/a/n/j/h;->b(Lc/b/a/n/j/g;Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method

.method public b(Lc/b/a/n/j/g;Ljava/io/OutputStream;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lc/b/a/n/j/g;->b()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/b/a/n/j/h;->a:Lc/b/a/n/b;

    invoke-virtual {p1}, Lc/b/a/n/j/g;->b()Ljava/io/InputStream;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lc/b/a/n/b;->a(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lc/b/a/n/j/h;->b:Lc/b/a/n/b;

    invoke-virtual {p1}, Lc/b/a/n/j/g;->a()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lc/b/a/n/b;->a(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/n/j/h;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc/b/a/n/j/h;->a:Lc/b/a/n/b;

    invoke-interface {v1}, Lc/b/a/n/b;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/b/a/n/j/h;->b:Lc/b/a/n/b;

    invoke-interface {v1}, Lc/b/a/n/b;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/a/n/j/h;->c:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lc/b/a/n/j/h;->c:Ljava/lang/String;

    return-object v0
.end method
