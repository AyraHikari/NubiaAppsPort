.class Lcn/nubia/camera/ah/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ah/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ah/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ah/a;)V
    .locals 0

    .line 940
    iput-object p1, p0, Lcn/nubia/camera/ah/a$4;->a:Lcn/nubia/camera/ah/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
    .locals 2

    .line 943
    iget-object v0, p0, Lcn/nubia/camera/ah/a$4;->a:Lcn/nubia/camera/ah/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ah/a;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 946
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ah/a$4;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->l(Lcn/nubia/camera/ah/a;)Lcn/nubia/camera/ah/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 947
    iget-object v0, p0, Lcn/nubia/camera/ah/a$4;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->l(Lcn/nubia/camera/ah/a;)Lcn/nubia/camera/ah/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ah/e;->h()V

    .line 948
    iget-object v0, p0, Lcn/nubia/camera/ah/a$4;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->l(Lcn/nubia/camera/ah/a;)Lcn/nubia/camera/ah/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ah/e;->a(Lcn/nubia/camera/ah/a$b;)V

    .line 950
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ah/a$4;->a:Lcn/nubia/camera/ah/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ah/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->G()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, "MultiExposureFragment"

    const-string v1, "onPreviewDataCopy"

    .line 951
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v0, p0, Lcn/nubia/camera/ah/a$4;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0, p1, p2, p3, p4}, Lcn/nubia/camera/ah/a;->a(Lcn/nubia/camera/ah/a;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V

    .line 953
    iget-object p1, p0, Lcn/nubia/camera/ah/a$4;->a:Lcn/nubia/camera/ah/a;

    invoke-static {p1}, Lcn/nubia/camera/ah/a;->m(Lcn/nubia/camera/ah/a;)V

    return-void
.end method
