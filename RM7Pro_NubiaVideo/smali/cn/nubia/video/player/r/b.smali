.class public Lcn/nubia/video/player/r/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/r/b$b;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/video/player/r/b$b;

.field private b:Landroid/os/Handler;

.field private c:Lcn/nubia/video/player/r/a;

.field private d:Z

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcn/nubia/video/player/r/b$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/r/b;->b:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/nubia/video/player/r/b;->d:Z

    .line 4
    new-instance v0, Lcn/nubia/video/player/r/b$a;

    invoke-direct {v0, p0}, Lcn/nubia/video/player/r/b$a;-><init>(Lcn/nubia/video/player/r/b;)V

    iput-object v0, p0, Lcn/nubia/video/player/r/b;->e:Ljava/lang/Runnable;

    .line 5
    iput-object p1, p0, Lcn/nubia/video/player/r/b;->a:Lcn/nubia/video/player/r/b$b;

    return-void
.end method

.method static synthetic a(Lcn/nubia/video/player/r/b;)Lcn/nubia/video/player/r/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/r/b;->c:Lcn/nubia/video/player/r/a;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/video/player/r/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/player/r/b;->d:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/video/player/r/b;)Lcn/nubia/video/player/r/b$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/r/b;->a:Lcn/nubia/video/player/r/b$b;

    return-object p0
.end method

.method private e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/r/b;->d:Z

    return v0
.end method


# virtual methods
.method public d(Lcn/nubia/video/player/r/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/r/b;->c:Lcn/nubia/video/player/r/a;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/video/player/r/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/video/player/r/b;->c:Lcn/nubia/video/player/r/a;

    invoke-virtual {v0}, Lcn/nubia/video/player/r/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/nubia/video/player/r/b;->d:Z

    .line 3
    iput-object p1, p0, Lcn/nubia/video/player/r/b;->c:Lcn/nubia/video/player/r/a;

    .line 4
    iget-object p1, p0, Lcn/nubia/video/player/r/b;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcn/nubia/video/player/r/b;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object p1, p0, Lcn/nubia/video/player/r/b;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcn/nubia/video/player/r/b;->e:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/r/b;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/r/b;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
