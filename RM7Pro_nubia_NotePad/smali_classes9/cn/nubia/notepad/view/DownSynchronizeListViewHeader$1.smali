.class Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$1;
.super Ljava/lang/Object;
.source "DownSynchronizeListViewHeader.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->startAlphaAnimation()V
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
    .line 227
    iput-object p1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$1;->this$0:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 231
    iget-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$1;->this$0:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->access$002(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;F)F

    .line 232
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$1;->this$0:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    invoke-static {v0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->access$100(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$1;->this$0:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    invoke-static {v1}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->access$000(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 233
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$1;->this$0:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    invoke-static {v0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->access$200(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$1;->this$0:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    invoke-static {v1}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->access$000(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 234
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$1;->this$0:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    invoke-static {v0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->access$300(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$1;->this$0:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    invoke-static {v1}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->access$000(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 237
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$1;->this$0:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->invalidate()V

    .line 238
    return-void
.end method
