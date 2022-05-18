.class public Lc/b/a/n/j/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/j/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/n/j/l<",
        "Ljava/io/File;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lc/b/a/n/j/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/j/l<",
            "Landroid/net/Uri;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/b/a/n/j/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/j/l<",
            "Landroid/net/Uri;",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/n/j/b;->a:Lc/b/a/n/j/l;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)Lc/b/a/n/h/c;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lc/b/a/n/j/b;->b(Ljava/io/File;II)Lc/b/a/n/h/c;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/io/File;II)Lc/b/a/n/h/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Lc/b/a/n/h/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/j/b;->a:Lc/b/a/n/j/l;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lc/b/a/n/j/l;->a(Ljava/lang/Object;II)Lc/b/a/n/h/c;

    move-result-object p1

    return-object p1
.end method
