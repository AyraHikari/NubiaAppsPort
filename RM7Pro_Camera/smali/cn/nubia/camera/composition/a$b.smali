.class Lcn/nubia/camera/composition/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/v/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/composition/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/composition/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/composition/a;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcn/nubia/camera/composition/a$b;->a:Lcn/nubia/camera/composition/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcn/nubia/camera/composition/a$b;->a:Lcn/nubia/camera/composition/a;

    invoke-static {v0}, Lcn/nubia/camera/composition/a;->b(Lcn/nubia/camera/composition/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcn/nubia/camera/composition/a$b;->a:Lcn/nubia/camera/composition/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/camera/composition/a;->a(Lcn/nubia/camera/composition/a;Z)Z

    .line 182
    iget-object v0, p0, Lcn/nubia/camera/composition/a$b;->a:Lcn/nubia/camera/composition/a;

    invoke-static {v0}, Lcn/nubia/camera/composition/a;->a(Lcn/nubia/camera/composition/a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 183
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/composition/a$b;->a:Lcn/nubia/camera/composition/a;

    invoke-static {v1}, Lcn/nubia/camera/composition/a;->a(Lcn/nubia/camera/composition/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 184
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method
