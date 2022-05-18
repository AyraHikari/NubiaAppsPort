.class Lcom/android/calculator2/CalculatorFormula$1;
.super Landroid/view/ActionMode$Callback2;
.source "CalculatorFormula.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calculator2/CalculatorFormula;->setupActionMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/CalculatorFormula;


# direct methods
.method constructor <init>(Lcom/android/calculator2/CalculatorFormula;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/android/calculator2/CalculatorFormula$1;->this$0:Lcom/android/calculator2/CalculatorFormula;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/android/calculator2/CalculatorFormula$1;->this$0:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p0, p2}, Lcom/android/calculator2/CalculatorFormula;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 291
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    const-string v0, "ACTION_MODE"

    .line 300
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTag(Ljava/lang/Object;)V

    .line 301
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 302
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    .line 303
    iget-object v1, p0, Lcom/android/calculator2/CalculatorFormula$1;->this$0:Lcom/android/calculator2/CalculatorFormula;

    invoke-static {v1, p1}, Lcom/android/calculator2/CalculatorFormula;->access$002(Lcom/android/calculator2/CalculatorFormula;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 304
    iget-object p0, p0, Lcom/android/calculator2/CalculatorFormula$1;->this$0:Lcom/android/calculator2/CalculatorFormula;

    invoke-static {p0, v0, p2}, Lcom/android/calculator2/CalculatorFormula;->access$100(Lcom/android/calculator2/CalculatorFormula;Landroid/view/MenuInflater;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .line 320
    iget-object p1, p0, Lcom/android/calculator2/CalculatorFormula$1;->this$0:Lcom/android/calculator2/CalculatorFormula;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/calculator2/CalculatorFormula;->access$002(Lcom/android/calculator2/CalculatorFormula;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    const-string p1, "CalculatorFormula"

    const-string v0, "Aaron: onDestroyActionMode."

    .line 321
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    sget-boolean p1, Lcom/android/calculator2/SystemUtil;->isCalculatorSupportCursor:Z

    if-nez p1, :cond_0

    .line 323
    iget-object p1, p0, Lcom/android/calculator2/CalculatorFormula$1;->this$0:Lcom/android/calculator2/CalculatorFormula;

    iget-object p0, p0, Lcom/android/calculator2/CalculatorFormula$1;->this$0:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/calculator2/CalculatorFormula;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 328
    invoke-super {p0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 329
    iget p1, p3, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Lcom/android/calculator2/CalculatorFormula$1;->this$0:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p2}, Lcom/android/calculator2/CalculatorFormula;->getTotalPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p3, Landroid/graphics/Rect;->top:I

    .line 330
    iget p1, p3, Landroid/graphics/Rect;->right:I

    iget-object p2, p0, Lcom/android/calculator2/CalculatorFormula$1;->this$0:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p2}, Lcom/android/calculator2/CalculatorFormula;->getTotalPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p3, Landroid/graphics/Rect;->right:I

    .line 331
    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/android/calculator2/CalculatorFormula$1;->this$0:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getTotalPaddingBottom()I

    move-result p0

    sub-int/2addr p1, p0

    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    .line 333
    iget p0, p3, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    const p1, 0x3f666666    # 0.9f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    iput p0, p3, Landroid/graphics/Rect;->left:I

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    const v0, 0x7f0a0126

    .line 309
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0a0123

    .line 310
    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    const/4 v1, 0x0

    .line 312
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 313
    iget-object v0, p0, Lcom/android/calculator2/CalculatorFormula$1;->this$0:Lcom/android/calculator2/CalculatorFormula;

    invoke-static {v0}, Lcom/android/calculator2/CalculatorFormula;->access$200(Lcom/android/calculator2/CalculatorFormula;)Z

    move-result v0

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 314
    iget-object p0, p0, Lcom/android/calculator2/CalculatorFormula$1;->this$0:Lcom/android/calculator2/CalculatorFormula;

    invoke-static {p0, p1}, Lcom/android/calculator2/CalculatorFormula;->access$002(Lcom/android/calculator2/CalculatorFormula;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    return v1
.end method
