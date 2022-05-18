.class Lcn/nubia/camera/q/m$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/q/m;->a(Landroidx/constraintlayout/widget/ConstraintLayout;IIILjava/util/ArrayList;Ljava/util/ArrayList;IILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/common/ui/a;

.field final synthetic b:Lcn/nubia/camera/q/m;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/m;Lcom/android/common/ui/a;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcn/nubia/camera/q/m$8;->b:Lcn/nubia/camera/q/m;

    iput-object p2, p0, Lcn/nubia/camera/q/m$8;->a:Lcom/android/common/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 484
    iget-object v0, p0, Lcn/nubia/camera/q/m$8;->b:Lcn/nubia/camera/q/m;

    invoke-static {v0}, Lcn/nubia/camera/q/m;->r(Lcn/nubia/camera/q/m;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 487
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/m$8;->a:Lcom/android/common/ui/a;

    instance-of v0, v0, Lcn/nubia/camera/extendedUI/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/q/m$8;->b:Lcn/nubia/camera/q/m;

    invoke-static {v0}, Lcn/nubia/camera/q/m;->s(Lcn/nubia/camera/q/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 490
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/q/m$8;->b:Lcn/nubia/camera/q/m;

    invoke-virtual {v0}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/e;->d:Lcn/nubia/camera/d/e;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method
