.class Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$b;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1718
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$b;->a:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$1;)V
    .locals 0

    .prologue
    .line 1718
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$b;-><init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1720
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$b;->a:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->clearListSelection()V

    .line 1721
    return-void
.end method
