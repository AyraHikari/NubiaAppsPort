.class Landroid/support/transition/TransitionManager$MultiListener$1;
.super Landroid/support/transition/TransitionListenerAdapter;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/TransitionManager$MultiListener;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/transition/TransitionManager$MultiListener;

.field final synthetic val$runningTransitions:Landroid/support/v4/util/ArrayMap;


# direct methods
.method constructor <init>(Landroid/support/transition/TransitionManager$MultiListener;Landroid/support/v4/util/ArrayMap;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/transition/TransitionManager$MultiListener;

    .prologue
    .line 276
    iput-object p1, p0, Landroid/support/transition/TransitionManager$MultiListener$1;->this$0:Landroid/support/transition/TransitionManager$MultiListener;

    iput-object p2, p0, Landroid/support/transition/TransitionManager$MultiListener$1;->val$runningTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-direct {p0}, Landroid/support/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/support/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 279
    iget-object v1, p0, Landroid/support/transition/TransitionManager$MultiListener$1;->val$runningTransitions:Landroid/support/v4/util/ArrayMap;

    iget-object v2, p0, Landroid/support/transition/TransitionManager$MultiListener$1;->this$0:Landroid/support/transition/TransitionManager$MultiListener;

    iget-object v2, v2, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 280
    .local v0, "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 281
    return-void
.end method
