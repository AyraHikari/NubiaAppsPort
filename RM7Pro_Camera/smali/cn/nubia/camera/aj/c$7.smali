.class Lcn/nubia/camera/aj/c$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aj/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aj/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aj/c;)V
    .locals 0

    .line 895
    iput-object p1, p0, Lcn/nubia/camera/aj/c$7;->a:Lcn/nubia/camera/aj/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 4

    .line 900
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/aj/c$7;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->y(Lcn/nubia/camera/aj/c;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    :try_start_1
    iget-object v1, p0, Lcn/nubia/camera/aj/c$7;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v1}, Lcn/nubia/camera/aj/c;->z(Lcn/nubia/camera/aj/c;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 902
    iget-object v1, p0, Lcn/nubia/camera/aj/c$7;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v1}, Lcn/nubia/camera/aj/c;->A(Lcn/nubia/camera/aj/c;)Z

    move-result v1

    .line 903
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 904
    iget-object p1, p0, Lcn/nubia/camera/aj/c$7;->a:Lcn/nubia/camera/aj/c;

    invoke-static {p1}, Lcn/nubia/camera/aj/c;->B(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/aj/l;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/aj/l;->a()[I

    move-result-object p1

    .line 905
    iget-object v2, p0, Lcn/nubia/camera/aj/c$7;->a:Lcn/nubia/camera/aj/c;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    aget p1, p1, v3

    if-lez p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-static {v2, v3}, Lcn/nubia/camera/aj/c;->b(Lcn/nubia/camera/aj/c;Z)Z

    goto :goto_0

    .line 908
    :cond_1
    iget-object v2, p0, Lcn/nubia/camera/aj/c$7;->a:Lcn/nubia/camera/aj/c;

    sget-object v3, Lcn/nubia/camera/k/a/a$c;->h:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v2, p1}, Lcn/nubia/camera/aj/c;->b(Lcn/nubia/camera/aj/c;Z)Z

    .line 911
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/aj/c$7;->a:Lcn/nubia/camera/aj/c;

    invoke-static {p1}, Lcn/nubia/camera/aj/c;->A(Lcn/nubia/camera/aj/c;)Z

    move-result p1

    if-eq v1, p1, :cond_2

    .line 912
    iget-object p1, p0, Lcn/nubia/camera/aj/c$7;->a:Lcn/nubia/camera/aj/c;

    invoke-static {p1}, Lcn/nubia/camera/aj/c;->k(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/aj/c$a;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcn/nubia/camera/aj/c$a;->removeMessages(I)V

    .line 913
    iget-object p1, p0, Lcn/nubia/camera/aj/c$7;->a:Lcn/nubia/camera/aj/c;

    invoke-static {p1}, Lcn/nubia/camera/aj/c;->k(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/aj/c$a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/nubia/camera/aj/c$a;->sendEmptyMessage(I)Z

    .line 916
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_1
    return-void
.end method
