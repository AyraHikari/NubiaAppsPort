.class Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$3;
.super Ljava/lang/Object;
.source "DownSynchronizeListViewHeader.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->startArrowAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    .prologue
    .line 271
    iput-object p1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$3;->this$0:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 276
    iget-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$3;->this$0:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v2

    invoke-static {v1, v0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->access$402(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;F)F

    .line 277
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$3;->this$0:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    invoke-static {v0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->access$500(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$3;->this$0:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    invoke-static {v1}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->access$400(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 278
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$3;->this$0:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->invalidate()V

    .line 279
    return-void
.end method
