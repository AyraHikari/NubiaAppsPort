.class Lcom/android/common/ui/NubiaProgressWheel$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/ui/NubiaProgressWheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/common/ui/NubiaProgressWheel;


# direct methods
.method constructor <init>(Lcom/android/common/ui/NubiaProgressWheel;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/common/ui/NubiaProgressWheel$1;->a:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 43
    iget-object p1, p0, Lcom/android/common/ui/NubiaProgressWheel$1;->a:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {p1}, Lcom/android/common/ui/NubiaProgressWheel;->a(Lcom/android/common/ui/NubiaProgressWheel;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 44
    iget-object p1, p0, Lcom/android/common/ui/NubiaProgressWheel$1;->a:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {p1}, Lcom/android/common/ui/NubiaProgressWheel;->b(Lcom/android/common/ui/NubiaProgressWheel;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/android/common/ui/NubiaProgressWheel$1;->a:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v2}, Lcom/android/common/ui/NubiaProgressWheel;->c(Lcom/android/common/ui/NubiaProgressWheel;)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/android/common/ui/NubiaProgressWheel;->a(Lcom/android/common/ui/NubiaProgressWheel;D)D

    .line 45
    iget-object p1, p0, Lcom/android/common/ui/NubiaProgressWheel$1;->a:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {p1}, Lcom/android/common/ui/NubiaProgressWheel;->postInvalidate()V

    .line 46
    iget-object p1, p0, Lcom/android/common/ui/NubiaProgressWheel$1;->a:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {p1}, Lcom/android/common/ui/NubiaProgressWheel;->d(Lcom/android/common/ui/NubiaProgressWheel;)D

    move-result-wide v0

    const-wide v2, 0x3fd3333340000000L    # 0.30000001192092896

    add-double/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/android/common/ui/NubiaProgressWheel;->b(Lcom/android/common/ui/NubiaProgressWheel;D)D

    .line 47
    iget-object p1, p0, Lcom/android/common/ui/NubiaProgressWheel$1;->a:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {p1}, Lcom/android/common/ui/NubiaProgressWheel;->b(Lcom/android/common/ui/NubiaProgressWheel;)D

    move-result-wide v0

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    cmpl-double p1, v0, v4

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/android/common/ui/NubiaProgressWheel$1;->a:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {p1}, Lcom/android/common/ui/NubiaProgressWheel;->b(Lcom/android/common/ui/NubiaProgressWheel;)D

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmpg-double p1, v0, v4

    if-gtz p1, :cond_2

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/android/common/ui/NubiaProgressWheel$1;->a:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {p1}, Lcom/android/common/ui/NubiaProgressWheel;->c(Lcom/android/common/ui/NubiaProgressWheel;)D

    move-result-wide v0

    cmpl-double p1, v0, v2

    if-nez p1, :cond_1

    .line 49
    iget-object p1, p0, Lcom/android/common/ui/NubiaProgressWheel$1;->a:Lcom/android/common/ui/NubiaProgressWheel;

    const-wide v0, -0x402cccccc0000000L    # -0.30000001192092896

    invoke-static {p1, v0, v1}, Lcom/android/common/ui/NubiaProgressWheel;->c(Lcom/android/common/ui/NubiaProgressWheel;D)D

    goto :goto_0

    .line 51
    :cond_1
    iget-object p1, p0, Lcom/android/common/ui/NubiaProgressWheel$1;->a:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {p1, v2, v3}, Lcom/android/common/ui/NubiaProgressWheel;->c(Lcom/android/common/ui/NubiaProgressWheel;D)D

    :cond_2
    :goto_0
    return-void
.end method
