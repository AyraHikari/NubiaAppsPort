.class Lcn/nubia/deskclock/ui/ClockView$18;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/ClockView;->buildHandsAndDialEnterAnimatorSet(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/ClockView;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/ClockView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/ClockView;

    .prologue
    .line 540
    iput-object p1, p0, Lcn/nubia/deskclock/ui/ClockView$18;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 543
    return-void
.end method
