.class public Lcn/nubia/video/list/app/VideoAppImpl;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/list/app/a;


# instance fields
.field private a:Lb/a/b/c/a/f;

.field private b:Ljava/lang/Object;

.field private c:Lb/a/b/e/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/list/app/VideoAppImpl;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public b()Lb/a/b/c/a/f;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/app/VideoAppImpl;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/nubia/video/list/app/VideoAppImpl;->a:Lb/a/b/c/a/f;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lb/a/b/c/a/f;

    invoke-virtual {p0}, Lcn/nubia/video/list/app/VideoAppImpl;->a()Landroid/content/Context;

    invoke-direct {v1, p0}, Lb/a/b/c/a/f;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/video/list/app/VideoAppImpl;->a:Lb/a/b/c/a/f;

    .line 4
    :cond_0
    iget-object v1, p0, Lcn/nubia/video/list/app/VideoAppImpl;->a:Lb/a/b/c/a/f;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()Lb/a/b/e/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/app/VideoAppImpl;->c:Lb/a/b/e/d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lb/a/b/e/d;

    invoke-direct {v0}, Lb/a/b/e/d;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/list/app/VideoAppImpl;->c:Lb/a/b/e/d;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/list/app/VideoAppImpl;->c:Lb/a/b/e/d;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    invoke-static {p0}, Lcn/nubia/video/commonui/app/c;->f(Landroid/content/Context;)V

    return-void
.end method
