.class public final Lcn/nubia/camera/k/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/a/a/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/a/d<",
            "Lcn/nubia/camera/k/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;

.field private c:Lcn/nubia/camera/k/b/c;


# direct methods
.method public constructor <init>(Lcom/a/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/a/d<",
            "Lcn/nubia/camera/k/b/b;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcn/nubia/camera/k/b/d;->a:Lcom/a/a/a/d;

    .line 33
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/k/b/d;->b:Ljava/lang/Object;

    .line 34
    new-instance p1, Lcn/nubia/camera/k/b/c;

    invoke-direct {p1}, Lcn/nubia/camera/k/b/c;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/k/b/d;->c:Lcn/nubia/camera/k/b/c;

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/k/b/a;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcn/nubia/camera/k/b/d;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/k/b/d;->c:Lcn/nubia/camera/k/b/c;

    invoke-virtual {v1}, Lcn/nubia/camera/k/b/c;->a()V

    .line 40
    iget-object v1, p0, Lcn/nubia/camera/k/b/d;->a:Lcom/a/a/a/d;

    invoke-interface {v1}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/k/b/b;

    invoke-virtual {v1, p1}, Lcn/nubia/camera/k/b/b;->a(Lcn/nubia/camera/k/b/a;)Lcn/nubia/camera/k/b/c;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/k/b/d;->c:Lcn/nubia/camera/k/b/c;

    .line 41
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
