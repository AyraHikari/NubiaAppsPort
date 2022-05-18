.class public Lcn/nubia/camera/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/f/b$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "CommandManager"

.field private static b:Lcn/nubia/camera/f/b;


# instance fields
.field private c:Lcn/nubia/camera/f/b$a;

.field private d:Lcn/nubia/camera/f/c;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcn/nubia/camera/f/b;->c:Lcn/nubia/camera/f/b$a;

    .line 15
    iput-object v0, p0, Lcn/nubia/camera/f/b;->d:Lcn/nubia/camera/f/c;

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcn/nubia/camera/f/b;->e:Z

    .line 63
    new-instance v0, Lcn/nubia/camera/f/b$a;

    invoke-direct {v0, p0}, Lcn/nubia/camera/f/b$a;-><init>(Lcn/nubia/camera/f/b;)V

    iput-object v0, p0, Lcn/nubia/camera/f/b;->c:Lcn/nubia/camera/f/b$a;

    return-void
.end method

.method public static a()Lcn/nubia/camera/f/b;
    .locals 1

    .line 20
    sget-object v0, Lcn/nubia/camera/f/b;->b:Lcn/nubia/camera/f/b;

    if-nez v0, :cond_0

    new-instance v0, Lcn/nubia/camera/f/b;

    invoke-direct {v0}, Lcn/nubia/camera/f/b;-><init>()V

    sput-object v0, Lcn/nubia/camera/f/b;->b:Lcn/nubia/camera/f/b;

    .line 21
    :cond_0
    sget-object v0, Lcn/nubia/camera/f/b;->b:Lcn/nubia/camera/f/b;

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/f/b;Z)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcn/nubia/camera/f/b;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcn/nubia/camera/f/b;->e:Z

    return-void
.end method

.method private e()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcn/nubia/camera/f/b;->c:Lcn/nubia/camera/f/b$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/f/b$a;->removeMessages(I)V

    return-void
.end method

.method private f()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lcn/nubia/camera/f/b;->d:Lcn/nubia/camera/f/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private g()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcn/nubia/camera/f/b;->d:Lcn/nubia/camera/f/c;

    const/4 v1, 0x0

    .line 95
    iput-object v1, p0, Lcn/nubia/camera/f/b;->d:Lcn/nubia/camera/f/c;

    .line 96
    invoke-interface {v0}, Lcn/nubia/camera/f/c;->b()V

    return-void
.end method

.method private h()V
    .locals 4

    .line 100
    invoke-direct {p0}, Lcn/nubia/camera/f/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-direct {p0}, Lcn/nubia/camera/f/b;->i()V

    .line 102
    iget-object v0, p0, Lcn/nubia/camera/f/b;->d:Lcn/nubia/camera/f/c;

    invoke-interface {v0}, Lcn/nubia/camera/f/c;->a()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcn/nubia/camera/f/b;->c:Lcn/nubia/camera/f/b$a;

    const/4 v1, 0x1

    iget-object v2, p0, Lcn/nubia/camera/f/b;->d:Lcn/nubia/camera/f/c;

    invoke-interface {v2}, Lcn/nubia/camera/f/c;->a()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/f/b$a;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, v0}, Lcn/nubia/camera/f/b;->a(Z)V

    .line 106
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/f/b;->g()V

    :cond_1
    return-void
.end method

.method private i()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcn/nubia/camera/f/b;->c:Lcn/nubia/camera/f/b$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/f/b$a;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcn/nubia/camera/f/c;)V
    .locals 1

    monitor-enter p0

    .line 25
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/camera/f/b;->e:Z

    if-nez v0, :cond_0

    .line 26
    sget-object p1, Lcn/nubia/camera/f/b;->a:Ljava/lang/String;

    const-string v0, "addCommand false"

    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    .line 30
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcn/nubia/camera/f/b;->d:Lcn/nubia/camera/f/c;

    .line 32
    invoke-direct {p0}, Lcn/nubia/camera/f/b;->i()V

    .line 34
    invoke-direct {p0}, Lcn/nubia/camera/f/b;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    .line 38
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/camera/f/b;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 42
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/camera/f/b;->i()V

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, v0}, Lcn/nubia/camera/f/b;->a(Z)V

    const/4 v0, 0x0

    .line 44
    sput-object v0, Lcn/nubia/camera/f/b;->b:Lcn/nubia/camera/f/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 2

    monitor-enter p0

    .line 48
    :try_start_0
    sget-object v0, Lcn/nubia/camera/f/b;->a:Ljava/lang/String;

    const-string v1, "Enable command manager"

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-direct {p0}, Lcn/nubia/camera/f/b;->e()V

    const/4 v0, 0x1

    .line 50
    invoke-direct {p0, v0}, Lcn/nubia/camera/f/b;->a(Z)V

    .line 51
    invoke-direct {p0}, Lcn/nubia/camera/f/b;->i()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcn/nubia/camera/f/b;->d:Lcn/nubia/camera/f/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
