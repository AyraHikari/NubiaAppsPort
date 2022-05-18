.class Lcn/nubia/deskclock/ui/HintView$ScanTextControl$1;
.super Ljava/lang/Object;
.source "HintView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/HintView$ScanTextControl;->newTimeRunnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private currTime:J

.field private lastTime:J

.field final synthetic this$1:Lcn/nubia/deskclock/ui/HintView$ScanTextControl;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/HintView$ScanTextControl;)V
    .locals 2
    .param p1, "this$1"    # Lcn/nubia/deskclock/ui/HintView$ScanTextControl;

    .prologue
    .line 222
    iput-object p1, p0, Lcn/nubia/deskclock/ui/HintView$ScanTextControl$1;->this$1:Lcn/nubia/deskclock/ui/HintView$ScanTextControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/deskclock/ui/HintView$ScanTextControl$1;->lastTime:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/deskclock/ui/HintView$ScanTextControl$1;->currTime:J

    .line 229
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView$ScanTextControl$1;->this$1:Lcn/nubia/deskclock/ui/HintView$ScanTextControl;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/HintView$ScanTextControl;->this$0:Lcn/nubia/deskclock/ui/HintView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/HintView;->access$300(Lcn/nubia/deskclock/ui/HintView;)V

    .line 230
    iget-wide v0, p0, Lcn/nubia/deskclock/ui/HintView$ScanTextControl$1;->currTime:J

    iget-wide v2, p0, Lcn/nubia/deskclock/ui/HintView$ScanTextControl$1;->lastTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView$ScanTextControl$1;->this$1:Lcn/nubia/deskclock/ui/HintView$ScanTextControl;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/HintView$ScanTextControl;->this$0:Lcn/nubia/deskclock/ui/HintView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/HintView;->access$400(Lcn/nubia/deskclock/ui/HintView;)V

    .line 232
    iget-wide v0, p0, Lcn/nubia/deskclock/ui/HintView$ScanTextControl$1;->currTime:J

    iput-wide v0, p0, Lcn/nubia/deskclock/ui/HintView$ScanTextControl$1;->lastTime:J

    .line 234
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView$ScanTextControl$1;->this$1:Lcn/nubia/deskclock/ui/HintView$ScanTextControl;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/HintView$ScanTextControl;->this$0:Lcn/nubia/deskclock/ui/HintView;

    invoke-virtual {v0, p0}, Lcn/nubia/deskclock/ui/HintView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 235
    return-void
.end method
