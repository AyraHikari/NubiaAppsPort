.class Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotePadSyncAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->doScrollBackAnimation(FF)V
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
    .line 228
    iput-object p1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$3;->this$0:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 231
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$3;->this$0:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->access$302(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;I)I

    .line 232
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$3;->this$0:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    invoke-static {v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->access$400(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;)V

    .line 233
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$3;->this$0:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    invoke-static {v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->access$200(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;)Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$ScrollBackAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$ScrollBackAnimationListener;->animationEnd()V

    .line 234
    return-void
.end method
