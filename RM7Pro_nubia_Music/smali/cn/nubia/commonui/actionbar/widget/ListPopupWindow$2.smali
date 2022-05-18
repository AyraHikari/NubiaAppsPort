.class Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$2;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1060
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$2;->a:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$2;->a:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    .line 1064
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$2;->a:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->show()V

    .line 1067
    :cond_0
    return-void
.end method
