.class public Lc/c/a/d/b/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/a/d/b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/c/a/d/b/e<",
        "Ljava/lang/Character;",
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

    sget-object v0, Lc/c/a/d/c/a;->b:Lc/c/a/d/c/a;

    return-object v0
.end method

.method public bridge synthetic b(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lc/c/a/d/b/d;->f(Landroid/database/Cursor;I)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lc/c/a/d/b/d;->e(Ljava/lang/Character;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lc/c/a/d/b/d;->g(Ljava/lang/String;)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/Character;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public f(Landroid/database/Cursor;I)Ljava/lang/Character;
    .locals 1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public g(Ljava/lang/String;)Ljava/lang/Character;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method
