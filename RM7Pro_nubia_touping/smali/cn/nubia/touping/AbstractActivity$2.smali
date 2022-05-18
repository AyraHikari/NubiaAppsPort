.class Lcn/nubia/touping/AbstractActivity$2;
.super Ljava/lang/Object;
.source "AbstractActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/AbstractActivity;->doSomethingWhenAgreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/AbstractActivity;


# direct methods
.method constructor <init>(Lcn/nubia/touping/AbstractActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/AbstractActivity;

    .prologue
    .line 244
    iput-object p1, p0, Lcn/nubia/touping/AbstractActivity$2;->this$0:Lcn/nubia/touping/AbstractActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcn/nubia/touping/AbstractActivity$2;->this$0:Lcn/nubia/touping/AbstractActivity;

    invoke-virtual {v0}, Lcn/nubia/touping/AbstractActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/touping/Utils/CTAAgreementUtils;->setHASAGREECTAAGREEMENT(Landroid/content/Context;)V

    .line 250
    iget-object v0, p0, Lcn/nubia/touping/AbstractActivity$2;->this$0:Lcn/nubia/touping/AbstractActivity;

    invoke-static {v0}, Lcn/nubia/touping/Utils/LeBoOprate;->initLeBoSDK(Landroid/content/Context;)V

    .line 251
    iget-object v0, p0, Lcn/nubia/touping/AbstractActivity$2;->this$0:Lcn/nubia/touping/AbstractActivity;

    invoke-virtual {v0}, Lcn/nubia/touping/AbstractActivity;->init()V

    .line 252
    return-void
.end method
