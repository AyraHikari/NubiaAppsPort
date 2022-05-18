.class Lcn/nubia/gallery3d/ui/DetailsPopView$6;
.super Ljava/lang/Object;
.source "DetailsPopView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/DetailsPopView;->startExitAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/DetailsPopView;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/DetailsPopView;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView$6;->this$0:Lcn/nubia/gallery3d/ui/DetailsPopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView$6;->this$0:Lcn/nubia/gallery3d/ui/DetailsPopView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/DetailsPopView;->access$200(Lcn/nubia/gallery3d/ui/DetailsPopView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
