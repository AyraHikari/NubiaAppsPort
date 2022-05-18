.class Lcn/nubia/camera/q/m$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/q/m;->a(Landroidx/constraintlayout/widget/ConstraintLayout;IIILjava/util/ArrayList;Ljava/util/ArrayList;IILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/m;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/m;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcn/nubia/camera/q/m$7;->a:Lcn/nubia/camera/q/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 468
    iget-object v0, p0, Lcn/nubia/camera/q/m$7;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->d:Lcn/nubia/camera/d/e;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/e;)V

    goto :goto_0

    .line 470
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/m$7;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->d:Lcn/nubia/camera/d/e;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->b(Lcn/nubia/camera/d/e;)V

    .line 472
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/q/m$7;->a:Lcn/nubia/camera/q/m;

    invoke-static {v0}, Lcn/nubia/camera/q/m;->q(Lcn/nubia/camera/q/m;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 473
    iget-object v0, p0, Lcn/nubia/camera/q/m$7;->a:Lcn/nubia/camera/q/m;

    invoke-static {v0}, Lcn/nubia/camera/q/m;->q(Lcn/nubia/camera/q/m;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/q/m$b;

    if-eqz v1, :cond_1

    .line 475
    invoke-interface {v1, p1}, Lcn/nubia/camera/q/m$b;->a(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method
