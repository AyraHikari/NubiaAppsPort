.class Lcn/nubia/camera/prosetting/ui/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/prosetting/ui/a;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/prosetting/ui/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/prosetting/ui/a;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/a$3;->a:Lcn/nubia/camera/prosetting/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 393
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a$3;->a:Lcn/nubia/camera/prosetting/ui/a;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcn/nubia/camera/prosetting/ui/a;->e:F

    .line 394
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationUpdate2 mMiddleBaseX: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/a$3;->a:Lcn/nubia/camera/prosetting/ui/a;

    iget v0, v0, Lcn/nubia/camera/prosetting/ui/a;->e:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GraduationBaseView"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object p1, p0, Lcn/nubia/camera/prosetting/ui/a$3;->a:Lcn/nubia/camera/prosetting/ui/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/camera/prosetting/ui/a;->a(Lcn/nubia/camera/prosetting/ui/a;Z)Z

    .line 396
    iget-object p1, p0, Lcn/nubia/camera/prosetting/ui/a$3;->a:Lcn/nubia/camera/prosetting/ui/a;

    invoke-virtual {p1}, Lcn/nubia/camera/prosetting/ui/a;->postInvalidate()V

    return-void
.end method
