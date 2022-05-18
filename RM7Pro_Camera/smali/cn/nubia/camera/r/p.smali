.class Lcn/nubia/camera/r/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/r/p$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:[Lcn/nubia/camera/r/p$a;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/r/p;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcn/nubia/camera/r/p;->b:Z

    .line 17
    new-array p1, p1, [Lcn/nubia/camera/r/p$a;

    iput-object p1, p0, Lcn/nubia/camera/r/p;->c:[Lcn/nubia/camera/r/p$a;

    .line 18
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/r/p;->c:[Lcn/nubia/camera/r/p$a;

    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 19
    new-instance v1, Lcn/nubia/camera/r/p$a;

    invoke-direct {v1, p0}, Lcn/nubia/camera/r/p$a;-><init>(Lcn/nubia/camera/r/p;)V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/r/p;)Ljava/util/ArrayList;
    .locals 0

    .line 7
    iget-object p0, p0, Lcn/nubia/camera/r/p;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/r/p;)Z
    .locals 0

    .line 7
    iget-boolean p0, p0, Lcn/nubia/camera/r/p;->b:Z

    return p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 38
    iget-object v0, p0, Lcn/nubia/camera/r/p;->a:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 39
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcn/nubia/camera/r/p;->c:[Lcn/nubia/camera/r/p$a;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 40
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcn/nubia/camera/r/p$a;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcn/nubia/camera/r/p;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/r/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object p1, p0, Lcn/nubia/camera/r/p;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 33
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Z)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcn/nubia/camera/r/p;->a:Ljava/util/ArrayList;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 52
    :try_start_0
    iget-object p1, p0, Lcn/nubia/camera/r/p;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcn/nubia/camera/r/p;->b:Z

    .line 55
    iget-object p1, p0, Lcn/nubia/camera/r/p;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 56
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    .line 61
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/r/p;->c:[Lcn/nubia/camera/r/p$a;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 63
    :try_start_0
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcn/nubia/camera/r/p$a;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 65
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
