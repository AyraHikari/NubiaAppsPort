.class Lcn/nubia/deskclock/DeskClock$1;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/DeskClock;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/DeskClock;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/DeskClock;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/DeskClock;

    .prologue
    .line 212
    iput-object p1, p0, Lcn/nubia/deskclock/DeskClock$1;->this$0:Lcn/nubia/deskclock/DeskClock;

    iput-object p2, p0, Lcn/nubia/deskclock/DeskClock$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 216
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock$1;->this$0:Lcn/nubia/deskclock/DeskClock;

    invoke-static {v0}, Lcn/nubia/deskclock/DeskClock;->access$100(Lcn/nubia/deskclock/DeskClock;)Lcn/nubia/deskclock/control/AnimationClockManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock$1;->this$0:Lcn/nubia/deskclock/DeskClock;

    invoke-static {v1}, Lcn/nubia/deskclock/DeskClock;->access$000(Lcn/nubia/deskclock/DeskClock;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/control/AnimationClockManager;->getAnimationOperator(I)Lcn/nubia/deskclock/inter/IAnimationOperator;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/deskclock/inter/IAnimationOperator;->startAnimation()V

    .line 217
    return-void
.end method
