.class Lcom/GifEncoder/GifMakeActivity$u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/GifEncoder/GifMakeActivity;->Z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/GifEncoder/GifMakeActivity;


# direct methods
.method constructor <init>(Lcom/GifEncoder/GifMakeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/GifEncoder/GifMakeActivity$u;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$u;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p1}, Lcom/GifEncoder/GifMakeActivity;->k(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/GifEncoder/GifMakeActivity$u;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0500a1

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$u;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p1}, Lcom/GifEncoder/GifMakeActivity;->l(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$u;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p1}, Lcom/GifEncoder/GifMakeActivity;->k(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/GifEncoder/GifMakeActivity$u;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0500a2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$u;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p1}, Lcom/GifEncoder/GifMakeActivity;->l(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    const p2, 0x3e99999a    # 0.3f

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setAlpha(F)V

    :goto_1
    const/4 p1, 0x0

    return p1
.end method
