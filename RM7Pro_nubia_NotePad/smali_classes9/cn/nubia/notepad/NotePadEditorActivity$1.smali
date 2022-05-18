.class Lcn/nubia/notepad/NotePadEditorActivity$1;
.super Ljava/lang/Object;
.source "NotePadEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadEditorActivity;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadEditorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 310
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity$1;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 314
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity$1;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v3}, Lcn/nubia/notepad/NotePadEditorActivity;->access$000(Lcn/nubia/notepad/NotePadEditorActivity;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 315
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity$1;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v3}, Lcn/nubia/notepad/NotePadEditorActivity;->access$000(Lcn/nubia/notepad/NotePadEditorActivity;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 316
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "editTextView"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 317
    const-string v3, "editTextView"

    .line 318
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 319
    .local v2, "v":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    iget-object v3, v2, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadEditTextView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 320
    iget-object v3, v2, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadEditTextView;->performLongClick()Z

    move-result v3

    .line 324
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "v":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :goto_1
    return v3

    .line 314
    .restart local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
