.class public Lc/c/a/f/a/h/f$n;
.super Lc/c/a/f/a/h/f$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/f/a/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p7}, Lc/c/a/f/a/h/f$f;-><init>(IIIIIII)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 8

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move v5, p1

    const/4 v6, 0x0

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/4 v4, 0x0

    move-object v0, p0

    move v7, p2

    .line 1
    invoke-direct/range {v0 .. v7}, Lc/c/a/f/a/h/f$f;-><init>(IIIIIII)V

    return-void
.end method

.method public static f(ZI)Lc/c/a/f/a/h/f$n;
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lc/c/a/f/a/h/f$n;

    invoke-direct {v0, p0, p1}, Lc/c/a/f/a/h/f$n;-><init>(ZI)V

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Lc/c/a/f/a/h/f$n;

    const/4 v2, 0x5

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v8, p1

    invoke-direct/range {v1 .. v8}, Lc/c/a/f/a/h/f$n;-><init>(IIIIIII)V

    return-object p0
.end method
