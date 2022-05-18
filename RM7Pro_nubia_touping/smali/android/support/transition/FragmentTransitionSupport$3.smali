.class Landroid/support/transition/FragmentTransitionSupport$3;
.super Ljava/lang/Object;
.source "FragmentTransitionSupport.java"

# interfaces
.implements Landroid/support/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/FragmentTransitionSupport;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/transition/FragmentTransitionSupport;

.field final synthetic val$enterTransition:Ljava/lang/Object;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$exitTransition:Ljava/lang/Object;

.field final synthetic val$exitingViews:Ljava/util/ArrayList;

.field final synthetic val$sharedElementTransition:Ljava/lang/Object;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/support/transition/FragmentTransitionSupport;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/transition/FragmentTransitionSupport;

    .prologue
    .line 218
    iput-object p1, p0, Landroid/support/transition/FragmentTransitionSupport$3;->this$0:Landroid/support/transition/FragmentTransitionSupport;

    iput-object p2, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$enterTransition:Ljava/lang/Object;

    iput-object p3, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$enteringViews:Ljava/util/ArrayList;

    iput-object p4, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$exitTransition:Ljava/lang/Object;

    iput-object p5, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$exitingViews:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$sharedElementTransition:Ljava/lang/Object;

    iput-object p7, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/support/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 238
    return-void
.end method

.method public onTransitionEnd(Landroid/support/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 234
    return-void
.end method

.method public onTransitionPause(Landroid/support/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 242
    return-void
.end method

.method public onTransitionResume(Landroid/support/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 246
    return-void
.end method

.method public onTransitionStart(Landroid/support/transition/Transition;)V
    .locals 4
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 221
    iget-object v0, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$enterTransition:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Landroid/support/transition/FragmentTransitionSupport$3;->this$0:Landroid/support/transition/FragmentTransitionSupport;

    iget-object v1, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$enterTransition:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$enteringViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 224
    :cond_0
    iget-object v0, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$exitTransition:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Landroid/support/transition/FragmentTransitionSupport$3;->this$0:Landroid/support/transition/FragmentTransitionSupport;

    iget-object v1, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$exitTransition:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$exitingViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 227
    :cond_1
    iget-object v0, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$sharedElementTransition:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Landroid/support/transition/FragmentTransitionSupport$3;->this$0:Landroid/support/transition/FragmentTransitionSupport;

    iget-object v1, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$sharedElementTransition:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/transition/FragmentTransitionSupport$3;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 230
    :cond_2
    return-void
.end method
