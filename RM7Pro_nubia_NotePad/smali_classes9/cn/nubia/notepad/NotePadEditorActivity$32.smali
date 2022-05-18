.class Lcn/nubia/notepad/NotePadEditorActivity$32;
.super Ljava/lang/Object;
.source "NotePadEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadEditorActivity;->initNotePadEditorLayoutCursor(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadEditorActivity;

.field final synthetic val$isImageViewLayout:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadEditorActivity;Landroid/view/View;Z)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 3795
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity$32;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iput-object p2, p0, Lcn/nubia/notepad/NotePadEditorActivity$32;->val$view:Landroid/view/View;

    iput-boolean p3, p0, Lcn/nubia/notepad/NotePadEditorActivity$32;->val$isImageViewLayout:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 3799
    const/16 v4, 0x43

    if-ne p2, v4, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 3800
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity$32;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v4}, Lcn/nubia/notepad/NotePadEditorActivity;->access$4700(Lcn/nubia/notepad/NotePadEditorActivity;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3801
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity$32;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v4}, Lcn/nubia/notepad/NotePadEditorActivity;->access$4900(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3802
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity$32;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v4}, Lcn/nubia/notepad/NotePadEditorActivity;->access$4900(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->stopPlayinging()V

    .line 3803
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity$32;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v4}, Lcn/nubia/notepad/NotePadEditorActivity;->access$6900(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3805
    :cond_0
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity$32;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v4}, Lcn/nubia/notepad/NotePadEditorActivity;->access$3400(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/notepad/NotePadEditorActivity$32;->val$view:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 3806
    .local v1, "indexAtView":I
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity$32;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v4}, Lcn/nubia/notepad/NotePadEditorActivity;->access$000(Lcn/nubia/notepad/NotePadEditorActivity;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 3807
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-eqz v2, :cond_1

    .line 3808
    iget-boolean v4, p0, Lcn/nubia/notepad/NotePadEditorActivity$32;->val$isImageViewLayout:Z

    if-eqz v4, :cond_2

    .line 3809
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity$32;->val$view:Landroid/view/View;

    const v5, 0x7f0f0081

    .line 3810
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3811
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity$32;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v4, v1, v2, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$4800(Lcn/nubia/notepad/NotePadEditorActivity;ILjava/util/HashMap;Landroid/view/View;)V

    .line 3820
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v1    # "indexAtView":I
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    return v3

    .line 3813
    .restart local v1    # "indexAtView":I
    .restart local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity$32;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iget-object v5, p0, Lcn/nubia/notepad/NotePadEditorActivity$32;->val$view:Landroid/view/View;

    invoke-static {v4, v1, v2, v5}, Lcn/nubia/notepad/NotePadEditorActivity;->access$4800(Lcn/nubia/notepad/NotePadEditorActivity;ILjava/util/HashMap;Landroid/view/View;)V

    goto :goto_0

    .line 3817
    .end local v1    # "indexAtView":I
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method
