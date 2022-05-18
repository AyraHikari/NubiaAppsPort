.class Lcn/nubia/camera/ar/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/g/c;


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

    .line 212
    iput-object p1, p0, Lcn/nubia/camera/ar/a$2;->a:Lcn/nubia/camera/ar/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 215
    iget-object p1, p0, Lcn/nubia/camera/ar/a$2;->a:Lcn/nubia/camera/ar/a;

    invoke-static {p1}, Lcn/nubia/camera/ar/a;->c(Lcn/nubia/camera/ar/a;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 216
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/ar/a$2;->a:Lcn/nubia/camera/ar/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/camera/ar/a;->a(Lcn/nubia/camera/ar/a;Z)Z

    .line 217
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    iget-object p1, p0, Lcn/nubia/camera/ar/a$2;->a:Lcn/nubia/camera/ar/a;

    invoke-static {p1}, Lcn/nubia/camera/ar/a;->d(Lcn/nubia/camera/ar/a;)V

    return-void

    :catchall_0
    move-exception v0

    .line 217
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
