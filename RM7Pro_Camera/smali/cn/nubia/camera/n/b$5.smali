.class Lcn/nubia/camera/n/b$5;
.super Lcn/nubia/camera/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/n/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/n/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/n/b;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcn/nubia/camera/n/b$5;->a:Lcn/nubia/camera/n/b;

    invoke-direct {p0}, Lcn/nubia/camera/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public b()V
    .locals 3

    .line 407
    iget-object v0, p0, Lcn/nubia/camera/n/b$5;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->j(Lcn/nubia/camera/n/b;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/n/b$5;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->n(Lcn/nubia/camera/n/b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 411
    iget-object v0, p0, Lcn/nubia/camera/n/b$5;->a:Lcn/nubia/camera/n/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/camera/n/b;->b(Lcn/nubia/camera/n/b;Z)Z

    .line 412
    iget-object v0, p0, Lcn/nubia/camera/n/b$5;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->i(Lcn/nubia/camera/n/b;)Lcom/android/common/ui/ZtemtFunEffectSlider;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtFunEffectSlider;->a(Z)V

    goto :goto_0

    .line 414
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/n/b$5;->a:Lcn/nubia/camera/n/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/n/b;->b(Lcn/nubia/camera/n/b;Z)Z

    .line 415
    iget-object v0, p0, Lcn/nubia/camera/n/b$5;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->i(Lcn/nubia/camera/n/b;)Lcom/android/common/ui/ZtemtFunEffectSlider;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtFunEffectSlider;->a(Z)V

    .line 417
    :goto_0
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/n/b$5;->a:Lcn/nubia/camera/n/b;

    invoke-static {v1}, Lcn/nubia/camera/n/b;->n(Lcn/nubia/camera/n/b;)Z

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/n/b$5;->a:Lcn/nubia/camera/n/b;

    invoke-static {v2}, Lcn/nubia/camera/n/b;->o(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/af/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/ba/f;->b(ZLcn/nubia/camera/af/a;)V

    return-void
.end method
