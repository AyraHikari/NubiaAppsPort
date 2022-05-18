.class Lcn/nubia/camera/q/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/q/a;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcn/nubia/camera/q/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/a;Landroid/view/View;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcn/nubia/camera/q/a$3;->b:Lcn/nubia/camera/q/a;

    iput-object p2, p0, Lcn/nubia/camera/q/a$3;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 503
    iget-object v0, p0, Lcn/nubia/camera/q/a$3;->b:Lcn/nubia/camera/q/a;

    invoke-virtual {v0}, Lcn/nubia/camera/q/a;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcn/nubia/camera/q/a$3;->b:Lcn/nubia/camera/q/a;

    invoke-virtual {v0}, Lcn/nubia/camera/q/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->J()Lcn/nubia/camera/q/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcn/nubia/camera/q/a$3;->b:Lcn/nubia/camera/q/a;

    invoke-virtual {v0}, Lcn/nubia/camera/q/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->J()Lcn/nubia/camera/q/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/q/h;->a()V

    .line 507
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/a$3;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method
