.class Lcn/nubia/camera/bb/v$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/bb/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/v;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/v;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcn/nubia/camera/bb/v$6;->a:Lcn/nubia/camera/bb/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 454
    iget-object v0, p0, Lcn/nubia/camera/bb/v$6;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v0}, Lcn/nubia/camera/bb/v;->j(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/bb/v$6;->a:Lcn/nubia/camera/bb/v;

    .line 455
    invoke-static {v0}, Lcn/nubia/camera/bb/v;->k(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bb/v$6;->a:Lcn/nubia/camera/bb/v;

    invoke-virtual {v1}, Lcn/nubia/camera/bb/v;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/bb/v$6;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v2}, Lcn/nubia/camera/bb/v;->l(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/bb/ad;->a(Lcom/android/preference/c;Landroid/content/Context;Lcn/nubia/camera/af/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    iget-object v0, p0, Lcn/nubia/camera/bb/v$6;->a:Lcn/nubia/camera/bb/v;

    const-string v1, "ui_change_recording"

    invoke-static {v0, v1}, Lcn/nubia/camera/bb/v;->a(Lcn/nubia/camera/bb/v;Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcn/nubia/camera/bb/v$6;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v0}, Lcn/nubia/camera/bb/v;->m(Lcn/nubia/camera/bb/v;)V

    .line 458
    iget-object v0, p0, Lcn/nubia/camera/bb/v$6;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v0}, Lcn/nubia/camera/bb/v;->n(Lcn/nubia/camera/bb/v;)V

    :cond_0
    return-void
.end method
