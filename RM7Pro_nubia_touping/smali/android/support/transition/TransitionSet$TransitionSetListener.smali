.class Landroid/support/transition/TransitionSet$TransitionSetListener;
.super Landroid/support/transition/TransitionListenerAdapter;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/TransitionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionSetListener"
.end annotation


# instance fields
.field mTransitionSet:Landroid/support/transition/TransitionSet;


# direct methods
.method constructor <init>(Landroid/support/transition/TransitionSet;)V
    .locals 0
    .param p1, "transitionSet"    # Landroid/support/transition/TransitionSet;

    .prologue
    .line 378
    invoke-direct {p0}, Landroid/support/transition/TransitionListenerAdapter;-><init>()V

    .line 379
    iput-object p1, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    .line 380
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/support/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 392
    iget-object v0, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    invoke-static {v0}, Landroid/support/transition/TransitionSet;->access$106(Landroid/support/transition/TransitionSet;)I

    .line 393
    iget-object v0, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    invoke-static {v0}, Landroid/support/transition/TransitionSet;->access$100(Landroid/support/transition/TransitionSet;)I

    move-result v0

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/transition/TransitionSet;->access$002(Landroid/support/transition/TransitionSet;Z)Z

    .line 396
    iget-object v0, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    invoke-virtual {v0}, Landroid/support/transition/TransitionSet;->end()V

    .line 398
    :cond_0
    invoke-virtual {p1, p0}, Landroid/support/transition/Transition;->removeListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 399
    return-void
.end method

.method public onTransitionStart(Landroid/support/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 384
    iget-object v0, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    invoke-static {v0}, Landroid/support/transition/TransitionSet;->access$000(Landroid/support/transition/TransitionSet;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    invoke-virtual {v0}, Landroid/support/transition/TransitionSet;->start()V

    .line 386
    iget-object v0, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/transition/TransitionSet;->access$002(Landroid/support/transition/TransitionSet;Z)Z

    .line 388
    :cond_0
    return-void
.end method
