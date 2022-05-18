.class Lcom/zte/camera/ui/common/ProgressDrawable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/camera/ui/common/ProgressDrawable;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zte/camera/ui/common/ProgressDrawable;


# direct methods
.method constructor <init>(Lcom/zte/camera/ui/common/ProgressDrawable;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/zte/camera/ui/common/ProgressDrawable$1;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable$1;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v0}, Lcom/zte/camera/ui/common/ProgressDrawable;->a(Lcom/zte/camera/ui/common/ProgressDrawable;)F

    move-result v1

    const-wide/16 v2, 0x78

    mul-long/2addr p4, v2

    long-to-float p4, p4

    const/high16 p5, 0x447a0000    # 1000.0f

    div-float/2addr p4, p5

    add-float/2addr v1, p4

    const/high16 p4, 0x43b40000    # 360.0f

    rem-float/2addr v1, p4

    invoke-static {v0, v1}, Lcom/zte/camera/ui/common/ProgressDrawable;->a(Lcom/zte/camera/ui/common/ProgressDrawable;F)F

    .line 146
    new-instance p4, Landroid/view/animation/PathInterpolator;

    const/high16 p5, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p4, p5, v0, p5, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    long-to-float p5, p2

    const v0, 0x450fc000    # 2300.0f

    div-float/2addr p5, v0

    invoke-virtual {p4, p5}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p4

    .line 147
    iget-object p5, p0, Lcom/zte/camera/ui/common/ProgressDrawable$1;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {p5, p4}, Lcom/zte/camera/ui/common/ProgressDrawable;->b(Lcom/zte/camera/ui/common/ProgressDrawable;F)V

    const-wide/16 p4, 0x8fc

    cmp-long p2, p2, p4

    if-ltz p2, :cond_0

    const-wide/16 p2, 0x0

    .line 149
    invoke-virtual {p1, p2, p3}, Landroid/animation/TimeAnimator;->setCurrentPlayTime(J)V

    :cond_0
    return-void
.end method
