.class Lcn/nubia/commonui/widget/NubiaSearchView$1;
.super Ljava/lang/Object;
.source "NubiaSearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/NubiaSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/widget/NubiaSearchView;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/NubiaSearchView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/widget/NubiaSearchView;

    .prologue
    .line 102
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView$1;->this$0:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 105
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView$1;->this$0:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-static {v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->access$000(Lcn/nubia/commonui/widget/NubiaSearchView;)V

    .line 106
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView$1;->this$0:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "input_method"

    .line 107
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 109
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 110
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 111
    .local v6, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView$1;->this$0:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v1, v6}, Lcn/nubia/commonui/widget/NubiaSearchView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 112
    iget v1, v6, Landroid/graphics/Rect;->left:I

    iget v3, v6, Landroid/graphics/Rect;->right:I

    if-eq v1, v3, :cond_0

    .line 113
    const-string v1, "showSoftInputUnchecked"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v3, 0x0

    aput-object v3, v4, v7

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v5, v2

    const-class v3, Landroid/os/ResultReceiver;

    aput-object v3, v5, v7

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 116
    .end local v6    # "r":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method
