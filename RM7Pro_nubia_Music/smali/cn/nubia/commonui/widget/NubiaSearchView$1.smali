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
.field final synthetic a:Lcn/nubia/commonui/widget/NubiaSearchView;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/NubiaSearchView;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView$1;->a:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView$1;->a:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->access$000(Lcn/nubia/commonui/widget/NubiaSearchView;)V

    .line 102
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView$1;->a:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 105
    if-eqz v0, :cond_0

    .line 106
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 107
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaSearchView$1;->a:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v3, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 108
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-eq v3, v1, :cond_0

    .line 109
    const-string v1, "showSoftInputUnchecked"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v3, 0x0

    aput-object v3, v4, v6

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v5, v2

    const-class v3, Landroid/os/ResultReceiver;

    aput-object v3, v5, v6

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 112
    :cond_0
    return-void
.end method
