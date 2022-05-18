.class Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$1;
.super Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1033
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$1;->a:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-direct {p0, p2}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$1;->a:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    return-object v0
.end method
