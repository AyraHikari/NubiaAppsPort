.class Lcn/nubia/deskclock/ui/StopWatchClockView$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StopWatchClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/StopWatchClockView;->setExitAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/StopWatchClockView;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/StopWatchClockView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/StopWatchClockView;

    .prologue
    .line 386
    iput-object p1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$14;->this$0:Lcn/nubia/deskclock/ui/StopWatchClockView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 389
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$14;->this$0:Lcn/nubia/deskclock/ui/StopWatchClockView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/deskclock/ui/StopWatchClockView;->access$502(Lcn/nubia/deskclock/ui/StopWatchClockView;F)F

    .line 390
    return-void
.end method
