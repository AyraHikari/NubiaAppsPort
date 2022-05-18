.class Lcn/nubia/camera/as/b$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/as/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/as/b;

.field private b:Landroid/app/Application;


# direct methods
.method constructor <init>(Lcn/nubia/camera/as/b;Landroid/app/Application;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcn/nubia/camera/as/b$a;->a:Lcn/nubia/camera/as/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 44
    iput-object p2, p0, Lcn/nubia/camera/as/b$a;->b:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 48
    iget-object v0, p0, Lcn/nubia/camera/as/b$a;->a:Lcn/nubia/camera/as/b;

    new-instance v1, Lcn/nubia/camera/as/a;

    iget-object v2, p0, Lcn/nubia/camera/as/b$a;->b:Landroid/app/Application;

    invoke-direct {v1, v2}, Lcn/nubia/camera/as/a;-><init>(Landroid/app/Application;)V

    invoke-static {v0, v1}, Lcn/nubia/camera/as/b;->a(Lcn/nubia/camera/as/b;Lcn/nubia/camera/as/a;)Lcn/nubia/camera/as/a;

    .line 49
    iget-object v0, p0, Lcn/nubia/camera/as/b$a;->a:Lcn/nubia/camera/as/b;

    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/as/b$a;->a:Lcn/nubia/camera/as/b;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/camera/as/b;->a(Lcn/nubia/camera/as/b;Z)Z

    .line 51
    iget-object v1, p0, Lcn/nubia/camera/as/b$a;->a:Lcn/nubia/camera/as/b;

    invoke-static {v1}, Lcn/nubia/camera/as/b;->a(Lcn/nubia/camera/as/b;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcn/nubia/camera/as/b$a;->a:Lcn/nubia/camera/as/b;

    invoke-static {v1}, Lcn/nubia/camera/as/b;->b(Lcn/nubia/camera/as/b;)Lcn/nubia/camera/as/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/as/a;->a()V

    .line 53
    iget-object v1, p0, Lcn/nubia/camera/as/b$a;->a:Lcn/nubia/camera/as/b;

    invoke-static {v1, v2}, Lcn/nubia/camera/as/b;->a(Lcn/nubia/camera/as/b;Lcn/nubia/camera/as/a;)Lcn/nubia/camera/as/a;

    .line 54
    iget-object v1, p0, Lcn/nubia/camera/as/b$a;->a:Lcn/nubia/camera/as/b;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcn/nubia/camera/as/b;->a(Lcn/nubia/camera/as/b;Z)Z

    .line 55
    iget-object v1, p0, Lcn/nubia/camera/as/b$a;->a:Lcn/nubia/camera/as/b;

    invoke-static {v1, v3}, Lcn/nubia/camera/as/b;->b(Lcn/nubia/camera/as/b;Z)Z

    .line 57
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/as/b$a;->a:Lcn/nubia/camera/as/b;

    invoke-static {v1, v2}, Lcn/nubia/camera/as/b;->a(Lcn/nubia/camera/as/b;Lcn/nubia/camera/as/b$a;)Lcn/nubia/camera/as/b$a;

    .line 58
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
