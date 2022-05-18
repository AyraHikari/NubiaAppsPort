.class public final Lc/d/a/c/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile a:Z = false

.field private static volatile b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lc/d/a/c/c;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lc/d/a/c/c;->e(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lc/d/a/c/c;->e(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static c(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, v0}, Lc/d/a/c/c;->e(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lc/d/a/c/c;->e(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs e(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-boolean v0, Lc/d/a/c/c;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, p3

    if-lez v0, :cond_1

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    :cond_3
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    const/4 p2, 0x1

    aput-object p1, p3, p2

    const-string p1, "%1$s\n%2$s"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    sget-object p1, Lc/d/a/b/d;->d:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static varargs f(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lc/d/a/c/c;->e(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static g(Z)V
    .locals 0

    sput-boolean p0, Lc/d/a/c/c;->a:Z

    return-void
.end method

.method public static h(Z)V
    .locals 0

    sput-boolean p0, Lc/d/a/c/c;->b:Z

    return-void
.end method
