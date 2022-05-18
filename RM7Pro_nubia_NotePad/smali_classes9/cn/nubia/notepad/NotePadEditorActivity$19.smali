.class Lcn/nubia/notepad/NotePadEditorActivity$19;
.super Ljava/lang/Object;
.source "NotePadEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$indexAtView:I

.field final synthetic val$map:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadEditorActivity;Ljava/util/HashMap;I)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 2823
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity$19;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iput-object p2, p0, Lcn/nubia/notepad/NotePadEditorActivity$19;->val$map:Ljava/util/HashMap;

    iput p3, p0, Lcn/nubia/notepad/NotePadEditorActivity$19;->val$indexAtView:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2826
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$19;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity$19;->val$map:Ljava/util/HashMap;

    iget v2, p0, Lcn/nubia/notepad/NotePadEditorActivity$19;->val$indexAtView:I

    invoke-static {v0, v1, v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$5000(Lcn/nubia/notepad/NotePadEditorActivity;Ljava/util/HashMap;I)V

    .line 2828
    return-void
.end method
