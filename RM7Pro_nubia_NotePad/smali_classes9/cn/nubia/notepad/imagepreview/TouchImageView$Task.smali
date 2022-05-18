.class Lcn/nubia/notepad/imagepreview/TouchImageView$Task;
.super Ljava/util/TimerTask;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/imagepreview/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;


# direct methods
.method private constructor <init>(Lcn/nubia/notepad/imagepreview/TouchImageView;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$Task;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/notepad/imagepreview/TouchImageView;Lcn/nubia/notepad/imagepreview/TouchImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/notepad/imagepreview/TouchImageView;
    .param p2, "x1"    # Lcn/nubia/notepad/imagepreview/TouchImageView$1;

    .prologue
    .line 428
    invoke-direct {p0, p1}, Lcn/nubia/notepad/imagepreview/TouchImageView$Task;-><init>(Lcn/nubia/notepad/imagepreview/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$Task;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    invoke-static {v0}, Lcn/nubia/notepad/imagepreview/TouchImageView;->access$1400(Lcn/nubia/notepad/imagepreview/TouchImageView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 431
    return-void
.end method
