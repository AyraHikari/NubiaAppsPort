.class Lcn/nubia/notepad/NotePadEditorActivity$9;
.super Ljava/lang/Object;
.source "NotePadEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadEditorActivity;->observeTitleFocusChange()V
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
    .line 1299
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity$9;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 1302
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$9;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1000(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1303
    if-eqz p2, :cond_1

    .line 1304
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$9;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1000(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1305
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$9;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity$9;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1000(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1100(Lcn/nubia/notepad/NotePadEditorActivity;Landroid/widget/LinearLayout;Z)V

    .line 1311
    :cond_0
    :goto_0
    return-void

    .line 1307
    :cond_1
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$9;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity$9;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1000(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1100(Lcn/nubia/notepad/NotePadEditorActivity;Landroid/widget/LinearLayout;Z)V

    .line 1308
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$9;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1000(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0
.end method
