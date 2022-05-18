.class public Lc/c/a/d/b/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/a/d/b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/c/a/d/b/e<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lc/c/a/d/c/a;
    .locals 1

    sget-object v0, Lc/c/a/d/c/a;->d:Lc/c/a/d/c/a;

    return-object v0
.end method

.method public bridge synthetic b(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lc/c/a/d/b/n;->f(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc/c/a/d/b/n;->e(Ljava/lang/String;)Ljava/lang/Object;

    return-object p1
.end method

.method public bridge synthetic d(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lc/c/a/d/b/n;->g(Ljava/lang/String;)Ljava/lang/String;

    return-object p1
.end method

.method public e(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public f(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
