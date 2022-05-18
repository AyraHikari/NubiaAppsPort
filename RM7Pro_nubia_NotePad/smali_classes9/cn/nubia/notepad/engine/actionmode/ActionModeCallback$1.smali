.class Lcn/nubia/notepad/engine/actionmode/ActionModeCallback$1;
.super Ljava/lang/Object;
.source "ActionModeCallback.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->setCustomView(Lcn/nubia/commonui/actionbar/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;

    .prologue
    .line 46
    iput-object p1, p0, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback$1;->this$0:Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback$1;->this$0:Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;

    invoke-static {v0}, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->access$000(Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;)V

    .line 50
    return-void
.end method
