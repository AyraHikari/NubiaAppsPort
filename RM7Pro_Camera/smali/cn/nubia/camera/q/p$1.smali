.class Lcn/nubia/camera/q/p$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/q/p;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/p;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/p;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcn/nubia/camera/q/p$1;->a:Lcn/nubia/camera/q/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/k/h;)V
    .locals 3

    .line 94
    iget-object v0, p0, Lcn/nubia/camera/q/p$1;->a:Lcn/nubia/camera/q/p;

    invoke-static {v0}, Lcn/nubia/camera/q/p;->a(Lcn/nubia/camera/q/p;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/q/p$1;->a:Lcn/nubia/camera/q/p;

    invoke-static {v1}, Lcn/nubia/camera/q/p;->b(Lcn/nubia/camera/q/p;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcn/nubia/camera/k/h;->a(Ljava/lang/String;)Lcn/nubia/b/d;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/nubia/camera/q/p;->a(Lcn/nubia/camera/q/p;Lcn/nubia/b/d;)Lcn/nubia/b/d;

    .line 96
    iget-object p1, p0, Lcn/nubia/camera/q/p$1;->a:Lcn/nubia/camera/q/p;

    invoke-static {p1}, Lcn/nubia/camera/q/p;->c(Lcn/nubia/camera/q/p;)V

    .line 97
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lcn/nubia/camera/k/h;)V
    .locals 0

    .line 102
    iget-object p1, p0, Lcn/nubia/camera/q/p$1;->a:Lcn/nubia/camera/q/p;

    invoke-virtual {p1}, Lcn/nubia/camera/q/p;->c()V

    return-void
.end method
