.class Lcn/nubia/weather/ui/view/CircleView$1;
.super Ljava/lang/Object;
.source "CircleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/view/CircleView;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private currTime:J

.field private n:J

.field final synthetic this$0:Lcn/nubia/weather/ui/view/CircleView;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/view/CircleView;)V
    .locals 2
    .param p1, "this$0"    # Lcn/nubia/weather/ui/view/CircleView;

    .prologue
    .line 76
    iput-object p1, p0, Lcn/nubia/weather/ui/view/CircleView$1;->this$0:Lcn/nubia/weather/ui/view/CircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/weather/ui/view/CircleView$1;->currTime:J

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/weather/ui/view/CircleView$1;->n:J

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 83
    .local v0, "lastTime":J
    iget-wide v2, p0, Lcn/nubia/weather/ui/view/CircleView$1;->currTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d

    iget-wide v6, p0, Lcn/nubia/weather/ui/view/CircleView$1;->n:J

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 84
    iget-object v2, p0, Lcn/nubia/weather/ui/view/CircleView$1;->this$0:Lcn/nubia/weather/ui/view/CircleView;

    iget-object v3, p0, Lcn/nubia/weather/ui/view/CircleView$1;->this$0:Lcn/nubia/weather/ui/view/CircleView;

    invoke-static {v3}, Lcn/nubia/weather/ui/view/CircleView;->access$000(Lcn/nubia/weather/ui/view/CircleView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x2d

    invoke-static {v2, v3}, Lcn/nubia/weather/ui/view/CircleView;->access$002(Lcn/nubia/weather/ui/view/CircleView;I)I

    .line 85
    iget-wide v2, p0, Lcn/nubia/weather/ui/view/CircleView$1;->n:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcn/nubia/weather/ui/view/CircleView$1;->n:J

    .line 86
    iget-object v2, p0, Lcn/nubia/weather/ui/view/CircleView$1;->this$0:Lcn/nubia/weather/ui/view/CircleView;

    invoke-static {v2}, Lcn/nubia/weather/ui/view/CircleView;->access$000(Lcn/nubia/weather/ui/view/CircleView;)I

    move-result v2

    const/16 v3, 0x168

    if-ne v2, v3, :cond_0

    .line 87
    iget-object v2, p0, Lcn/nubia/weather/ui/view/CircleView$1;->this$0:Lcn/nubia/weather/ui/view/CircleView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/nubia/weather/ui/view/CircleView;->access$002(Lcn/nubia/weather/ui/view/CircleView;I)I

    .line 88
    :cond_0
    iget-object v2, p0, Lcn/nubia/weather/ui/view/CircleView$1;->this$0:Lcn/nubia/weather/ui/view/CircleView;

    invoke-virtual {v2}, Lcn/nubia/weather/ui/view/CircleView;->invalidate()V

    .line 90
    :cond_1
    return-void
.end method
