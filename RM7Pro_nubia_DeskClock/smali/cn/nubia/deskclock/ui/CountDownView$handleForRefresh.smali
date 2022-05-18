.class Lcn/nubia/deskclock/ui/CountDownView$handleForRefresh;
.super Landroid/os/Handler;
.source "CountDownView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/CountDownView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "handleForRefresh"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/CountDownView;


# direct methods
.method public constructor <init>(Lcn/nubia/deskclock/ui/CountDownView;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1082
    iput-object p1, p0, Lcn/nubia/deskclock/ui/CountDownView$handleForRefresh;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    .line 1083
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1084
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1086
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$handleForRefresh;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/CountDownView;->invalidate()V

    .line 1087
    return-void
.end method
