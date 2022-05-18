.class Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DownSynchronizeListViewHeader.java"


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
    .line 241
    iput-object p1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$2;->this$0:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 244
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$2;->this$0:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->access$002(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;F)F

    .line 245
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$2;->this$0:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    invoke-static {v0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->access$100(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$2;->this$0:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    invoke-static {v1}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->access$000(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 246
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$2;->this$0:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    invoke-static {v0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->access$200(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$2;->this$0:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    invoke-static {v1}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->access$000(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 247
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$2;->this$0:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    invoke-static {v0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->access$300(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$2;->this$0:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    invoke-static {v1}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->access$000(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 249
    return-void
.end method
