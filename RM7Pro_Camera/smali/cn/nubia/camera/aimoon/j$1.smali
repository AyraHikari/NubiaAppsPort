.class Lcn/nubia/camera/aimoon/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/v/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aimoon/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aimoon/j;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aimoon/j;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcn/nubia/camera/aimoon/j$1;->a:Lcn/nubia/camera/aimoon/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 342
    iget-object v0, p0, Lcn/nubia/camera/aimoon/j$1;->a:Lcn/nubia/camera/aimoon/j;

    monitor-enter v0

    .line 343
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/aimoon/j$1;->a:Lcn/nubia/camera/aimoon/j;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/camera/aimoon/j;->a(Lcn/nubia/camera/aimoon/j;Z)Z

    .line 344
    iget-object v1, p0, Lcn/nubia/camera/aimoon/j$1;->a:Lcn/nubia/camera/aimoon/j;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 345
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
