.class Lcn/nubia/notepad/NotePadEditorActivity$13;
.super Ljava/lang/Object;
.source "NotePadEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadEditorActivity;->scrollScreen(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadEditorActivity;

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadEditorActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 1941
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity$13;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iput p2, p0, Lcn/nubia/notepad/NotePadEditorActivity$13;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1944
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity$13;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NotePadEditorActivity;->access$4500(Lcn/nubia/notepad/NotePadEditorActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1945
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity$13;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    .line 1946
    invoke-static {v1}, Lcn/nubia/notepad/NotePadEditorActivity;->access$3400(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity$13;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$4600(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    sub-int v0, v1, v2

    .line 1947
    .local v0, "offset":I
    if-gez v0, :cond_0

    .line 1948
    const/4 v0, 0x0

    .line 1950
    :cond_0
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity$13;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NotePadEditorActivity;->access$4600(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1954
    .end local v0    # "offset":I
    :goto_0
    return-void

    .line 1952
    :cond_1
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity$13;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NotePadEditorActivity;->access$4600(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/ScrollView;

    move-result-object v1

    iget v2, p0, Lcn/nubia/notepad/NotePadEditorActivity$13;->val$y:I

    invoke-virtual {v1, v3, v2}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_0
.end method
