.class Lcn/nubia/notepad/NotePadEditorActivity$20;
.super Ljava/lang/Object;
.source "NotePadEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadEditorActivity;->removeChildViewDialogRemind(ILjava/util/HashMap;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadEditorActivity;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadEditorActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 2831
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity$20;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iput-object p2, p0, Lcn/nubia/notepad/NotePadEditorActivity$20;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x0

    .line 2835
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity$20;->val$view:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2836
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity$20;->val$view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 2837
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity$20;->val$view:Landroid/view/View;

    const v2, -0x333334

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2838
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity$20;->val$view:Landroid/view/View;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 2844
    :goto_0
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity$20;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$5102(Lcn/nubia/notepad/NotePadEditorActivity;Lcn/nubia/commonui/app/AlertDialog;)Lcn/nubia/commonui/app/AlertDialog;

    .line 2845
    return-void

    .line 2840
    :cond_0
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity$20;->val$view:Landroid/view/View;

    const v2, 0x7f0f0089

    .line 2841
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2842
    .local v0, "revcordFileViewLayout":Landroid/widget/LinearLayout;
    const v1, 0x7f0201f0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method
