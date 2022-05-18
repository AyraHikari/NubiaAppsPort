.class public Lc/c/a/h/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/h/c$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = ""

.field public static b:Z = true

.field public static c:Z = true

.field public static d:Z = true

.field public static e:Lc/c/a/h/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lc/c/a/h/c;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lc/c/a/h/d;->a()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lc/c/a/h/c;->d(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lc/c/a/h/c;->e:Lc/c/a/h/c$a;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0, p0}, Lc/c/a/h/c$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lc/c/a/h/c;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lc/c/a/h/d;->a()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lc/c/a/h/c;->d(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lc/c/a/h/c;->e:Lc/c/a/h/c$a;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0, p0}, Lc/c/a/h/c$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lc/c/a/h/c;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lc/c/a/h/d;->a()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lc/c/a/h/c;->d(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lc/c/a/h/c;->e:Lc/c/a/h/c$a;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0, p0, p1}, Lc/c/a/h/c$a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static d(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x2

    aput-object p0, v1, v0

    const-string p0, "%s.%s(L:%d)"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lc/c/a/h/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc/c/a/h/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lc/c/a/h/c;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lc/c/a/h/d;->a()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lc/c/a/h/c;->d(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lc/c/a/h/c;->e:Lc/c/a/h/c$a;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0, p0}, Lc/c/a/h/c$a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
