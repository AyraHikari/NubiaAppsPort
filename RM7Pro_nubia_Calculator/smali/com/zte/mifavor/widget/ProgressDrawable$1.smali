.class Lcom/zte/mifavor/widget/ProgressDrawable$1;
.super Ljava/lang/Object;
.source "ProgressDrawable.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/ProgressDrawable;->generateTimeAnimtor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/ProgressDrawable;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/ProgressDrawable;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/zte/mifavor/widget/ProgressDrawable$1;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable$1;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    iget-object v1, p0, Lcom/zte/mifavor/widget/ProgressDrawable$1;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$000(Lcom/zte/mifavor/widget/ProgressDrawable;)F

    move-result v1

    const-wide/16 v2, 0x78

    mul-long/2addr p4, v2

    long-to-float p4, p4

    const/high16 p5, 0x447a0000    # 1000.0f

    div-float/2addr p4, p5

    add-float/2addr v1, p4

    const/high16 p4, 0x43b40000    # 360.0f

    rem-float/2addr v1, p4

    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$002(Lcom/zte/mifavor/widget/ProgressDrawable;F)F

    .line 152
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

    .line 153
    iget-object p0, p0, Lcom/zte/mifavor/widget/ProgressDrawable$1;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {p0, p4}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$100(Lcom/zte/mifavor/widget/ProgressDrawable;F)V

    const-wide/16 p4, 0x8fc

    cmp-long p0, p2, p4

    if-ltz p0, :cond_0

    const-wide/16 p2, 0x0

    .line 156
    invoke-virtual {p1, p2, p3}, Landroid/animation/TimeAnimator;->setCurrentPlayTime(J)V

    :cond_0
    return-void
.end method
