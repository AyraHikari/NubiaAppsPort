.class Lcn/nubia/camera/ay/a$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ay/a;->a([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ay/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ay/a;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcn/nubia/camera/ay/a$2;->a:Lcn/nubia/camera/ay/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 208
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/ay/a$2;->a:Lcn/nubia/camera/ay/a;

    invoke-static {v0}, Lcn/nubia/camera/ay/a;->d(Lcn/nubia/camera/ay/a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :try_start_1
    iget-object v1, p0, Lcn/nubia/camera/ay/a$2;->a:Lcn/nubia/camera/ay/a;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/camera/ay/a;->a(Lcn/nubia/camera/ay/a;Z)Z

    .line 210
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    :try_start_2
    iget-object v0, p0, Lcn/nubia/camera/ay/a$2;->a:Lcn/nubia/camera/ay/a;

    invoke-static {v0}, Lcn/nubia/camera/ay/a;->e(Lcn/nubia/camera/ay/a;)[B

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcn/nubia/camera/ay/a;->a(Lcn/nubia/camera/ay/a;[BLjava/lang/Thread;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 210
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Trajectory"

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured in saveYuvData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
