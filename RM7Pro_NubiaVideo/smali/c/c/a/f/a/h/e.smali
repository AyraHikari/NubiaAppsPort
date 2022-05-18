.class public Lc/c/a/f/a/h/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lc/c/a/f/a/h/f$i;Lc/c/a/f/a/h/f$j;Lc/c/a/f/a/h/f$k;)Lc/c/a/f/a/h/g;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lc/c/a/f/a/h/d;

    invoke-direct {v0, p0, p1, p2}, Lc/c/a/f/a/h/d;-><init>(Lc/c/a/f/a/h/f$i;Lc/c/a/f/a/h/f$j;Lc/c/a/f/a/h/f$k;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lc/c/a/f/a/h/c;

    invoke-direct {v0, p0, p1, p2}, Lc/c/a/f/a/h/c;-><init>(Lc/c/a/f/a/h/f$i;Lc/c/a/f/a/h/f$j;Lc/c/a/f/a/h/f$k;)V

    return-object v0
.end method
