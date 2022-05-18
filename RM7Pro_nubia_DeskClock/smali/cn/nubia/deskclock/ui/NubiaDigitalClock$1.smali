.class Lcn/nubia/deskclock/ui/NubiaDigitalClock$1;
.super Landroid/os/Handler;
.source "NubiaDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/NubiaDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/NubiaDigitalClock;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/NubiaDigitalClock;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/NubiaDigitalClock;

    .prologue
    .line 69
    iput-object p1, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock$1;->this$0:Lcn/nubia/deskclock/ui/NubiaDigitalClock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 71
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock$1;->this$0:Lcn/nubia/deskclock/ui/NubiaDigitalClock;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->access$000(Lcn/nubia/deskclock/ui/NubiaDigitalClock;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method
