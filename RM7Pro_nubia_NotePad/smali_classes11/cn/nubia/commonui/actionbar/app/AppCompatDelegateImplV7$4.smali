.class Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$4;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->startSupportActionModeFromWindow(Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)Lcn/nubia/commonui/actionbar/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    .prologue
    .line 658
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$4;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 660
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$4;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$4;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-object v1, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mActionModeView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 663
    return-void
.end method
