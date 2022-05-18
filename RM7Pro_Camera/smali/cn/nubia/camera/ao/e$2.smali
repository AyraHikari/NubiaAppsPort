.class Lcn/nubia/camera/ao/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ao/e;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ao/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ao/e;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcn/nubia/camera/ao/e$2;->a:Lcn/nubia/camera/ao/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V
    .locals 1

    .line 122
    iget-object p2, p0, Lcn/nubia/camera/ao/e$2;->a:Lcn/nubia/camera/ao/e;

    invoke-static {p2}, Lcn/nubia/camera/ao/e;->a(Lcn/nubia/camera/ao/e;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 123
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/ao/e$2;->a:Lcn/nubia/camera/ao/e;

    invoke-static {v0, p1}, Lcn/nubia/camera/ao/e;->a(Lcn/nubia/camera/ao/e;Lcn/nubia/b/a/f;)Lcn/nubia/b/a/f;

    .line 124
    iget-object p1, p0, Lcn/nubia/camera/ao/e$2;->a:Lcn/nubia/camera/ao/e;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/camera/ao/e;->a(Lcn/nubia/camera/ao/e;Z)Z

    .line 125
    iget-object p1, p0, Lcn/nubia/camera/ao/e$2;->a:Lcn/nubia/camera/ao/e;

    invoke-static {p1}, Lcn/nubia/camera/ao/e;->b(Lcn/nubia/camera/ao/e;)V

    .line 126
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 119
    check-cast p1, Lcn/nubia/b/a/f;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/ao/e$2;->a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V

    return-void
.end method
