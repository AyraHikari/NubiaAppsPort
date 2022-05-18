.class Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotePadSyncAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->doScrollBackToLoadingAnimation(FFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

.field final synthetic val$canLoading:Z


# direct methods
.method constructor <init>(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;Z)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    .prologue
    .line 251
    iput-object p1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$5;->this$0:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    iput-boolean p2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$5;->val$canLoading:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 254
    iget-boolean v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$5;->val$canLoading:Z

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$5;->this$0:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->access$302(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;I)I

    .line 256
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$5;->this$0:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    invoke-static {v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->access$500(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$5;->this$0:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    invoke-static {v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->access$100(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$5;->this$0:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    invoke-static {v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->access$700(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$5;->this$0:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    invoke-static {v1}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->access$600(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$5;->this$0:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    invoke-static {v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->access$200(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;)Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$ScrollBackAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$ScrollBackAnimationListener;->canLoadingData()V

    .line 260
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$5;->this$0:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    invoke-static {v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->access$800(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$5;->this$0:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    invoke-static {v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->access$200(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;)Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$ScrollBackAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$ScrollBackAnimationListener;->animationEnd()V

    .line 263
    return-void
.end method
