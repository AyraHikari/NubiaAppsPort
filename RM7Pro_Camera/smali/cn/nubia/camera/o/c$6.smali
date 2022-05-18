.class Lcn/nubia/camera/o/c$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/o/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/o/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/o/c;)V
    .locals 0

    .line 995
    iput-object p1, p0, Lcn/nubia/camera/o/c$6;->a:Lcn/nubia/camera/o/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
    .locals 2

    .line 999
    iget-object v0, p0, Lcn/nubia/camera/o/c$6;->a:Lcn/nubia/camera/o/c;

    invoke-static {v0}, Lcn/nubia/camera/o/c;->n(Lcn/nubia/camera/o/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_0

    .line 1000
    iget-object v0, p0, Lcn/nubia/camera/o/c$6;->a:Lcn/nubia/camera/o/c;

    invoke-virtual {v0}, Lcn/nubia/camera/o/c;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->P()Lcn/nubia/camera/z/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/z/b;->a(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1001
    iget-object v0, p0, Lcn/nubia/camera/o/c$6;->a:Lcn/nubia/camera/o/c;

    invoke-static {v0, p1, p2, p3, p4}, Lcn/nubia/camera/o/c;->a(Lcn/nubia/camera/o/c;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V

    goto :goto_0

    .line 1004
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/o/c$6;->a:Lcn/nubia/camera/o/c;

    invoke-static {v0, p1, p2, p3, p4}, Lcn/nubia/camera/o/c;->a(Lcn/nubia/camera/o/c;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V

    .line 1007
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/o/c$6;->a:Lcn/nubia/camera/o/c;

    invoke-static {p1}, Lcn/nubia/camera/o/c;->h(Lcn/nubia/camera/o/c;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object p1

    sget-object p2, Lcom/android/common/ui/shutterbutton/d;->a:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {p1, p2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    .line 1008
    iget-object p1, p0, Lcn/nubia/camera/o/c$6;->a:Lcn/nubia/camera/o/c;

    invoke-static {p1}, Lcn/nubia/camera/o/c;->h(Lcn/nubia/camera/o/c;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZ)V

    return-void
.end method
