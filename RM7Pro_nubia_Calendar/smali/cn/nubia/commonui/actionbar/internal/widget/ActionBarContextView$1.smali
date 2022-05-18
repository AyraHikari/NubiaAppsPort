.class Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView$1;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->initForMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

.field final synthetic val$mode:Lcn/nubia/commonui/actionbar/view/ActionMode;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;Lcn/nubia/commonui/actionbar/view/ActionMode;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    .prologue
    .line 288
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView$1;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    iput-object p2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView$1;->val$mode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 290
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView$1;->val$mode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/view/ActionMode;->finish()V

    .line 291
    return-void
.end method
