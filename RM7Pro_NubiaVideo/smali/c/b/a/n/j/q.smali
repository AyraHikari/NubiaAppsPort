.class public abstract Lc/b/a/n/j/q;
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
        "Landroid/net/Uri;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lc/b/a/n/j/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/j/l<",
            "Lc/b/a/n/j/d;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/b/a/n/j/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/b/a/n/j/l<",
            "Lc/b/a/n/j/d;",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/n/j/q;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lc/b/a/n/j/q;->b:Lc/b/a/n/j/l;

    return-void
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "file"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "content"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.resource"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)Lc/b/a/n/h/c;
    .locals 0

    .line 1
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3}, Lc/b/a/n/j/q;->d(Landroid/net/Uri;II)Lc/b/a/n/h/c;

    move-result-object p1

    return-object p1
.end method

.method protected abstract b(Landroid/content/Context;Ljava/lang/String;)Lc/b/a/n/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lc/b/a/n/h/c<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected abstract c(Landroid/content/Context;Landroid/net/Uri;)Lc/b/a/n/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Lc/b/a/n/h/c<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final d(Landroid/net/Uri;II)Lc/b/a/n/h/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II)",
            "Lc/b/a/n/h/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lc/b/a/n/j/q;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {p1}, Lc/b/a/n/j/a;->a(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-static {p1}, Lc/b/a/n/j/a;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lc/b/a/n/j/q;->a:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Lc/b/a/n/j/q;->b(Landroid/content/Context;Ljava/lang/String;)Lc/b/a/n/h/c;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lc/b/a/n/j/q;->a:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Lc/b/a/n/j/q;->c(Landroid/content/Context;Landroid/net/Uri;)Lc/b/a/n/h/c;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lc/b/a/n/j/q;->b:Lc/b/a/n/j/l;

    if-eqz v1, :cond_3

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    :cond_2
    iget-object v0, p0, Lc/b/a/n/j/q;->b:Lc/b/a/n/j/l;

    new-instance v1, Lc/b/a/n/j/d;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lc/b/a/n/j/d;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p2, p3}, Lc/b/a/n/j/l;->a(Ljava/lang/Object;II)Lc/b/a/n/h/c;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
