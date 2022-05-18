.class Lcn/nubia/commonui/widget/NubiaCharacterListView$2;
.super Ljava/lang/Object;
.source "NubiaCharacterListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/widget/NubiaCharacterListView;->initFloatView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/widget/NubiaCharacterListView;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/NubiaCharacterListView;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView$2;->a:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 511
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 512
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView$2;->a:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->access$100(Lcn/nubia/commonui/widget/NubiaCharacterListView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView$2;->a:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->access$200(Lcn/nubia/commonui/widget/NubiaCharacterListView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 515
    :cond_0
    const/4 v0, 0x1

    .line 517
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
