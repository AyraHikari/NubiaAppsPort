.class Lcn/nubia/notepad/NotePadEditorActivity$28;
.super Ljava/lang/Object;
.source "NotePadEditorActivity.java"

# interfaces
.implements Lcn/nubia/notepad/view/NubiaMorePopupMenu$onPopupWindowDismissedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadEditorActivity;->showLabelList()V
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
    .line 3656
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity$28;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 1

    .prologue
    .line 3660
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$28;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$4700(Lcn/nubia/notepad/NotePadEditorActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3661
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$28;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$6100(Lcn/nubia/notepad/NotePadEditorActivity;)V

    .line 3664
    :cond_0
    return-void
.end method
