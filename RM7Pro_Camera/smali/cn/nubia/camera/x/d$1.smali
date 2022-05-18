.class Lcn/nubia/camera/x/d$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/x/d;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/x/d;


# direct methods
.method constructor <init>(Lcn/nubia/camera/x/d;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcn/nubia/camera/x/d$1;->a:Lcn/nubia/camera/x/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 35
    iget-object v0, p0, Lcn/nubia/camera/x/d$1;->a:Lcn/nubia/camera/x/d;

    monitor-enter v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/x/d$1;->a:Lcn/nubia/camera/x/d;

    const-string v2, "id_photo_model.dlc"

    invoke-static {v1, v2}, Lcn/nubia/camera/x/d;->a(Lcn/nubia/camera/x/d;Ljava/lang/String;)V

    const-string v1, "/system/etc/faceclassifier"

    .line 37
    invoke-static {v1}, Lcn/nubia/algorithm/camera/IdPhoto;->init(Ljava/lang/String;)Z

    .line 38
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
