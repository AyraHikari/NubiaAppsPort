.class Lcn/nubia/camera/ai/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ai/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ai/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ai/a;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcn/nubia/camera/ai/a$1;->a:Lcn/nubia/camera/ai/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    .line 126
    :try_start_0
    sget-object v0, Lcn/nubia/camera/k/a/a$c;->g:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 127
    iget-object v1, p0, Lcn/nubia/camera/ai/a$1;->a:Lcn/nubia/camera/ai/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    invoke-static {v1, v0}, Lcn/nubia/camera/ai/a;->a(Lcn/nubia/camera/ai/a;F)F

    .line 128
    iget-object v0, p0, Lcn/nubia/camera/ai/a$1;->a:Lcn/nubia/camera/ai/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ai/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ai/a$1;->a:Lcn/nubia/camera/ai/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ai/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/ai/a$1$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/ai/a$1$1;-><init>(Lcn/nubia/camera/ai/a$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 140
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/ai/a$1;->a:Lcn/nubia/camera/ai/a;

    .line 141
    invoke-static {v0}, Lcn/nubia/camera/ai/a;->b(Lcn/nubia/camera/ai/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-eq v0, v1, :cond_2

    .line 142
    sget-object v0, Lcn/nubia/camera/k/a/a$c;->l:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 143
    iget-object v0, p0, Lcn/nubia/camera/ai/a$1;->a:Lcn/nubia/camera/ai/a;

    invoke-static {v0}, Lcn/nubia/camera/ai/a;->c(Lcn/nubia/camera/ai/a;)Lcn/nubia/camera/ai/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ai/f;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/k/a/a$c;->l:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/camera/k/x;->a(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 146
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NightSceneFragment"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method
