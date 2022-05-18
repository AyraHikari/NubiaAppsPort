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
.field final synthetic this$0:Lcn/nubia/commonui/widget/NubiaCharacterListView;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/NubiaCharacterListView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/widget/NubiaCharacterListView;

    .prologue
    .line 503
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView$3;->this$0:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 506
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 507
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 516
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 510
    :pswitch_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView$3;->this$0:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    invoke-static {v1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->access$400(Lcn/nubia/commonui/widget/NubiaCharacterListView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView$3;->this$0:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    invoke-static {v2}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->access$300(Lcn/nubia/commonui/widget/NubiaCharacterListView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 513
    :pswitch_1
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView$3;->this$0:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    invoke-static {v1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->access$500(Lcn/nubia/commonui/widget/NubiaCharacterListView;)V

    goto :goto_0

    .line 507
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
