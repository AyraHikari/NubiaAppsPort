.class Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl$1;
.super Ljava/lang/Object;
.source "DownSynchronizeListViewHeader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;->newTimeRunnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private currTime:J

.field private lastTime:J

.field final synthetic this$1:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;)V
    .locals 2
    .param p1, "this$1"    # Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;

    .prologue
    .line 349
    iput-object p1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl$1;->this$1:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl$1;->lastTime:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl$1;->currTime:J

    .line 356
    iget-wide v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl$1;->currTime:J

    iget-wide v2, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl$1;->lastTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl$1;->this$1:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;

    iget-object v0, v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;->this$0:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->setHandAngle()V

    .line 358
    iget-wide v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl$1;->currTime:J

    iput-wide v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl$1;->lastTime:J

    .line 360
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl$1;->this$1:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;

    iget-object v0, v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;->this$0:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    invoke-virtual {v0, p0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 361
    return-void
.end method
