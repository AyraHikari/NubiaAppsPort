.class public Lc/b/a/n/k/i/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/n/e<",
        "Ljava/io/InputStream;",
        "Lc/b/a/n/k/i/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/b/a/n/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/e<",
            "Lc/b/a/n/j/g;",
            "Lc/b/a/n/k/i/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/b/a/n/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/e<",
            "Lc/b/a/n/j/g;",
            "Lc/b/a/n/k/i/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/n/k/i/e;->a:Lc/b/a/n/e;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)Lc/b/a/n/i/k;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Lc/b/a/n/k/i/e;->b(Ljava/io/InputStream;II)Lc/b/a/n/i/k;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/io/InputStream;II)Lc/b/a/n/i/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II)",
            "Lc/b/a/n/i/k<",
            "Lc/b/a/n/k/i/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/i/e;->a:Lc/b/a/n/e;

    new-instance v1, Lc/b/a/n/j/g;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lc/b/a/n/j/g;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v0, v1, p2, p3}, Lc/b/a/n/e;->a(Ljava/lang/Object;II)Lc/b/a/n/i/k;

    move-result-object p1

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/i/e;->a:Lc/b/a/n/e;

    invoke-interface {v0}, Lc/b/a/n/e;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
