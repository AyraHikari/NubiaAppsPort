.class Lcn/nubia/notepad/NotePadEditorActivity$35;
.super Ljava/lang/Object;
.source "NotePadEditorActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadEditorActivity;->moveToQueryTextLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadEditorActivity;

.field final synthetic val$view:Lcn/nubia/notepad/view/NotePadEditTextLayout;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadEditorActivity;Lcn/nubia/notepad/view/NotePadEditTextLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 4029
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity$35;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iput-object p2, p0, Lcn/nubia/notepad/NotePadEditorActivity$35;->val$view:Lcn/nubia/notepad/view/NotePadEditTextLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 4032
    iget-object v8, p0, Lcn/nubia/notepad/NotePadEditorActivity$35;->val$view:Lcn/nubia/notepad/view/NotePadEditTextLayout;

    iget-object v8, v8, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v8}, Lcn/nubia/notepad/view/NotePadEditTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4035
    iget-object v8, p0, Lcn/nubia/notepad/NotePadEditorActivity$35;->val$view:Lcn/nubia/notepad/view/NotePadEditTextLayout;

    iget-object v8, v8, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v8}, Lcn/nubia/notepad/view/NotePadEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 4036
    .local v4, "layout":Landroid/text/Layout;
    const/4 v6, 0x0

    .line 4037
    .local v6, "lineToScrollHeight":I
    iget-object v8, p0, Lcn/nubia/notepad/NotePadEditorActivity$35;->val$view:Lcn/nubia/notepad/view/NotePadEditTextLayout;

    iget-object v8, v8, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v8}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4038
    .local v0, "content":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "line":I
    :goto_0
    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v8

    if-ge v5, v8, :cond_0

    .line 4040
    :try_start_0
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    .line 4041
    .local v7, "start":I
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 4042
    .local v3, "end":I
    iget-object v8, p0, Lcn/nubia/notepad/NotePadEditorActivity$35;->val$view:Lcn/nubia/notepad/view/NotePadEditTextLayout;

    iget-object v8, v8, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    .line 4046
    invoke-virtual {v8}, Lcn/nubia/notepad/view/NotePadEditTextView;->length()I

    move-result v8

    .line 4045
    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 4043
    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcn/nubia/notepad/NotePadEditorActivity$35;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    .line 4047
    invoke-static {v9}, Lcn/nubia/notepad/NotePadEditorActivity;->access$7000(Lcn/nubia/notepad/NotePadEditorActivity;)Ljava/lang/String;

    move-result-object v9

    .line 4046
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4048
    iget-object v8, p0, Lcn/nubia/notepad/NotePadEditorActivity$35;->val$view:Lcn/nubia/notepad/view/NotePadEditTextLayout;

    iget-object v8, v8, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v8}, Lcn/nubia/notepad/view/NotePadEditTextView;->getHeight()I

    move-result v8

    add-int/lit8 v9, v5, 0x1

    mul-int/2addr v8, v9

    .line 4049
    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v9

    div-int v6, v8, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4057
    .end local v3    # "end":I
    .end local v7    # "start":I
    :cond_0
    const/4 v8, 0x2

    new-array v2, v8, [I

    .line 4058
    .local v2, "editLoc":[I
    iget-object v8, p0, Lcn/nubia/notepad/NotePadEditorActivity$35;->val$view:Lcn/nubia/notepad/view/NotePadEditTextLayout;

    iget-object v8, v8, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v8, v2}, Lcn/nubia/notepad/view/NotePadEditTextView;->getLocationOnScreen([I)V

    .line 4059
    iget-object v8, p0, Lcn/nubia/notepad/NotePadEditorActivity$35;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v8}, Lcn/nubia/notepad/NotePadEditorActivity;->access$4600(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/ScrollView;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    add-int/2addr v9, v6

    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity$35;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    .line 4063
    invoke-static {v10}, Lcn/nubia/notepad/NotePadEditorActivity;->access$100(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0060

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    sub-int/2addr v9, v10

    .line 4059
    invoke-virtual {v8, v12, v9}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 4065
    return v12

    .line 4052
    .end local v2    # "editLoc":[I
    :catch_0
    move-exception v1

    .line 4053
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4038
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method
