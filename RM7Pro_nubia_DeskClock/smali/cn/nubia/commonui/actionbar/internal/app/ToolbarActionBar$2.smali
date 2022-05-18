.class Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$2;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;

    .prologue
    .line 71
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$2;->this$0:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 74
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$2;->this$0:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->access$000(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
