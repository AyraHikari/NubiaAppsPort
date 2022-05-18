.class Lcom/android/calculator2/CalculatorResult$3;
.super Landroid/view/ActionMode$Callback2;
.source "CalculatorResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calculator2/CalculatorResult;->setupActionMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/CalculatorResult;


# direct methods
.method constructor <init>(Lcom/android/calculator2/CalculatorResult;)V
    .locals 0

    .line 1057
    iput-object p1, p0, Lcom/android/calculator2/CalculatorResult$3;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1072
    iget-object p0, p0, Lcom/android/calculator2/CalculatorResult$3;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p0, p2}, Lcom/android/calculator2/CalculatorResult;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1073
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    .line 1060
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    .line 1061
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    .line 1062
    iget-object p0, p0, Lcom/android/calculator2/CalculatorResult$3;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-static {p0, p1, p2}, Lcom/android/calculator2/CalculatorResult;->access$500(Lcom/android/calculator2/CalculatorResult;Landroid/view/MenuInflater;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    .line 1082
    iget-object p1, p0, Lcom/android/calculator2/CalculatorResult$3;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-static {p1}, Lcom/android/calculator2/CalculatorResult;->access$600(Lcom/android/calculator2/CalculatorResult;)V

    .line 1083
    iget-object p0, p0, Lcom/android/calculator2/CalculatorResult$3;->this$0:Lcom/android/calculator2/CalculatorResult;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/calculator2/CalculatorResult;->access$702(Lcom/android/calculator2/CalculatorResult;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    .line 1088
    invoke-super {p0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1090
    iget p1, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p3, Landroid/graphics/Rect;->left:I

    .line 1091
    iget p1, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p3, Landroid/graphics/Rect;->top:I

    .line 1092
    iget p1, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p3, Landroid/graphics/Rect;->right:I

    .line 1093
    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    .line 1094
    iget-object p1, p0, Lcom/android/calculator2/CalculatorResult$3;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p1}, Lcom/android/calculator2/CalculatorResult;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p0, p0, Lcom/android/calculator2/CalculatorResult$3;->this$0:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result p0

    float-to-int p0, p0

    .line 1095
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-ge p0, p1, :cond_0

    .line 1096
    iget p1, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p0

    iput p1, p3, Landroid/graphics/Rect;->left:I

    .line 1099
    :cond_0
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastN()Z

    move-result p0

    if-nez p0, :cond_1

    .line 1105
    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result p0

    .line 1106
    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result p1

    .line 1107
    iget p2, p3, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    mul-float/2addr p2, p0

    float-to-int p2, p2

    iput p2, p3, Landroid/graphics/Rect;->left:I

    .line 1108
    iget p2, p3, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    mul-float/2addr p2, p0

    float-to-int p0, p2

    iput p0, p3, Landroid/graphics/Rect;->right:I

    .line 1109
    iget p0, p3, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    iput p0, p3, Landroid/graphics/Rect;->top:I

    .line 1110
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
