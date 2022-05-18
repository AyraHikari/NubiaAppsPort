.class Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior$1;
.super Ljava/lang/Object;
.source "AppBarLayoutSpringBehavior.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->animateRecoverBySpring(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;

.field final synthetic val$abl:Lcom/google/android/material/appbar/AppBarLayout;

.field final synthetic val$coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior$1;->this$0:Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;

    iput-object p2, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior$1;->val$coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p3, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior$1;->val$abl:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 301
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 302
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior$1;->this$0:Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;

    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior$1;->val$coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior$1;->val$abl:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->access$000(Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V

    return-void
.end method
