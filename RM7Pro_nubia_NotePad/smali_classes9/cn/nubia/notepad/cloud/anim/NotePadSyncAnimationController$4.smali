.class Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$4;
.super Ljava/lang/Object;
.source "NotePadSyncAnimationController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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


# direct methods
.method constructor <init>(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    .prologue
    .line 244
    iput-object p1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$4;->this$0:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 247
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 248
    .local v0, "delay":F
    iget-object v1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$4;->this$0:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    invoke-static {v1}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->access$200(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;)Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$ScrollBackAnimationListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$ScrollBackAnimationListener;->onScrollBackToLoadingUpdate(F)V

    .line 249
    return-void
.end method
