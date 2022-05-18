.class Lcn/nubia/touping/AbstractActivity$3;
.super Ljava/lang/Object;
.source "AbstractActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/AbstractActivity;->getQRCodeDeviceForNubia(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/AbstractActivity;

.field final synthetic val$qrUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/touping/AbstractActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/AbstractActivity;

    .prologue
    .line 369
    iput-object p1, p0, Lcn/nubia/touping/AbstractActivity$3;->this$0:Lcn/nubia/touping/AbstractActivity;

    iput-object p2, p0, Lcn/nubia/touping/AbstractActivity$3;->val$qrUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcn/nubia/touping/AbstractActivity$3;->this$0:Lcn/nubia/touping/AbstractActivity;

    iget-object v1, p0, Lcn/nubia/touping/AbstractActivity$3;->val$qrUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/touping/AbstractActivity;->access$200(Lcn/nubia/touping/AbstractActivity;Ljava/lang/String;)V

    .line 373
    return-void
.end method
