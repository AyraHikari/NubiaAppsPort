.class Lcn/nubia/camera/ar/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/ar/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ar/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ar/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ar/a;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcn/nubia/camera/ar/a$3;->a:Lcn/nubia/camera/ar/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 233
    iget-object v0, p0, Lcn/nubia/camera/ar/a$3;->a:Lcn/nubia/camera/ar/a;

    invoke-static {v0}, Lcn/nubia/camera/ar/a;->c(Lcn/nubia/camera/ar/a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 234
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/ar/a$3;->a:Lcn/nubia/camera/ar/a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/camera/ar/a;->b(Lcn/nubia/camera/ar/a;Z)Z

    .line 235
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    iget-object v0, p0, Lcn/nubia/camera/ar/a$3;->a:Lcn/nubia/camera/ar/a;

    invoke-static {v0}, Lcn/nubia/camera/ar/a;->d(Lcn/nubia/camera/ar/a;)V

    return-void

    :catchall_0
    move-exception v1

    .line 235
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
