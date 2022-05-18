.class Lcom/zte/mifavor/widget/RippleDrawableZTE$1;
.super Ljava/lang/Object;
.source "RippleDrawableZTE.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/RippleDrawableZTE;->createRippleAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/RippleDrawableZTE;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/RippleDrawableZTE;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE$1;->this$0:Lcom/zte/mifavor/widget/RippleDrawableZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE$1;->this$0:Lcom/zte/mifavor/widget/RippleDrawableZTE;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/RippleDrawableZTE;->setRadius(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 101
    iget-object p1, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE$1;->this$0:Lcom/zte/mifavor/widget/RippleDrawableZTE;

    invoke-static {p1}, Lcom/zte/mifavor/widget/RippleDrawableZTE;->access$200(Lcom/zte/mifavor/widget/RippleDrawableZTE;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object p0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE$1;->this$0:Lcom/zte/mifavor/widget/RippleDrawableZTE;

    invoke-static {p0}, Lcom/zte/mifavor/widget/RippleDrawableZTE;->access$100(Lcom/zte/mifavor/widget/RippleDrawableZTE;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
