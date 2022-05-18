.class Lcn/nubia/camera/videomaker/b$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/videomaker/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/videomaker/b;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/videomaker/b;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcn/nubia/camera/videomaker/b$b;->a:Lcn/nubia/camera/videomaker/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/videomaker/b;Lcn/nubia/camera/videomaker/b$1;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/b$b;-><init>(Lcn/nubia/camera/videomaker/b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 58
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/videomaker/b$b;->a:Lcn/nubia/camera/videomaker/b;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/b;->a(Lcn/nubia/camera/videomaker/b;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/videomaker/b$b;->a:Lcn/nubia/camera/videomaker/b;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/b;->b(Lcn/nubia/camera/videomaker/b;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 60
    invoke-static {}, Lcn/nubia/camera/videomaker/b;->d()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/videomaker/b$b;->a:Lcn/nubia/camera/videomaker/b;

    invoke-static {v1}, Lcn/nubia/camera/videomaker/b;->c(Lcn/nubia/camera/videomaker/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-static {}, Lcn/nubia/camera/videomaker/b;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 64
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 66
    :cond_1
    invoke-static {}, Lcn/nubia/camera/videomaker/b;->d()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 67
    :try_start_1
    iget-object v1, p0, Lcn/nubia/camera/videomaker/b$b;->a:Lcn/nubia/camera/videomaker/b;

    invoke-static {v1}, Lcn/nubia/camera/videomaker/b;->b(Lcn/nubia/camera/videomaker/b;)Ljava/util/LinkedList;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/videomaker/b$b;->a:Lcn/nubia/camera/videomaker/b;

    invoke-static {v2}, Lcn/nubia/camera/videomaker/b;->d(Lcn/nubia/camera/videomaker/b;)Lcn/nubia/camera/videomaker/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v1, p0, Lcn/nubia/camera/videomaker/b$b;->a:Lcn/nubia/camera/videomaker/b;

    invoke-static {v1}, Lcn/nubia/camera/videomaker/b;->e(Lcn/nubia/camera/videomaker/b;)I

    .line 69
    iget-object v1, p0, Lcn/nubia/camera/videomaker/b$b;->a:Lcn/nubia/camera/videomaker/b;

    invoke-static {v1}, Lcn/nubia/camera/videomaker/b;->f(Lcn/nubia/camera/videomaker/b;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/videomaker/b$b;->a:Lcn/nubia/camera/videomaker/b;

    invoke-static {v2}, Lcn/nubia/camera/videomaker/b;->g(Lcn/nubia/camera/videomaker/b;)I

    move-result v2

    const/4 v3, 0x1

    if-lt v1, v2, :cond_2

    .line 70
    iget-object v1, p0, Lcn/nubia/camera/videomaker/b$b;->a:Lcn/nubia/camera/videomaker/b;

    invoke-static {v1}, Lcn/nubia/camera/videomaker/b;->h(Lcn/nubia/camera/videomaker/b;)Lcn/nubia/camera/videomaker/b$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcn/nubia/camera/videomaker/b$a;->sendEmptyMessage(I)Z

    .line 72
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/videomaker/b$b;->a:Lcn/nubia/camera/videomaker/b;

    invoke-static {v1}, Lcn/nubia/camera/videomaker/b;->c(Lcn/nubia/camera/videomaker/b;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/nubia/camera/videomaker/b$b;->a:Lcn/nubia/camera/videomaker/b;

    invoke-static {v1}, Lcn/nubia/camera/videomaker/b;->b(Lcn/nubia/camera/videomaker/b;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 73
    invoke-static {}, Lcn/nubia/camera/videomaker/b;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 75
    :cond_3
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :cond_4
    return-void
.end method
