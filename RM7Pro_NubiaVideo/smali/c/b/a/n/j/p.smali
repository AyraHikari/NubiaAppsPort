.class public Lc/b/a/n/j/p;
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
        "Ljava/lang/String;",
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
    iput-object p1, p0, Lc/b/a/n/j/p;->a:Lc/b/a/n/j/l;

    return-void
.end method

.method private static c(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)Lc/b/a/n/h/c;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lc/b/a/n/j/p;->b(Ljava/lang/String;II)Lc/b/a/n/h/c;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;II)Lc/b/a/n/h/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lc/b/a/n/h/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "/"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p1}, Lc/b/a/n/j/p;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 6
    invoke-static {p1}, Lc/b/a/n/j/p;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 7
    :goto_0
    iget-object v0, p0, Lc/b/a/n/j/p;->a:Lc/b/a/n/j/l;

    invoke-interface {v0, p1, p2, p3}, Lc/b/a/n/j/l;->a(Ljava/lang/Object;II)Lc/b/a/n/h/c;

    move-result-object p1

    return-object p1
.end method
