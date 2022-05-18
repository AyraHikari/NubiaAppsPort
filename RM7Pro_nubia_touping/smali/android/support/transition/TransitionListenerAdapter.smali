.class public Landroid/support/transition/TransitionListenerAdapter;
.super Ljava/lang/Object;
.source "TransitionListenerAdapter.java"

# interfaces
.implements Landroid/support/transition/Transition$TransitionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
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
    .line 39
    return-void
.end method

.method public onTransitionEnd(Landroid/support/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    return-void
.end method

.method public onTransitionPause(Landroid/support/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    return-void
.end method

.method public onTransitionResume(Landroid/support/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 47
    return-void
.end method

.method public onTransitionStart(Landroid/support/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    return-void
.end method
