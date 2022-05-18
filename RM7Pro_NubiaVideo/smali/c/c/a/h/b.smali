.class public Lc/c/a/h/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lc/c/a/h/b;->a:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lc/c/a/h/b;->a:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
