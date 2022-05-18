.class public Lcn/nubia/camera/as/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/as/b$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/camera/as/a;

.field private b:Lcn/nubia/camera/as/b$a;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcn/nubia/camera/as/b;->c:Z

    .line 13
    iput-boolean v0, p0, Lcn/nubia/camera/as/b;->d:Z

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/as/b;Lcn/nubia/camera/as/a;)Lcn/nubia/camera/as/a;
    .locals 0

    .line 9
    iput-object p1, p0, Lcn/nubia/camera/as/b;->a:Lcn/nubia/camera/as/a;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/as/b;Lcn/nubia/camera/as/b$a;)Lcn/nubia/camera/as/b$a;
    .locals 0

    .line 9
    iput-object p1, p0, Lcn/nubia/camera/as/b;->b:Lcn/nubia/camera/as/b$a;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/as/b;)Z
    .locals 0

    .line 9
    iget-boolean p0, p0, Lcn/nubia/camera/as/b;->d:Z

    return p0
.end method

.method static synthetic a(Lcn/nubia/camera/as/b;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcn/nubia/camera/as/b;->c:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/as/b;)Lcn/nubia/camera/as/a;
    .locals 0

    .line 9
    iget-object p0, p0, Lcn/nubia/camera/as/b;->a:Lcn/nubia/camera/as/a;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/as/b;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcn/nubia/camera/as/b;->d:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized a()Lcn/nubia/camera/as/a;
    .locals 1

    monitor-enter p0

    .line 24
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/camera/as/b;->c:Z

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcn/nubia/camera/as/b;->a:Lcn/nubia/camera/as/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 27
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/app/Application;)V
    .locals 1

    monitor-enter p0

    .line 16
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/camera/as/b;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/as/b;->b:Lcn/nubia/camera/as/b$a;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcn/nubia/camera/as/b$a;

    invoke-direct {v0, p0, p1}, Lcn/nubia/camera/as/b$a;-><init>(Lcn/nubia/camera/as/b;Landroid/app/Application;)V

    iput-object v0, p0, Lcn/nubia/camera/as/b;->b:Lcn/nubia/camera/as/b$a;

    .line 18
    invoke-virtual {v0}, Lcn/nubia/camera/as/b$a;->start()V

    :cond_0
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcn/nubia/camera/as/b;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 31
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/camera/as/b;->c:Z

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcn/nubia/camera/as/b;->a:Lcn/nubia/camera/as/a;

    invoke-virtual {v0}, Lcn/nubia/camera/as/a;->a()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcn/nubia/camera/as/b;->a:Lcn/nubia/camera/as/a;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcn/nubia/camera/as/b;->c:Z

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/as/b;->b:Lcn/nubia/camera/as/b$a;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcn/nubia/camera/as/b;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
