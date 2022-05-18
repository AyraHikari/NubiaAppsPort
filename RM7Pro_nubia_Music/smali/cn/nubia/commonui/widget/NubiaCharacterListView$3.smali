.class Lcn/nubia/commonui/widget/NubiaCharacterListView$3;
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
    .line 525
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView$3;->a:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 528
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 529
    packed-switch v0, :pswitch_data_0

    .line 538
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 532
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView$3;->a:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->access$400(Lcn/nubia/commonui/widget/NubiaCharacterListView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView$3;->a:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    invoke-static {v1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->access$300(Lcn/nubia/commonui/widget/NubiaCharacterListView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 535
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView$3;->a:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->access$500(Lcn/nubia/commonui/widget/NubiaCharacterListView;)V

    goto :goto_0

    .line 529
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
