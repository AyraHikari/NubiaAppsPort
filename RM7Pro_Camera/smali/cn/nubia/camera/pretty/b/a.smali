.class public Lcn/nubia/camera/pretty/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/pretty/b/a$a;,
        Lcn/nubia/camera/pretty/b/a$b;
    }
.end annotation


# static fields
.field private static c:Lcn/nubia/camera/pretty/b/a;


# instance fields
.field private a:Lcn/nubia/camera/pretty/b/a$b;

.field private b:Lcn/nubia/camera/pretty/b/a$a;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcn/nubia/camera/pretty/b/a;->a:Lcn/nubia/camera/pretty/b/a$b;

    .line 19
    iput-object v0, p0, Lcn/nubia/camera/pretty/b/a;->b:Lcn/nubia/camera/pretty/b/a$a;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcn/nubia/camera/pretty/b/a;->d:Z

    .line 89
    iput-boolean v0, p0, Lcn/nubia/camera/pretty/b/a;->e:Z

    .line 90
    iput-boolean v0, p0, Lcn/nubia/camera/pretty/b/a;->f:Z

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/pretty/b/a;->g:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized a()Lcn/nubia/camera/pretty/b/a;
    .locals 2

    const-class v0, Lcn/nubia/camera/pretty/b/a;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcn/nubia/camera/pretty/b/a;->c:Lcn/nubia/camera/pretty/b/a;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcn/nubia/camera/pretty/b/a;

    invoke-direct {v1}, Lcn/nubia/camera/pretty/b/a;-><init>()V

    sput-object v1, Lcn/nubia/camera/pretty/b/a;->c:Lcn/nubia/camera/pretty/b/a;

    .line 30
    :cond_0
    sget-object v1, Lcn/nubia/camera/pretty/b/a;->c:Lcn/nubia/camera/pretty/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcn/nubia/camera/pretty/b/a;)Ljava/lang/Object;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/camera/pretty/b/a;->g:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/pretty/b/a;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcn/nubia/camera/pretty/b/a;->f:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/pretty/b/a;)Lcn/nubia/camera/pretty/b/a$a;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/camera/pretty/b/a;->b:Lcn/nubia/camera/pretty/b/a$a;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/pretty/b/a;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcn/nubia/camera/pretty/b/a;->d:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/pretty/b/a;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcn/nubia/camera/pretty/b/a;->e:Z

    return p0
.end method

.method static synthetic c(Lcn/nubia/camera/pretty/b/a;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcn/nubia/camera/pretty/b/a;->e:Z

    return p1
.end method

.method private d()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/a;->a:Lcn/nubia/camera/pretty/b/a$b;

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcn/nubia/camera/pretty/b/a$b;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcn/nubia/camera/pretty/b/a;->a:Lcn/nubia/camera/pretty/b/a$b;

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/pretty/b/a$a;)V
    .locals 3

    .line 34
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/a;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 35
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/pretty/b/a;->e:Z

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcn/nubia/camera/pretty/b/a;->b:Lcn/nubia/camera/pretty/b/a$a;

    .line 37
    iget-boolean v2, p0, Lcn/nubia/camera/pretty/b/a;->f:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/camera/pretty/b/a;->a:Lcn/nubia/camera/pretty/b/a$b;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcn/nubia/camera/pretty/b/a$b;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    iput-object p1, p0, Lcn/nubia/camera/pretty/b/a;->b:Lcn/nubia/camera/pretty/b/a$a;

    .line 39
    monitor-exit v0

    return-void

    .line 41
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-direct {p0}, Lcn/nubia/camera/pretty/b/a;->d()V

    .line 44
    iput-object p1, p0, Lcn/nubia/camera/pretty/b/a;->b:Lcn/nubia/camera/pretty/b/a$a;

    .line 45
    iget-boolean v0, p0, Lcn/nubia/camera/pretty/b/a;->d:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 47
    invoke-interface {p1}, Lcn/nubia/camera/pretty/b/a$a;->a()V

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcn/nubia/camera/pretty/b/a;->f:Z

    .line 53
    new-instance p1, Lcn/nubia/camera/pretty/b/a$b;

    invoke-direct {p1, p0, v1}, Lcn/nubia/camera/pretty/b/a$b;-><init>(Lcn/nubia/camera/pretty/b/a;Lcn/nubia/camera/pretty/b/a$1;)V

    iput-object p1, p0, Lcn/nubia/camera/pretty/b/a;->a:Lcn/nubia/camera/pretty/b/a$b;

    .line 54
    invoke-virtual {p1}, Lcn/nubia/camera/pretty/b/a$b;->start()V

    return-void

    :catchall_0
    move-exception p1

    .line 41
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 7

    .line 58
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/a;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 59
    :try_start_0
    iput-object v1, p0, Lcn/nubia/camera/pretty/b/a;->b:Lcn/nubia/camera/pretty/b/a$a;

    .line 60
    iget-boolean v1, p0, Lcn/nubia/camera/pretty/b/a;->d:Z

    if-eqz v1, :cond_0

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 62
    invoke-static {}, Lcn/nubia/algorithm/camera/SingleBokeh;->release()V

    const-string v3, "FacePlusEnv"

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "release in thread: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 64
    iput-boolean v1, p0, Lcn/nubia/camera/pretty/b/a;->e:Z

    .line 65
    iput-boolean v1, p0, Lcn/nubia/camera/pretty/b/a;->d:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 67
    iput-boolean v1, p0, Lcn/nubia/camera/pretty/b/a;->e:Z

    .line 69
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcn/nubia/camera/pretty/b/a;->d:Z

    return v0
.end method
