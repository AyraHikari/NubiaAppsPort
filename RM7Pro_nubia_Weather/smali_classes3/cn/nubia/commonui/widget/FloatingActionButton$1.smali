.class Lcn/nubia/commonui/widget/FloatingActionButton$1;
.super Ljava/lang/Object;
.source "FloatingActionButton.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/widget/FloatingActionButton;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/FloatingActionButton;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/widget/FloatingActionButton;

    .prologue
    .line 24
    iput-object p1, p0, Lcn/nubia/commonui/widget/FloatingActionButton$1;->this$0:Lcn/nubia/commonui/widget/FloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/commonui/widget/FloatingActionButton$1;->this$0:Lcn/nubia/commonui/widget/FloatingActionButton;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/FloatingActionButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 28
    iget-object v0, p0, Lcn/nubia/commonui/widget/FloatingActionButton$1;->this$0:Lcn/nubia/commonui/widget/FloatingActionButton;

    invoke-static {v0}, Lcn/nubia/commonui/widget/FloatingActionButton;->access$000(Lcn/nubia/commonui/widget/FloatingActionButton;)V

    .line 29
    const/4 v0, 0x1

    return v0
.end method
