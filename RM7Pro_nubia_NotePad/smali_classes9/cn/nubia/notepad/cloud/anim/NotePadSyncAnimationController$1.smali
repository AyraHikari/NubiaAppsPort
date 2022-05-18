.class Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$1;
.super Ljava/lang/Object;
.source "NotePadSyncAnimationController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->startLoadingAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastTime:J

.field final synthetic this$0:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;)V
    .locals 2
    .param p1, "this$0"    # Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    .prologue
    .line 123
    iput-object p1, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$1;->this$0:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$1;->lastTime:J

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 129
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$1;->lastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 130
    iput-wide v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$1;->lastTime:J

    .line 131
    iget-object v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$1;->this$0:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    iget-object v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$1;->this$0:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    invoke-static {v3}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->access$000(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;)F

    move-result v3

    const/high16 v4, 0x42340000    # 45.0f

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->access$002(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;F)F

    .line 132
    iget-object v2, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$1;->this$0:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    invoke-static {v2}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->access$100(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController$1;->this$0:Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;

    invoke-static {v3}, Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;->access$000(Lcn/nubia/notepad/cloud/anim/NotePadSyncAnimationController;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 134
    :cond_0
    return-void
.end method
