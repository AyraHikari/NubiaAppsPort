.class Lcom/zte/camera/ui/common/VlogCountDownButton$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/camera/ui/common/VlogCountDownButton;->a(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zte/camera/ui/common/VlogCountDownButton;


# direct methods
.method constructor <init>(Lcom/zte/camera/ui/common/VlogCountDownButton;JJ)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/zte/camera/ui/common/VlogCountDownButton$1;->a:Lcom/zte/camera/ui/common/VlogCountDownButton;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogCountDownButton$1;->a:Lcom/zte/camera/ui/common/VlogCountDownButton;

    const-string v1, "0.0S"

    invoke-static {v0, v1}, Lcom/zte/camera/ui/common/VlogCountDownButton;->a(Lcom/zte/camera/ui/common/VlogCountDownButton;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogCountDownButton$1;->a:Lcom/zte/camera/ui/common/VlogCountDownButton;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/zte/camera/ui/common/VlogCountDownButton;->a(Lcom/zte/camera/ui/common/VlogCountDownButton;I)I

    .line 191
    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogCountDownButton$1;->a:Lcom/zte/camera/ui/common/VlogCountDownButton;

    invoke-virtual {v0}, Lcom/zte/camera/ui/common/VlogCountDownButton;->postInvalidate()V

    .line 192
    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogCountDownButton$1;->a:Lcom/zte/camera/ui/common/VlogCountDownButton;

    invoke-static {v0}, Lcom/zte/camera/ui/common/VlogCountDownButton;->b(Lcom/zte/camera/ui/common/VlogCountDownButton;)Lcom/zte/camera/ui/common/VlogCountDownButton$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogCountDownButton$1;->a:Lcom/zte/camera/ui/common/VlogCountDownButton;

    invoke-static {v0}, Lcom/zte/camera/ui/common/VlogCountDownButton;->b(Lcom/zte/camera/ui/common/VlogCountDownButton;)Lcom/zte/camera/ui/common/VlogCountDownButton$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/camera/ui/common/VlogCountDownButton$a;->i()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 6

    .line 180
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float v1, p1, p2

    .line 182
    iget-object v2, p0, Lcom/zte/camera/ui/common/VlogCountDownButton$1;->a:Lcom/zte/camera/ui/common/VlogCountDownButton;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zte/camera/ui/common/VlogCountDownButton;->a(Lcom/zte/camera/ui/common/VlogCountDownButton;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogCountDownButton$1;->a:Lcom/zte/camera/ui/common/VlogCountDownButton;

    invoke-static {v0}, Lcom/zte/camera/ui/common/VlogCountDownButton;->a(Lcom/zte/camera/ui/common/VlogCountDownButton;)J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr p1, v1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    rsub-int p1, p1, 0x3e8

    invoke-static {v0, p1}, Lcom/zte/camera/ui/common/VlogCountDownButton;->a(Lcom/zte/camera/ui/common/VlogCountDownButton;I)I

    .line 184
    iget-object p1, p0, Lcom/zte/camera/ui/common/VlogCountDownButton$1;->a:Lcom/zte/camera/ui/common/VlogCountDownButton;

    invoke-virtual {p1}, Lcom/zte/camera/ui/common/VlogCountDownButton;->postInvalidate()V

    return-void
.end method
