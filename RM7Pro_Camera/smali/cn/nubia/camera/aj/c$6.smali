.class Lcn/nubia/camera/aj/c$6;
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

    .line 830
    iput-object p1, p0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 5

    .line 833
    iget-object v0, p0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->q(Lcn/nubia/camera/aj/c;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->w(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->x(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 838
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->y(Lcn/nubia/camera/aj/c;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    :try_start_1
    iget-object v1, p0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v1}, Lcn/nubia/camera/aj/c;->z(Lcn/nubia/camera/aj/c;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 840
    iget-object v1, p0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v1}, Lcn/nubia/camera/aj/c;->A(Lcn/nubia/camera/aj/c;)Z

    move-result v1

    .line 841
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 842
    iget-object v2, p0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v2}, Lcn/nubia/camera/aj/c;->B(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/aj/l;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/aj/l;->a()[I

    move-result-object v2

    .line 843
    iget-object v3, p0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    aget v2, v2, v4

    if-lez v2, :cond_1

    const/4 v4, 0x1

    :cond_1
    invoke-static {v3, v4}, Lcn/nubia/camera/aj/c;->b(Lcn/nubia/camera/aj/c;Z)Z

    goto :goto_0

    .line 846
    :cond_2
    iget-object v2, p0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    sget-object v3, Lcn/nubia/camera/k/a/a$c;->h:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcn/nubia/camera/aj/c;->b(Lcn/nubia/camera/aj/c;Z)Z

    .line 848
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v2}, Lcn/nubia/camera/aj/c;->A(Lcn/nubia/camera/aj/c;)Z

    move-result v2

    if-eq v1, v2, :cond_3

    .line 849
    iget-object v1, p0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v1}, Lcn/nubia/camera/aj/c;->k(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/aj/c$a;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcn/nubia/camera/aj/c$a;->removeMessages(I)V

    .line 850
    iget-object v1, p0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v1}, Lcn/nubia/camera/aj/c;->k(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/aj/c$a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/nubia/camera/aj/c$a;->sendEmptyMessage(I)Z

    .line 853
    :cond_3
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 858
    :catch_0
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->C(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_6

    .line 861
    :try_start_3
    sget-object v0, Lcn/nubia/camera/k/a/a$c;->g:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 862
    iget-object v0, p0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_2
    invoke-static {v0, p1}, Lcn/nubia/camera/aj/c;->a(Lcn/nubia/camera/aj/c;F)F

    .line 863
    iget-object p1, p0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    invoke-virtual {p1}, Lcn/nubia/camera/aj/c;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_5

    return-void

    .line 865
    :cond_5
    iget-object p1, p0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    invoke-virtual {p1}, Lcn/nubia/camera/aj/c;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcn/nubia/camera/aj/c$6$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/aj/c$6$1;-><init>(Lcn/nubia/camera/aj/c$6;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    const-string v0, "NormalFragment"

    .line 889
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    return-void
.end method
