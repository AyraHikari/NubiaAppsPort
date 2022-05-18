.class Lcn/nubia/notepad/NotePadEditorActivity$15;
.super Ljava/lang/Object;
.source "NotePadEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadEditorActivity;->addImageView(ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadEditorActivity;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$imageViewLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadEditorActivity;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 2194
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity$15;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iput-object p2, p0, Lcn/nubia/notepad/NotePadEditorActivity$15;->val$imageViewLayout:Landroid/view/View;

    iput-object p3, p0, Lcn/nubia/notepad/NotePadEditorActivity$15;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2197
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity$15;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$4700(Lcn/nubia/notepad/NotePadEditorActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2198
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity$15;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$3400(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity$15;->val$imageViewLayout:Landroid/view/View;

    .line 2199
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2200
    .local v0, "indexAtView":I
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity$15;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$000(Lcn/nubia/notepad/NotePadEditorActivity;)Ljava/util/LinkedList;

    move-result-object v2

    .line 2201
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 2202
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eqz v1, :cond_0

    .line 2203
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity$15;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity$15;->val$imageView:Landroid/widget/ImageView;

    invoke-static {v2, v0, v1, v3}, Lcn/nubia/notepad/NotePadEditorActivity;->access$4800(Lcn/nubia/notepad/NotePadEditorActivity;ILjava/util/HashMap;Landroid/view/View;)V

    .line 2208
    :cond_0
    const/4 v2, 0x0

    .end local v0    # "indexAtView":I
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return v2

    .line 2206
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
