.class Lcn/nubia/touping/AbstractActivity$UIHandler$1;
.super Ljava/lang/Object;
.source "AbstractActivity.java"

# interfaces
.implements Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener$MirrorInfoBandWidth;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/AbstractActivity$UIHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/AbstractActivity$UIHandler;


# direct methods
.method constructor <init>(Lcn/nubia/touping/AbstractActivity$UIHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/AbstractActivity$UIHandler;

    .prologue
    .line 725
    iput-object p1, p0, Lcn/nubia/touping/AbstractActivity$UIHandler$1;->this$0:Lcn/nubia/touping/AbstractActivity$UIHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mirrorInfoChanged(I)V
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 728
    invoke-static {}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->getInstance()Lcn/nubia/touping/Utils/FloatingWindowUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->postUpdateStatus(I)V

    .line 729
    return-void
.end method
