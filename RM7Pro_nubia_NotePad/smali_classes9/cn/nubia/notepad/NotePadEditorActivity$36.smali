.class Lcn/nubia/notepad/NotePadEditorActivity$36;
.super Ljava/lang/Object;
.source "NotePadEditorActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadEditorActivity;->resetTextSize(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadEditorActivity;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadEditorActivity;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 4086
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity$36;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iput-object p2, p0, Lcn/nubia/notepad/NotePadEditorActivity$36;->val$view:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 4089
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity$36;->val$view:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 4090
    .local v0, "layout":Landroid/text/Layout;
    if-eqz v0, :cond_0

    .line 4091
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity$36;->val$view:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v1, v3

    .line 4092
    .local v1, "textSize":I
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity$36;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-virtual {v3}, Lcn/nubia/notepad/NotePadEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01ff

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 4093
    .local v2, "textSizeSmall":I
    if-le v1, v2, :cond_0

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v3

    if-lez v3, :cond_0

    .line 4094
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity$36;->val$view:Landroid/widget/TextView;

    int-to-float v4, v2

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4097
    .end local v1    # "textSize":I
    .end local v2    # "textSizeSmall":I
    :cond_0
    return-void
.end method
