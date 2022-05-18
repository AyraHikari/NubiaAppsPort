.class Lcn/nubia/notepad/NotePadEditorActivity$33;
.super Ljava/lang/Object;
.source "NotePadEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadEditorActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 3824
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity$33;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iput-object p2, p0, Lcn/nubia/notepad/NotePadEditorActivity$33;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3828
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity$33;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NotePadEditorActivity;->access$3400(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity$33;->val$view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3829
    .local v0, "indexAtView":I
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity$33;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->setPreviewMode(ZI)V

    .line 3830
    return-void
.end method
