.class Lcn/nubia/commonui/actionbar/widget/Toolbar$3;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/actionbar/widget/Toolbar;->ensureCollapseButtonView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/widget/Toolbar;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/actionbar/widget/Toolbar;

    .prologue
    .line 1014
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$3;->this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1017
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$3;->this$0:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->collapseActionView()V

    .line 1018
    return-void
.end method
