.class public Lc/c/a/d/c/b$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/d/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static a:J

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lc/c/a/d/c/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/c/a/d/c/b$b;->b:Ljava/lang/String;

    const-class v0, Lc/c/a/d/c/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/c/a/d/c/b$b;->c:Ljava/lang/String;

    return-void
.end method

.method public static a()J
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lc/c/a/d/c/b$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lc/c/a/d/c/b$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-wide v0, Lc/c/a/d/c/b$b;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lc/c/a/d/c/b$b;->a:J

    :cond_0
    sget-wide v0, Lc/c/a/d/c/b$b;->a:J

    return-wide v0
.end method
