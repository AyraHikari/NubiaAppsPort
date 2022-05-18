.class Lcn/nubia/camera/aj/c$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aj/c$6;->a(Landroid/hardware/camera2/TotalCaptureResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aj/c$6;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aj/c$6;)V
    .locals 0

    .line 865
    iput-object p1, p0, Lcn/nubia/camera/aj/c$6$1;->a:Lcn/nubia/camera/aj/c$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 868
    iget-object v0, p0, Lcn/nubia/camera/aj/c$6$1;->a:Lcn/nubia/camera/aj/c$6;

    iget-object v0, v0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->D(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/aj/c$6$1;->a:Lcn/nubia/camera/aj/c$6;

    iget-object v0, v0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->E(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 870
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/c$6$1;->a:Lcn/nubia/camera/aj/c$6;

    iget-object v0, v0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->F(Lcn/nubia/camera/aj/c;)F

    move-result v0

    const/high16 v1, 0x43a00000    # 320.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/aj/c$6$1;->a:Lcn/nubia/camera/aj/c$6;

    iget-object v0, v0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->G(Lcn/nubia/camera/aj/c;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 871
    iget-object v0, p0, Lcn/nubia/camera/aj/c$6$1;->a:Lcn/nubia/camera/aj/c$6;

    iget-object v0, v0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->H(Lcn/nubia/camera/aj/c;)I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_2

    .line 872
    iget-object v0, p0, Lcn/nubia/camera/aj/c$6$1;->a:Lcn/nubia/camera/aj/c$6;

    iget-object v0, v0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->I(Lcn/nubia/camera/aj/c;)I

    goto :goto_0

    .line 874
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/aj/c$6$1;->a:Lcn/nubia/camera/aj/c$6;

    iget-object v0, v0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->F(Lcn/nubia/camera/aj/c;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 875
    iget-object v0, p0, Lcn/nubia/camera/aj/c$6$1;->a:Lcn/nubia/camera/aj/c$6;

    iget-object v0, v0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->H(Lcn/nubia/camera/aj/c;)I

    move-result v0

    if-lez v0, :cond_2

    .line 876
    iget-object v0, p0, Lcn/nubia/camera/aj/c$6$1;->a:Lcn/nubia/camera/aj/c$6;

    iget-object v0, v0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->J(Lcn/nubia/camera/aj/c;)I

    .line 879
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/aj/c$6$1;->a:Lcn/nubia/camera/aj/c$6;

    iget-object v0, v0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    iget-object v2, p0, Lcn/nubia/camera/aj/c$6$1;->a:Lcn/nubia/camera/aj/c$6;

    iget-object v2, v2, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v2}, Lcn/nubia/camera/aj/c;->F(Lcn/nubia/camera/aj/c;)F

    move-result v2

    invoke-static {v0, v2}, Lcn/nubia/camera/aj/c;->b(Lcn/nubia/camera/aj/c;F)F

    .line 880
    iget-object v0, p0, Lcn/nubia/camera/aj/c$6$1;->a:Lcn/nubia/camera/aj/c$6;

    iget-object v0, v0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->F(Lcn/nubia/camera/aj/c;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 881
    iget-object v0, p0, Lcn/nubia/camera/aj/c$6$1;->a:Lcn/nubia/camera/aj/c$6;

    iget-object v0, v0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/camera/aj/c;->c(Lcn/nubia/camera/aj/c;Z)Z

    goto :goto_1

    .line 883
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/aj/c$6$1;->a:Lcn/nubia/camera/aj/c$6;

    iget-object v0, v0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/aj/c;->c(Lcn/nubia/camera/aj/c;Z)Z

    .line 885
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/aj/c$6$1;->a:Lcn/nubia/camera/aj/c$6;

    iget-object v0, v0, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    iget-object v0, v0, Lcn/nubia/camera/aj/c;->a:Lcn/nubia/camera/aj/f;

    iget-object v1, p0, Lcn/nubia/camera/aj/c$6$1;->a:Lcn/nubia/camera/aj/c$6;

    iget-object v1, v1, Lcn/nubia/camera/aj/c$6;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v1}, Lcn/nubia/camera/aj/c;->K(Lcn/nubia/camera/aj/c;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aj/f;->b(Z)V

    :cond_4
    :goto_2
    return-void
.end method
