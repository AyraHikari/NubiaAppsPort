.class Lcn/nubia/deskclock/ui/CountDownRingDownView$1;
.super Ljava/lang/Object;
.source "CountDownRingDownView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/CountDownRingDownView;->startAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/CountDownRingDownView;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/CountDownRingDownView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/CountDownRingDownView;

    .prologue
    .line 42
    iput-object p1, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView$1;->this$0:Lcn/nubia/deskclock/ui/CountDownRingDownView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView$1;->this$0:Lcn/nubia/deskclock/ui/CountDownRingDownView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/CountDownRingDownView;->access$000(Lcn/nubia/deskclock/ui/CountDownRingDownView;)V

    .line 46
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView$1;->this$0:Lcn/nubia/deskclock/ui/CountDownRingDownView;

    const-wide/16 v2, 0x640

    invoke-virtual {v0, p0, v2, v3}, Lcn/nubia/deskclock/ui/CountDownRingDownView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 48
    return-void
.end method
