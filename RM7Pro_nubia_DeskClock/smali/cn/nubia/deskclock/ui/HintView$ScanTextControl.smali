.class Lcn/nubia/deskclock/ui/HintView$ScanTextControl;
.super Ljava/lang/Object;
.source "HintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/HintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanTextControl"
.end annotation


# instance fields
.field private mTimeRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcn/nubia/deskclock/ui/HintView;


# direct methods
.method private constructor <init>(Lcn/nubia/deskclock/ui/HintView;)V
    .locals 1

    .prologue
    .line 217
    iput-object p1, p0, Lcn/nubia/deskclock/ui/HintView$ScanTextControl;->this$0:Lcn/nubia/deskclock/ui/HintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/HintView$ScanTextControl;->mTimeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/deskclock/ui/HintView;Lcn/nubia/deskclock/ui/HintView$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/deskclock/ui/HintView;
    .param p2, "x1"    # Lcn/nubia/deskclock/ui/HintView$1;

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/HintView$ScanTextControl;-><init>(Lcn/nubia/deskclock/ui/HintView;)V

    return-void
.end method

.method private newTimeRunnable()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView$ScanTextControl;->mTimeRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lcn/nubia/deskclock/ui/HintView$ScanTextControl$1;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/ui/HintView$ScanTextControl$1;-><init>(Lcn/nubia/deskclock/ui/HintView$ScanTextControl;)V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/HintView$ScanTextControl;->mTimeRunnable:Ljava/lang/Runnable;

    .line 237
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView$ScanTextControl;->this$0:Lcn/nubia/deskclock/ui/HintView;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/HintView$ScanTextControl;->mTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/HintView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 239
    :cond_0
    return-void
.end method


# virtual methods
.method public StopScanTextRunnable()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView$ScanTextControl;->mTimeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView$ScanTextControl;->this$0:Lcn/nubia/deskclock/ui/HintView;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/HintView$ScanTextControl;->mTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/HintView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/HintView$ScanTextControl;->mTimeRunnable:Ljava/lang/Runnable;

    .line 250
    :cond_0
    return-void
.end method

.method public startScanTextRunnable()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/HintView$ScanTextControl;->newTimeRunnable()V

    .line 243
    return-void
.end method
