.class Lcn/nubia/cloud/accounts/BaseAccountEntry$1;
.super Ljava/lang/Object;
.source "BaseAccountEntry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/cloud/accounts/BaseAccountEntry;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/cloud/accounts/BaseAccountEntry;


# direct methods
.method constructor <init>(Lcn/nubia/cloud/accounts/BaseAccountEntry;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry$1;->this$0:Lcn/nubia/cloud/accounts/BaseAccountEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 49
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/accounts/BaseAccountEntry$1;->this$0:Lcn/nubia/cloud/accounts/BaseAccountEntry;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/cloud/accounts/BaseAccountEntry;->access$000(Lcn/nubia/cloud/accounts/BaseAccountEntry;Z)V
    :try_end_0
    .catch Lcn/nubia/cloud/accounts/AccountNotFountException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Lcn/nubia/cloud/accounts/AccountNotFountException;->printStackTrace()V

    :goto_0
    return-void
.end method
