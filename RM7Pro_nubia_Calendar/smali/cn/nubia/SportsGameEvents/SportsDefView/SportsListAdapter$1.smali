.class Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$1;
.super Ljava/lang/Object;
.source "SportsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;

.field final synthetic val$mNuCmsSportsItem:Lcom/nubia/nucms/bean/NuCmsSportsItem;


# direct methods
.method constructor <init>(Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;Lcom/nubia/nucms/bean/NuCmsSportsItem;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;

    .prologue
    .line 195
    iput-object p1, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$1;->this$0:Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;

    iput-object p2, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$1;->val$mNuCmsSportsItem:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 198
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 211
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v2, 0x0

    return v2

    .line 203
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 205
    .local v0, "currentSystem":J
    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$1;->this$0:Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;

    invoke-static {v2}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->access$000(Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;)J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x320

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 206
    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$1;->this$0:Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;

    invoke-static {v2, v0, v1}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->access$002(Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;J)J

    .line 207
    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$1;->this$0:Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;

    iget-object v3, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$1;->val$mNuCmsSportsItem:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-static {v2, v3}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->access$100(Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;Lcom/nubia/nucms/bean/NuCmsSportsItem;)V

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
