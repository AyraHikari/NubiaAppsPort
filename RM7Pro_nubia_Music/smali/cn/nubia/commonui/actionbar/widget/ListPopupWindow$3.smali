.class Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$3;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 1078
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$3;->a:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1082
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$3;->a:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->access$600(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    move-result-object v0

    .line 1085
    if-eqz v0, :cond_0

    .line 1086
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->a(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;Z)Z

    .line 1089
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1092
    return-void
.end method
