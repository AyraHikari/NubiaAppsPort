.class public final Lc/c/a/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/h/a$b;,
        Lc/c/a/h/a$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;

.field private static b:Ljava/util/concurrent/ExecutorService;

.field private static c:Z

.field private static d:Lc/c/a/h/a$c;

.field private static e:Lc/c/a/h/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc/c/a/h/a;->a:Ljava/text/SimpleDateFormat;

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lc/c/a/h/a;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lc/c/a/h/a;->c:Z

    .line 4
    sget-object v0, Lc/c/a/h/a$c;->b:Lc/c/a/h/a$c;

    sput-object v0, Lc/c/a/h/a;->d:Lc/c/a/h/a$c;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lc/c/a/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lc/c/a/h/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lc/c/a/h/a;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lc/c/a/h/a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object v0, Lc/c/a/h/a$c;->c:Lc/c/a/h/a$c;

    invoke-static {p0, p1, v0}, Lc/c/a/h/a;->j(Ljava/lang/String;Ljava/lang/String;Lc/c/a/h/a$c;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lc/c/a/h/a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object v0, Lc/c/a/h/a$c;->f:Lc/c/a/h/a$c;

    invoke-static {p0, p1, v0}, Lc/c/a/h/a;->j(Ljava/lang/String;Ljava/lang/String;Lc/c/a/h/a$c;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-boolean v0, Lc/c/a/h/a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lc/c/a/h/a$c;->f:Lc/c/a/h/a$c;

    invoke-static {p0, p1, p2}, Lc/c/a/h/a;->j(Ljava/lang/String;Ljava/lang/String;Lc/c/a/h/a$c;)V

    :cond_0
    return-void
.end method

.method private static f(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/h/a;->e:Lc/c/a/h/a$b;

    invoke-virtual {v0, p0}, Lc/c/a/h/a$b;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lc/c/a/h/a;->a:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const/4 p0, 0x3

    aput-object p1, v1, p0

    const-string p0, "%s pid=%d %s; %s\n"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lc/c/a/h/a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object v0, Lc/c/a/h/a$c;->d:Lc/c/a/h/a$c;

    invoke-static {p0, p1, v0}, Lc/c/a/h/a;->j(Ljava/lang/String;Ljava/lang/String;Lc/c/a/h/a$c;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lc/c/a/h/a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object v0, Lc/c/a/h/a$c;->e:Lc/c/a/h/a$c;

    invoke-static {p0, p1, v0}, Lc/c/a/h/a;->j(Ljava/lang/String;Ljava/lang/String;Lc/c/a/h/a$c;)V

    :cond_0
    return-void
.end method

.method private static j(Ljava/lang/String;Ljava/lang/String;Lc/c/a/h/a$c;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const-string v2, " "

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " tid="

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget-object v3, v1, v2

    .line 6
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v2

    .line 9
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p2}, Lc/c/a/h/a$c;->a()I

    move-result p2

    sget-object v1, Lc/c/a/h/a;->d:Lc/c/a/h/a$c;

    invoke-virtual {v1}, Lc/c/a/h/a$c;->a()I

    move-result v1

    if-lt p2, v1, :cond_1

    sget-object p2, Lc/c/a/h/a;->e:Lc/c/a/h/a$b;

    if-nez p2, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    sget-object p2, Lc/c/a/h/a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lc/c/a/h/a$a;

    invoke-direct {v1, v0, p0, p1}, Lc/c/a/h/a$a;-><init>(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
