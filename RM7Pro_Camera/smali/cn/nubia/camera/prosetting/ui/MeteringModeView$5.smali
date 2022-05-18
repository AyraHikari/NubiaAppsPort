.class Lcn/nubia/camera/prosetting/ui/MeteringModeView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/prosetting/ui/MeteringModeView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/prosetting/ui/MeteringModeView;


# direct methods
.method constructor <init>(Lcn/nubia/camera/prosetting/ui/MeteringModeView;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView$5;->a:Lcn/nubia/camera/prosetting/ui/MeteringModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 442
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView$5;->a:Lcn/nubia/camera/prosetting/ui/MeteringModeView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->a(Lcn/nubia/camera/prosetting/ui/MeteringModeView;F)F

    .line 443
    iget-object p1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView$5;->a:Lcn/nubia/camera/prosetting/ui/MeteringModeView;

    invoke-virtual {p1}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->postInvalidate()V

    return-void
.end method
